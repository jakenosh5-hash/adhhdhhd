.class public final Lcom/ram/ledger/deepseek/ram/RamCommandRouter;
.super Ljava/lang/Object;
.source "RamCommandRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ram/ledger/deepseek/ram/RamCommandRouter$NativeFallback;
    }
.end annotation


# instance fields
.field private final db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

.field private final fallback:Lcom/ram/ledger/deepseek/ram/RamCommandRouter$NativeFallback;


# direct methods
.method public constructor <init>(Lcom/ram/ledger/deepseek/ram/RamDatabase;Lcom/ram/ledger/deepseek/ram/RamCommandRouter$NativeFallback;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-eqz p1, :cond_a

    .line 13
    iput-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    .line 14
    iput-object p2, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->fallback:Lcom/ram/ledger/deepseek/ram/RamCommandRouter$NativeFallback;

    .line 15
    return-void

    .line 12
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "db"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private debt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 69
    const-string v0, "debt"

    const-string v1, "\u062f\u064a\u0646"

    invoke-static {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v0, "debts"

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :cond_19
    const-string v0, "add"

    const-string v1, "\u0625\u0636\u0627\u0641\u0629"

    invoke-static {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 73
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_74

    .line 74
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_42
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_56

    if-lez v3, :cond_4e

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4e
    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 76
    :cond_56
    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addDebt(Ljava/lang/String;D)J

    move-result-wide v0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062a\u0645 \u062a\u0633\u062c\u064a\u0644 \u0627\u0644\u062f\u064a\u0646 #"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u0635\u064a\u063a\u0629 \u0627\u0644\u062f\u064a\u0646: debt add <name> <amount>"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private memory(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 81
    const-string v0, "memory"

    const-string v1, "\u0630\u0627\u0643\u0631\u0629"

    invoke-static {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_19

    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v0, "memories"

    invoke-virtual {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_19
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "\u0628\u062d\u062b"

    if-nez v0, :cond_7b

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_7b

    .line 84
    :cond_30
    const-string v0, "add"

    const-string v1, "\u0625\u0636\u0627\u0641\u0629"

    invoke-static {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->splitContent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    :cond_50
    aget-object v2, p1, v1

    :goto_52
    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5e

    aget-object p1, p1, v1

    goto :goto_60

    :cond_5e
    aget-object p1, p1, v3

    :goto_60
    const/4 v1, 0x3

    const-string v3, "user"

    invoke-virtual {v0, v3, v2, p1, v1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u0630\u0627\u0643\u0631\u0629 #"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    invoke-static {p1, v2, v3}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->searchMemory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private note(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 50
    const-string v0, "note"

    const-string v1, "\u0645\u0644\u0627\u062d\u0638\u0629"

    invoke-static {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v0, "notes"

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_19
    const-string v0, "add"

    const-string v1, "\u0625\u0636\u0627\u0641\u0629"

    invoke-static {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->splitContent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "\u0645\u0630\u0643\u0631\u0629"

    goto :goto_35

    :cond_33
    aget-object v2, p1, v1

    :goto_35
    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_41

    aget-object p1, p1, v1

    goto :goto_43

    :cond_41
    aget-object p1, p1, v3

    :goto_43
    invoke-virtual {v0, v2, p1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addNote(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u0645\u0630\u0643\u0631\u0629 #"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static splitContent(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 99
    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static starts(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x1

    :goto_23
    return p0
.end method

.method private static stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const-string v6, ""

    if-eqz p0, :cond_d

    return-object v6

    .line 94
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v7, " "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 v5, p0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_3e
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    return-object v6

    .line 96
    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_6b
    return-object v0
.end method

.method private task(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 42
    const-string v0, "task"

    const-string v1, "\u0645\u0647\u0645\u0629"

    invoke-static {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v0, "tasks"

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 44
    :cond_19
    const-string v0, "add"

    const-string v1, "\u0625\u0636\u0627\u0641\u0629"

    invoke-static {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addTask(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062a\u0645\u062a \u0625\u0636\u0627\u0641\u0629 \u0627\u0644\u0645\u0647\u0645\u0629 #"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private transaction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 59
    const-string v0, "INCOME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "income"

    goto :goto_d

    :cond_b
    const-string v1, "expense"

    :goto_d
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\u062f\u062e\u0644"

    const-string v4, "\u0645\u0635\u0631\u0648\u0641"

    if-eqz v2, :cond_19

    move-object v2, v3

    goto :goto_1a

    :cond_19
    move-object v2, v4

    :goto_1a
    invoke-static {p1, v1, v2}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->stripVerb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 61
    array-length v1, p1

    if-eqz v1, :cond_78

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_78

    .line 62
    :cond_36
    aget-object v1, p1, v1

    const-string v2, ","

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 63
    array-length v5, p1

    const/4 v6, 0x1

    if-le v5, v6, :cond_4b

    aget-object p1, p1, v6

    goto :goto_4c

    :cond_4b
    move-object p1, p2

    .line 64
    :goto_4c
    iget-object v5, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    invoke-virtual {v5, p2, v1, v2, p1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addTransaction(Ljava/lang/String;DLjava/lang/String;)J

    move-result-wide v1

    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_5a

    :cond_59
    move-object v3, v4

    :goto_5a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u062a\u0645 \u062a\u0633\u062c\u064a\u0644 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string p2, "transactions"

    const/16 v0, 0x1e

    invoke-virtual {p1, p2, v0}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 22
    if-eqz p1, :cond_11a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_11a

    .line 23
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 24
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :try_start_18
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    const-string v1, "\u0645\u0633\u0627\u0639\u062f\u0629"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto/16 :goto_ed

    .line 27
    :cond_2a
    const-string v1, "task"

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->starts(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e8

    const-string v1, "\u0645\u0647\u0645\u0629"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    goto/16 :goto_e8

    .line 28
    :cond_3c
    const-string v1, "note"

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->starts(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e3

    const-string v1, "\u0645\u0644\u0627\u062d\u0638\u0629"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto/16 :goto_e3

    .line 29
    :cond_4e
    const-string v1, "income"

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->starts(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_dc

    const-string v1, "\u062f\u062e\u0644"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    goto/16 :goto_dc

    .line 30
    :cond_60
    const-string v1, "expense"

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->starts(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d5

    const-string v1, "\u0645\u0635\u0631\u0648\u0641"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    goto :goto_d5

    .line 31
    :cond_71
    const-string v1, "debt"

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->starts(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d0

    const-string v1, "\u062f\u064a\u0646"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    goto :goto_d0

    .line 32
    :cond_82
    const-string v1, "memory"

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->starts(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_cb

    const-string v1, "\u0630\u0627\u0643\u0631\u0629"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    goto :goto_cb

    .line 33
    :cond_93
    const-string v1, "snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    const-string v0, "\u0641\u0647\u0631\u0633"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    goto :goto_c2

    .line 34
    :cond_a4
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v1, "conversation"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addMemory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    .line 35
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->fallback:Lcom/ram/ledger/deepseek/ram/RamCommandRouter$NativeFallback;

    if-nez v0, :cond_bb

    const-string p1, "\u062d\u064f\u0641\u0638\u062a \u0627\u0644\u0631\u0633\u0627\u0644\u0629 \u0641\u064a \u0627\u0644\u0630\u0627\u0643\u0631\u0629 \u0627\u0644\u0645\u062d\u0644\u064a\u0629."

    goto :goto_c1

    :cond_bb
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->fallback:Lcom/ram/ledger/deepseek/ram/RamCommandRouter$NativeFallback;

    invoke-interface {v0, p1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter$NativeFallback;->send(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_c1
    return-object p1

    .line 33
    :cond_c2
    :goto_c2
    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->db:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->snapshot(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 32
    :cond_cb
    :goto_cb
    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->memory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 31
    :cond_d0
    :goto_d0
    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->debt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 30
    :cond_d5
    :goto_d5
    const-string v0, "EXPENSE"

    invoke-direct {p0, p1, v0}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->transaction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 29
    :cond_dc
    :goto_dc
    const-string v0, "INCOME"

    invoke-direct {p0, p1, v0}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->transaction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 28
    :cond_e3
    :goto_e3
    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->note(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :cond_e8
    :goto_e8
    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->task(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 26
    :cond_ed
    :goto_ed
    invoke-virtual {p0}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->help()Ljava/lang/String;

    move-result-object p1
    :try_end_f1
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_f1} :catch_f2

    return-object p1

    .line 36
    :catch_f2
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_102

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_106

    :cond_102
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062e\u0637\u0623 \u0641\u064a \u0627\u0644\u0623\u0645\u0631: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 22
    :cond_11a
    :goto_11a
    const-string p1, "\u0623\u062f\u062e\u0644 \u0623\u0645\u0631\u064b\u0627 \u0623\u0648 \u0631\u0633\u0627\u0644\u0629."

    return-object p1
.end method

.method public help()Ljava/lang/String;
    .registers 2

    .line 18
    const-string v0, "task add <title> | note add <title> :: <content> | income <amount> <note> | expense <amount> <note> | debt add <name> <amount> | memory add <key> :: <content> | memory search <query> | snapshot"

    return-object v0
.end method
