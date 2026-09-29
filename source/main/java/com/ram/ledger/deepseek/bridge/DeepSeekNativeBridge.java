package com.ram.ledger.deepseek.bridge;

import android.os.Handler;
import android.os.Looper;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Reflection boundary around the original DeepSeek bytecode.
 *
 * No WebView or second HTTP client is created here. The class names and method
 * names are kept in one file so they can be audited against the original DEX.
 */
public final class DeepSeekNativeBridge {
    public interface Listener {
        void onStarted(String sessionId);
        void onChunk(String text);
        void onCompleted();
        void onError(Throwable error);
    }

    private final Handler main = new Handler(Looper.getMainLooper());

    public void sendAsync(final String prompt, final Listener listener) {
        if (prompt == null || prompt.trim().isEmpty()) throw new IllegalArgumentException("prompt");
        if (listener == null) throw new NullPointerException("listener");
        new Thread(new Runnable() {
            @Override public void run() {
                try { send(prompt, listener); }
                catch (Throwable t) { postError(listener, unwrap(t)); }
            }
        }, "ram-deepseek-native").start();
    }

    private void send(String prompt, final Listener listener) throws Exception {
        Object koin = currentKoin();
        Class<?> au8 = Class.forName("p000.au8");
        Object keyFactory = field(au8, "f2061a");
        Object yk3Key = findMethod(keyFactory.getClass(), "mo1728b", 1).invoke(keyFactory, Class.forName("p000.yk3"));
        Object client = findMethod(koin.getClass(), "m10573c", 3).invoke(koin, yk3Key, null, null);
        if (client == null) throw new IllegalStateException("عميل DeepSeek غير مهيأ؛ يجب تسجيل الدخول أولًا");

        String sessionId = currentSessionId();
        Class<?> messageClass = Class.forName("p000.fy");
        ArrayList<Object> messages = new ArrayList<Object>();
        Object message = createUserMessage(messageClass, prompt);
        messages.add(message);

        Class<?> requestClass = Class.forName("p000.qv1");
        Object request = requestClass.getConstructor(String.class, Integer.class, String.class, ArrayList.class,
                boolean.class, boolean.class, String.class, boolean.class, String.class, String.class, int.class)
                .newInstance(sessionId, null, null, messages, false, false, null, false, null, null, 576);

        Object flow = findMethod(client.getClass(), "m17997o", 2).invoke(client, request, null);
        Class<?> collectorType = Class.forName("p000.eh4");
        Class<?> continuationType = Class.forName("p000.e93");
        Object collector = Proxy.newProxyInstance(collectorType.getClassLoader(), new Class[]{collectorType}, (proxy, method, args) -> {
            if (args != null && args.length > 0 && args[0] != null) {
                String chunk = sseText(args[0]);
                if (chunk != null && !chunk.isEmpty()) postChunk(listener, chunk);
            }
            return null;
        });
        Object continuation = Proxy.newProxyInstance(continuationType.getClassLoader(), new Class[]{continuationType}, (proxy, method, args) -> {
            if ("mo6168r".equals(method.getName())) return field(Class.forName("p000.v54"), "f39231a");
            return null;
        });
        postStarted(listener, sessionId);
        findMethod(flow.getClass(), "mo457b", 2).invoke(flow, collector, continuation);
        postCompleted(listener);
    }

    private String currentSessionId() throws Exception {
        Object koin = currentKoin();
        Class<?> au8 = Class.forName("p000.au8");
        Object keyFactory = field(au8, "f2061a");
        Object ib2Key = findMethod(keyFactory.getClass(), "mo1728b", 1).invoke(keyFactory, Class.forName("p000.ib2"));
        Object ib2 = findMethod(koin.getClass(), "m10573c", 3).invoke(koin, ib2Key, null, null);
        Object session = findMethod(ib2.getClass(), "m9044r", 0).invoke(ib2);
        if (session == null) throw new IllegalStateException("لا توجد جلسة DeepSeek نشطة");
        Object id = field(session, "f26927a");
        if (id == null || String.valueOf(id).trim().isEmpty()) throw new IllegalStateException("معرف الجلسة فارغ");
        return String.valueOf(id);
    }

    private static Object currentKoin() throws Exception {
        Object hh6 = Class.forName("p000.nd").getMethod("m12351X").invoke(null);
        Object i9c = field(hh6, "f16011b");
        return field(i9c, "f17192e");
    }

    /** Original collector receives js1: gs1 is status, is1 wraps d6a(type,payload). */
    private static String sseText(Object event) throws Exception {
        String name = event.getClass().getName();
        if (name.endsWith("gs1")) return null;
        if (name.endsWith("is1")) {
            Object d6a = field(event, "f17931a");
            Object typeObject = field(d6a, "f8792a");
            String type = typeObject == null ? null : String.valueOf(typeObject);
            String json = String.valueOf(field(d6a, "f8793b"));
            if (type != null && !type.isEmpty() && !"data".equals(type)) return null;
            return extractDeltaText(json);
        }
        return null;
    }

    /** Extract only assistant text; never forwards the complete SSE JSON to the UI. */
    public static String extractDeltaText(String payload) {
        if (payload == null) return null;
        String s = payload.trim();
        if (s.isEmpty() || "[DONE]".equals(s)) return null;
        try {
            Object root = s.startsWith("[") ? new JSONArray(s) : new JSONObject(s);
            String value = findText(root, 0);
            return value == null || value.isEmpty() ? null : value;
        } catch (Exception ignored) {
            return null;
        }
    }

    private static String findText(Object node, int depth) throws Exception {
        if (node == null || node == JSONObject.NULL || depth > 12) return null;
        if (node instanceof JSONArray) {
            JSONArray a = (JSONArray) node;
            for (int i = 0; i < a.length(); i++) {
                String value = findText(a.opt(i), depth + 1);
                if (value != null) return value;
            }
            return null;
        }
        if (!(node instanceof JSONObject)) return null;
        JSONObject o = (JSONObject) node;
        String[] preferred = {"content", "text", "delta", "answer"};
        for (String key : preferred) {
            if (!o.has(key) || o.isNull(key)) continue;
            Object value = o.opt(key);
            if ("content".equals(key) || "text".equals(key) || "answer".equals(key)) {
                if (value instanceof String) return (String) value;
            } else {
                String nested = findText(value, depth + 1);
                if (nested != null) return nested;
            }
        }
        String[] containers = {"choices", "message", "data", "output", "result", "response"};
        for (String key : containers) {
            if (!o.has(key) || o.isNull(key)) continue;
            String value = findText(o.opt(key), depth + 1);
            if (value != null) return value;
        }
        return null;
    }

    private static Object createUserMessage(Class<?> type, String prompt) throws Exception {
        Constructor<?>[] constructors = type.getConstructors();
        for (Constructor<?> c : constructors) {
            Class<?>[] p = c.getParameterTypes();
            if (p.length == 20 && p[0] == int.class && p[1] == int.class && p[3] == String.class) {
                ArrayList<Object> empty = new ArrayList<Object>();
                return c.newInstance(3112880, 0, null, "USER", 0.0d, false, false, "WIP", prompt,
                        false, false, false, 0, empty, null, null, empty, null, null, null);
            }
        }
        throw new NoSuchMethodException("fy user-message constructor");
    }

    private static Object field(Object target, String name) throws Exception { return target.getClass().getField(name).get(target); }
    private static Object field(Class<?> type, String name) throws Exception { return type.getField(name).get(null); }
    private static Method findMethod(Class<?> type, String name, int parameterCount) throws NoSuchMethodException {
        for (Method m : type.getMethods()) if (m.getName().equals(name) && m.getParameterTypes().length == parameterCount) return m;
        throw new NoSuchMethodException(type.getName() + '.' + name + '/' + parameterCount);
    }
    private void postStarted(final Listener l, final String id) { main.post(() -> l.onStarted(id)); }
    private void postChunk(final Listener l, final String text) { main.post(() -> l.onChunk(text)); }
    private void postCompleted(final Listener l) { main.post(l::onCompleted); }
    private void postError(final Listener l, final Throwable t) { main.post(() -> l.onError(t)); }
    private static Throwable unwrap(Throwable t) { Throwable x=t; while (x.getCause()!=null && x.getCause()!=x) x=x.getCause(); return x; }
}
