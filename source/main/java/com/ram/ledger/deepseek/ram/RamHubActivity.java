package com.ram.ledger.deepseek.ram;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.ram.ledger.deepseek.bridge.DeepSeekNativeBridge;

import java.util.Locale;
import java.util.Calendar;

/** Native RAM surface. It has no WebView and no direct database SQL in UI code. */
public final class RamHubActivity extends Activity {
    private final int blue = Color.rgb(32, 88, 140);
    private RamDatabase database;
    private RamCommandRouter router;
    private DeepSeekNativeBridge bridge;
    private LinearLayout body;
    private TextView status;
    private EditText input;
    private LinearLayout output;

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        database = new RamDatabase(this);
        bridge = new DeepSeekNativeBridge();
        router = new RamCommandRouter(database, prompt -> "حُفظت الرسالة محليًا؛ استخدم زر DeepSeek لإرسالها.");
        setTitle("RAM • نظام الحياة");
        renderShell();
        showRam();
    }

    private void renderShell() {
        ScrollView scroll = new ScrollView(this);
        body = new LinearLayout(this);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(dp(12), dp(8), dp(12), dp(20));
        LinearLayout tabs = new LinearLayout(this);
        tabs.setOrientation(LinearLayout.HORIZONTAL);
        addTab(tabs, "RAM", this::showRam);
        addTab(tabs, "التقويم", this::showTasks);
        addTab(tabs, "المذكرات", this::showNotes);
        addTab(tabs, "المالية", this::showFinance);
        addTab(tabs, "الذاكرة", this::showMemory);
        body.addView(tabs, new LinearLayout.LayoutParams(-1, -2));
        status = text("محلي أولًا • قاعدة RAM جاهزة", 12);
        status.setTextColor(blue);
        body.addView(status, new LinearLayout.LayoutParams(-1, -2));
        scroll.addView(body);
        setContentView(scroll);
    }

    private void showRam() {
        reset("RAM • المساعد التنفيذي");
        add(text("الأوامر المحلية لا تغادر الجهاز. النص غير المعروف يمكن إرساله عبر العميل الأصلي لـ DeepSeek.", 14));
        input = new EditText(this);
        input.setHint("help أو مهمة إضافة شراء الخبز");
        add(input);
        Button execute = button("تنفيذ الأمر المحلي");
        add(execute);
        output = new LinearLayout(this);
        output.setOrientation(LinearLayout.VERTICAL);
        add(output);
        execute.setOnClickListener(v -> executeInput(false));
        Button send = button("إرسال النص إلى DeepSeek Native");
        add(send);
        send.setOnClickListener(v -> executeInput(true));
    }

    private void executeInput(boolean forceNative) {
        if (input == null) return;
        String q = input.getText().toString().trim();
        if (q.isEmpty()) return;
        String result = router.dispatch(q);
        output.addView(text("RAM: " + result, 14));
        if (forceNative || !isLocalCommand(q)) {
            String prompt = isLocalCommand(q)
                    ? q + "\n\n[RAM_TOOL_RESULT]\n" + result
                    : q;
            sendNative(prompt);
        }
        input.setText("");
    }

    private void sendNative(String prompt) {
        status.setText("جارٍ إنشاء طلب DeepSeek Native…");
        bridge.sendAsync(prompt, new DeepSeekNativeBridge.Listener() {
            @Override public void onStarted(String sessionId) { status.setText("بدأ SSE للجلسة الحالية: " + sessionId); }
            @Override public void onChunk(String text) { if (output != null) output.addView(text(text, 14)); }
            @Override public void onCompleted() { status.setText("اكتمل تدفق DeepSeek"); }
            @Override public void onError(Throwable error) { status.setText("فشل DeepSeek Native: " + error.getMessage()); }
        });
    }

    private void showTasks() {
        reset("التقويم والمهام");
        add(text(database.list("tasks", 50), 14));
        Button create = button("إضافة مهمة مع تاريخ"); add(create); create.setOnClickListener(v -> createTaskDialog());
    }

    private void createTaskDialog() {
        final EditText title = new EditText(this); title.setHint("عنوان المهمة");
        new AlertDialog.Builder(this).setTitle("مهمة جديدة").setView(title)
                .setPositiveButton("اختيار التاريخ", (d, w) -> {
                    Calendar now = Calendar.getInstance();
                    new DatePickerDialog(this, (view, year, month, day) -> {
                        Calendar due = Calendar.getInstance(); due.set(year, month, day, 23, 59, 59);
                        if (!title.getText().toString().trim().isEmpty()) { database.addTask(title.getText().toString(), due.getTimeInMillis()); showTasks(); }
                    }, now.get(Calendar.YEAR), now.get(Calendar.MONTH), now.get(Calendar.DAY_OF_MONTH)).show();
                }).setNegativeButton("إلغاء", null).show();
    }

    private void showNotes() {
        reset("المذكرات"); add(text(database.list("notes", 50), 14));
        Button create = button("إضافة مذكرة"); add(create); create.setOnClickListener(v -> createNoteDialog());
    }

    private void createNoteDialog() {
        LinearLayout form = new LinearLayout(this); form.setOrientation(LinearLayout.VERTICAL);
        EditText title = new EditText(this); title.setHint("العنوان");
        EditText content = new EditText(this); content.setHint("المحتوى"); content.setMinLines(4);
        form.addView(title); form.addView(content);
        new AlertDialog.Builder(this).setTitle("مذكرة جديدة").setView(form)
                .setPositiveButton("حفظ", (d, w) -> { if (!title.getText().toString().trim().isEmpty() && !content.getText().toString().trim().isEmpty()) { database.addNote(title.getText().toString(), content.getText().toString()); showNotes(); } })
                .setNegativeButton("إلغاء", null).show();
    }

    private void showFinance() {
        reset("المالية والديون");
        add(text(database.list("transactions", 50) + "\n" + database.list("debts", 50), 14));
        Button income = button("إضافة دخل"); add(income); income.setOnClickListener(v -> createTransactionDialog("INCOME"));
        Button expense = button("إضافة مصروف"); add(expense); expense.setOnClickListener(v -> createTransactionDialog("EXPENSE"));
        Button debt = button("إضافة دين"); add(debt); debt.setOnClickListener(v -> createDebtDialog());
    }

    private void createTransactionDialog(final String kind) {
        LinearLayout form = new LinearLayout(this); form.setOrientation(LinearLayout.VERTICAL);
        EditText amount = new EditText(this); amount.setHint("المبلغ"); amount.setInputType(2 | 8192);
        EditText note = new EditText(this); note.setHint("الوصف"); form.addView(amount); form.addView(note);
        new AlertDialog.Builder(this).setTitle("INCOME".equals(kind) ? "دخل" : "مصروف").setView(form)
                .setPositiveButton("حفظ", (d, w) -> { try { database.addTransaction(kind, Double.parseDouble(amount.getText().toString().replace(",", "")), note.getText().toString().trim().isEmpty() ? kind : note.getText().toString()); showFinance(); } catch (RuntimeException e) { status.setText("قيمة مالية غير صالحة"); } })
                .setNegativeButton("إلغاء", null).show();
    }

    private void createDebtDialog() {
        LinearLayout form = new LinearLayout(this); form.setOrientation(LinearLayout.VERTICAL);
        EditText name = new EditText(this); name.setHint("اسم الطرف");
        EditText amount = new EditText(this); amount.setHint("المبلغ"); amount.setInputType(2 | 8192); form.addView(name); form.addView(amount);
        new AlertDialog.Builder(this).setTitle("دين جديد").setView(form)
                .setPositiveButton("حفظ", (d, w) -> { try { database.addDebt(name.getText().toString(), Double.parseDouble(amount.getText().toString().replace(",", ""))); showFinance(); } catch (RuntimeException e) { status.setText("بيانات الدين غير صالحة"); } })
                .setNegativeButton("إلغاء", null).show();
    }

    private void showMemory() {
        reset("الذاكرة التراكمية");
        EditText query = new EditText(this); query.setHint("بحث في الذاكرة"); add(query);
        Button search = button("بحث"); add(search);
        TextView results = text(database.list("memories", 50), 14); add(results);
        search.setOnClickListener(v -> results.setText(query.getText().toString().trim().isEmpty() ? database.list("memories", 50) : database.searchMemory(query.getText().toString(), 50)));
    }

    private boolean isLocalCommand(String q) {
        String l = q.toLowerCase(Locale.ROOT);
        return l.equals("help") || l.startsWith("task") || l.startsWith("note") || l.startsWith("income") || l.startsWith("expense") || l.startsWith("debt") || l.startsWith("memory") || l.equals("snapshot") || q.equals("مساعدة") || q.startsWith("مهمة") || q.startsWith("ملاحظة") || q.startsWith("دخل") || q.startsWith("مصروف") || q.startsWith("دين") || q.startsWith("ذاكرة") || q.equals("فهرس");
    }

    private void reset(String title) { while (body.getChildCount() > 2) body.removeViewAt(2); add(text(title, 22)); }
    private void add(View view) { body.addView(view, new LinearLayout.LayoutParams(-1, -2)); }
    private TextView text(String value, int size) { TextView v = new TextView(this); v.setText(value); v.setTextSize(size); v.setTextColor(Color.DKGRAY); v.setPadding(dp(10), dp(8), dp(10), dp(8)); return v; }
    private Button button(String label) { Button b = new Button(this); b.setText(label); b.setAllCaps(false); return b; }
    private void addTab(LinearLayout row, String label, final Runnable action) { Button b = button(label); b.setTextSize(11); b.setOnClickListener(v -> action.run()); row.addView(b, new LinearLayout.LayoutParams(0, -2, 1)); }
    private int dp(int value) { return (int)(value * getResources().getDisplayMetrics().density + 0.5f); }
}
