package com.ram.ledger.deepseek.ram;

import java.util.Locale;

/** Deterministic local command parser. Unknown text is returned to the native bridge. */
public final class RamCommandRouter {
    public interface NativeFallback { String send(String prompt); }
    private final RamDatabase db;
    private final NativeFallback fallback;

    public RamCommandRouter(RamDatabase db, NativeFallback fallback) {
        if (db == null) throw new NullPointerException("db");
        this.db = db;
        this.fallback = fallback;
    }

    public String help() {
        return "task add <title> | task done <id> | note add <title> :: <content> | income <amount> <note> | expense <amount> <note> | debt add <name> <amount> | debt pay <id> <amount> | memory add <key> :: <content> | memory search <query> | snapshot";
    }

    public String dispatch(String input) {
        if (input == null || input.trim().isEmpty()) return "أدخل أمرًا أو رسالة.";
        String q = input.trim();
        String lower = q.toLowerCase(Locale.ROOT);
        try {
            if (lower.equals("help") || q.equals("مساعدة")) return help();
            if (starts(lower, "task") || q.startsWith("مهمة")) return task(q);
            if (starts(lower, "note") || q.startsWith("ملاحظة")) return note(q);
            if (starts(lower, "income") || q.startsWith("دخل")) return transaction(q, "INCOME");
            if (starts(lower, "expense") || q.startsWith("مصروف")) return transaction(q, "EXPENSE");
            if (starts(lower, "debt") || q.startsWith("دين")) return debt(q);
            if (starts(lower, "memory") || q.startsWith("ذاكرة")) return memory(q);
            if (lower.equals("snapshot") || q.equals("فهرس")) return db.snapshot(30);
            db.addMemory("conversation", String.valueOf(System.currentTimeMillis()), q, 3);
            return fallback == null ? "حُفظت الرسالة في الذاكرة المحلية." : fallback.send(q);
        } catch (RuntimeException e) {
            return "خطأ في الأمر: " + (e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage());
        }
    }

    private String task(String q) {
        String body = stripVerb(q, "task", "مهمة");
        if (body.isEmpty()) return db.list("tasks", 30);
        body = stripVerb(body, "add", "إضافة");
        if (body.toLowerCase(Locale.ROOT).startsWith("done ") || body.startsWith("تم ")) {
            String idText = stripVerb(body, "done", "تم").trim();
            long id = Long.parseLong(idText);
            return db.setTaskDone(id, true) == 0 ? "المهمة غير موجودة" : "تم إنجاز المهمة #" + id;
        }
        long id = db.addTask(body, null);
        return "تمت إضافة المهمة #" + id;
    }

    private String note(String q) {
        String body = stripVerb(q, "note", "ملاحظة");
        if (body.isEmpty()) return db.list("notes", 30);
        body = stripVerb(body, "add", "إضافة");
        String[] pair = splitContent(body);
        long id = db.addNote(pair[0].isEmpty() ? "مذكرة" : pair[0], pair[1].isEmpty() ? pair[0] : pair[1]);
        return "تم حفظ المذكرة #" + id;
    }

    private String transaction(String q, String kind) {
        String body = stripVerb(q, kind.equals("INCOME") ? "income" : "expense", kind.equals("INCOME") ? "دخل" : "مصروف");
        String[] parts = body.trim().split("\\s+", 2);
        if (parts.length == 0 || parts[0].isEmpty()) return db.list("transactions", 30);
        double amount = Double.parseDouble(parts[0].replace(",", ""));
        String note = parts.length > 1 ? parts[1] : kind;
        long id = db.addTransaction(kind, amount, note);
        return "تم تسجيل " + ("INCOME".equals(kind) ? "دخل" : "مصروف") + " #" + id;
    }

    private String debt(String q) {
        String body = stripVerb(q, "debt", "دين");
        if (body.isEmpty()) return db.list("debts", 30);
        if (body.toLowerCase(Locale.ROOT).startsWith("pay ") || body.startsWith("سدد ")) {
            String[] pay = stripVerb(body, "pay", "سدد").split("\\s+");
            if (pay.length != 2) throw new IllegalArgumentException("صيغة السداد: debt pay <id> <amount>");
            long id = Long.parseLong(pay[0]);
            double amount = Double.parseDouble(pay[1].replace(",", ""));
            return db.updateDebtPaid(id, amount) == 0 ? "الدين غير موجود" : "تم تحديث سداد الدين #" + id;
        }
        body = stripVerb(body, "add", "إضافة");
        String[] parts = body.split("\\s+");
        if (parts.length < 2) throw new IllegalArgumentException("صيغة الدين: debt add <name> <amount>");
        double amount = Double.parseDouble(parts[parts.length - 1].replace(",", ""));
        StringBuilder name = new StringBuilder(); for (int i = 0; i < parts.length - 1; i++) { if (i > 0) name.append(' '); name.append(parts[i]); }
        long id = db.addDebt(name.toString(), amount);
        return "تم تسجيل الدين #" + id;
    }

    private String memory(String q) {
        String body = stripVerb(q, "memory", "ذاكرة");
        if (body.isEmpty()) return db.list("memories", 30);
        if (body.toLowerCase(Locale.ROOT).startsWith("search") || body.startsWith("بحث")) return db.searchMemory(stripVerb(body, "search", "بحث"), 30);
        body = stripVerb(body, "add", "إضافة");
        String[] pair = splitContent(body);
        long id = db.addMemory("user", pair[0].isEmpty() ? String.valueOf(System.currentTimeMillis()) : pair[0], pair[1].isEmpty() ? pair[0] : pair[1], 3);
        return "تم حفظ الذاكرة #" + id;
    }

    private static boolean starts(String value, String prefix) { return value.equals(prefix) || value.startsWith(prefix + " "); }
    private static String stripVerb(String value, String english, String arabic) {
        String s = value.trim();
        if (s.equalsIgnoreCase(english)) return "";
        if (s.regionMatches(true, 0, english + " ", 0, english.length() + 1)) return s.substring(english.length() + 1).trim();
        if (s.equals(arabic)) return "";
        if (s.startsWith(arabic + " ")) return s.substring(arabic.length() + 1).trim();
        return s;
    }
    private static String[] splitContent(String value) { int i = value.indexOf("::"); if (i < 0) return new String[]{value.trim(), ""}; return new String[]{value.substring(0, i).trim(), value.substring(i + 2).trim()}; }
}
