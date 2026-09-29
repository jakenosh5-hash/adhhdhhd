package com.ram.ledger.deepseek.ram;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/** Local-first storage for RAM Life OS. No network side effects occur here. */
public final class RamDatabase extends SQLiteOpenHelper {
    public static final String FILE_NAME = "ram_life.db";
    public static final int VERSION = 2;

    public RamDatabase(Context context) {
        super(context.getApplicationContext(), FILE_NAME, null, VERSION);
    }

    @Override public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE tasks(" +
                "id INTEGER PRIMARY KEY AUTOINCREMENT," +
                "title TEXT NOT NULL," +
                "done INTEGER NOT NULL DEFAULT 0," +
                "due_epoch INTEGER," +
                "created_epoch INTEGER NOT NULL)");
        db.execSQL("CREATE TABLE notes(" +
                "id INTEGER PRIMARY KEY AUTOINCREMENT," +
                "title TEXT NOT NULL," +
                "content TEXT NOT NULL," +
                "created_epoch INTEGER NOT NULL," +
                "updated_epoch INTEGER NOT NULL)");
        db.execSQL("CREATE TABLE transactions(" +
                "id INTEGER PRIMARY KEY AUTOINCREMENT," +
                "kind TEXT NOT NULL CHECK(kind IN ('INCOME','EXPENSE'))," +
                "amount REAL NOT NULL CHECK(amount >= 0)," +
                "note TEXT NOT NULL," +
                "created_epoch INTEGER NOT NULL)");
        db.execSQL("CREATE TABLE debts(" +
                "id INTEGER PRIMARY KEY AUTOINCREMENT," +
                "name TEXT NOT NULL," +
                "principal REAL NOT NULL CHECK(principal >= 0)," +
                "paid REAL NOT NULL DEFAULT 0 CHECK(paid >= 0)," +
                "created_epoch INTEGER NOT NULL)");
        db.execSQL("CREATE TABLE memories(" +
                "id INTEGER PRIMARY KEY AUTOINCREMENT," +
                "category TEXT NOT NULL," +
                "memory_key TEXT NOT NULL," +
                "content TEXT NOT NULL," +
                "importance INTEGER NOT NULL DEFAULT 3," +
                "accessed_epoch INTEGER NOT NULL DEFAULT 0," +
                "created_epoch INTEGER NOT NULL)");
        db.execSQL("CREATE INDEX memories_search ON memories(category, memory_key, content)");
        db.execSQL("CREATE INDEX tasks_due ON tasks(done, due_epoch)");
        db.execSQL("CREATE INDEX transactions_created ON transactions(created_epoch)");
    }

    @Override public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        if (oldVersion < 2) {
            db.execSQL("ALTER TABLE notes ADD COLUMN updated_epoch INTEGER NOT NULL DEFAULT 0");
            db.execSQL("CREATE INDEX IF NOT EXISTS memories_search ON memories(category, memory_key, content)");
        }
    }

    public long addTask(String title, Long dueEpoch) {
        requireText(title, "title");
        ContentValues v = new ContentValues();
        v.put("title", title.trim());
        if (dueEpoch == null) v.putNull("due_epoch"); else v.put("due_epoch", dueEpoch);
        v.put("created_epoch", System.currentTimeMillis());
        return getWritableDatabase().insertOrThrow("tasks", null, v);
    }

    public long addNote(String title, String content) {
        requireText(title, "title");
        requireText(content, "content");
        long now = System.currentTimeMillis();
        ContentValues v = new ContentValues();
        v.put("title", title.trim());
        v.put("content", content);
        v.put("created_epoch", now);
        v.put("updated_epoch", now);
        return getWritableDatabase().insertOrThrow("notes", null, v);
    }

    public long addTransaction(String kind, double amount, String note) {
        if (!"INCOME".equals(kind) && !"EXPENSE".equals(kind)) throw new IllegalArgumentException("kind");
        if (!(amount >= 0) || Double.isInfinite(amount) || Double.isNaN(amount)) throw new IllegalArgumentException("amount");
        requireText(note, "note");
        ContentValues v = new ContentValues();
        v.put("kind", kind); v.put("amount", amount); v.put("note", note.trim());
        v.put("created_epoch", System.currentTimeMillis());
        return getWritableDatabase().insertOrThrow("transactions", null, v);
    }

    public long addDebt(String name, double principal) {
        requireText(name, "name");
        if (!(principal >= 0) || Double.isInfinite(principal) || Double.isNaN(principal)) throw new IllegalArgumentException("principal");
        ContentValues v = new ContentValues();
        v.put("name", name.trim()); v.put("principal", principal); v.put("paid", 0); v.put("created_epoch", System.currentTimeMillis());
        return getWritableDatabase().insertOrThrow("debts", null, v);
    }

    public long addMemory(String category, String key, String content, int importance) {
        requireText(category, "category"); requireText(key, "key"); requireText(content, "content");
        int safeImportance = Math.max(1, Math.min(5, importance));
        ContentValues v = new ContentValues();
        v.put("category", category.trim()); v.put("memory_key", key.trim()); v.put("content", content);
        v.put("importance", safeImportance); v.put("accessed_epoch", 0); v.put("created_epoch", System.currentTimeMillis());
        return getWritableDatabase().insertOrThrow("memories", null, v);
    }

    public int setTaskDone(long id, boolean done) {
        if (id <= 0) throw new IllegalArgumentException("id");
        ContentValues v = new ContentValues(); v.put("done", done ? 1 : 0);
        return getWritableDatabase().update("tasks", v, "id=?", new String[]{String.valueOf(id)});
    }

    public int updateDebtPaid(long id, double paid) {
        if (id <= 0 || Double.isNaN(paid) || Double.isInfinite(paid) || paid < 0) throw new IllegalArgumentException("paid");
        Cursor c = getReadableDatabase().query("debts", new String[]{"principal"}, "id=?", new String[]{String.valueOf(id)}, null, null, null);
        try {
            if (!c.moveToFirst()) return 0;
            double principal = c.getDouble(0);
            if (paid > principal) throw new IllegalArgumentException("paid exceeds principal");
        } finally { c.close(); }
        ContentValues v = new ContentValues(); v.put("paid", paid);
        return getWritableDatabase().update("debts", v, "id=?", new String[]{String.valueOf(id)});
    }

    public int updateNote(long id, String title, String content) {
        if (id <= 0) throw new IllegalArgumentException("id");
        requireText(title, "title"); requireText(content, "content");
        ContentValues v = new ContentValues(); v.put("title", title.trim()); v.put("content", content); v.put("updated_epoch", System.currentTimeMillis());
        return getWritableDatabase().update("notes", v, "id=?", new String[]{String.valueOf(id)});
    }

    public int touchMemory(long id) {
        if (id <= 0) throw new IllegalArgumentException("id");
        ContentValues v = new ContentValues(); v.put("accessed_epoch", System.currentTimeMillis());
        return getWritableDatabase().update("memories", v, "id=?", new String[]{String.valueOf(id)});
    }

    public String snapshot(int limit) {
        int safeLimit = Math.max(1, Math.min(100, limit));
        return "TASKS\n" + list("tasks", safeLimit) +
                "\nNOTES\n" + list("notes", safeLimit) +
                "\nTRANSACTIONS\n" + list("transactions", safeLimit) +
                "\nDEBTS\n" + list("debts", safeLimit) +
                "\nMEMORIES\n" + list("memories", safeLimit);
    }

    public String searchMemory(String query, int limit) {
        requireText(query, "query");
        int safeLimit = Math.max(1, Math.min(100, limit));
        String like = "%" + query.trim() + "%";
        Cursor c = getReadableDatabase().query("memories", new String[]{"id","category","memory_key","content","importance"},
                "category LIKE ? OR memory_key LIKE ? OR content LIKE ?", new String[]{like, like, like},
                null, null, "importance DESC, created_epoch DESC", String.valueOf(safeLimit));
        try { StringBuilder out = new StringBuilder(); while (c.moveToNext()) out.append('#').append(c.getLong(0)).append(' ').append(c.getString(1)).append('/').append(c.getString(2)).append(':').append(c.getString(3)).append('\n'); return empty(out); }
        finally { c.close(); }
    }

    public String list(String table, int limit) {
        if (!"tasks".equals(table) && !"notes".equals(table) && !"transactions".equals(table) && !"debts".equals(table) && !"memories".equals(table)) throw new IllegalArgumentException("table");
        int safeLimit = Math.max(1, Math.min(100, limit));
        Cursor c = getReadableDatabase().rawQuery("SELECT * FROM " + table + " ORDER BY id DESC LIMIT " + safeLimit, null);
        try {
            StringBuilder out = new StringBuilder();
            while (c.moveToNext()) {
                out.append('#').append(c.getLong(0)).append(' ');
                if ("tasks".equals(table)) out.append(c.getString(1)).append(" done=").append(c.getInt(2));
                else if ("notes".equals(table)) out.append(c.getString(1)).append(": ").append(c.getString(2));
                else if ("transactions".equals(table)) out.append(c.getString(1)).append(' ').append(c.getDouble(2)).append(" ").append(c.getString(3));
                else if ("debts".equals(table)) out.append(c.getString(1)).append(" principal=").append(c.getDouble(2)).append(" paid=").append(c.getDouble(3));
                else out.append(c.getString(1)).append('/').append(c.getString(2)).append(": ").append(c.getString(3));
                out.append('\n');
            }
            return empty(out);
        } finally { c.close(); }
    }

    private static String empty(StringBuilder value) { return value.length() == 0 ? "لا توجد بيانات" : value.toString(); }
    private static void requireText(String value, String name) { if (value == null || value.trim().isEmpty()) throw new IllegalArgumentException(name); }
}
