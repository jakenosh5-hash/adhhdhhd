.class public final Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;
.super Ljava/lang/Object;
.source "DeepSeekNativeBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;
    }
.end annotation


# instance fields
.field private final main:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$wZW5HNPFtFZ9Mu-Hr-PWSuAxtAQ(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->lambda$send$0(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpostError(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->postError(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msend(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Ljava/lang/String;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->send(Ljava/lang/String;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smunwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 1

    invoke-static {p0}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->main:Landroid/os/Handler;

    return-void
.end method

.method private static createUserMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 110
    array-length v0, p0

    const/4 v1, 0x0

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 110
    move v4, v1

    :goto_f
    if-ge v4, v0, :cond_97

    aget-object v5, p0, v4

    .line 111
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 112
    array-length v7, v6

    const/16 v8, 0x14

    if-ne v7, v8, :cond_93

    aget-object v7, v6, v1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v9, :cond_93

    const/4 v7, 0x1

    aget-object v9, v6, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_93

    const/4 v9, 0x3

    aget-object v6, v6, v9

    const-class v10, Ljava/lang/String;

    if-ne v6, v10, :cond_93

    .line 113
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    const v0, 0x2f7fb0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 115
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v1

    aput-object v2, v6, v7

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-object v1, v6, v0

    const-string v0, "USER"

    aput-object v0, v6, v9

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v3, v6, v0

    const/4 v0, 0x6

    aput-object v3, v6, v0

    const-string v0, "WIP"

    const/4 v4, 0x7

    aput-object v0, v6, v4

    const/16 v0, 0x8

    aput-object p1, v6, v0

    const/16 p1, 0x9

    aput-object v3, v6, p1

    const/16 p1, 0xa

    aput-object v3, v6, p1

    const/16 p1, 0xb

    aput-object v3, v6, p1

    const/16 p1, 0xc

    aput-object v2, v6, p1

    const/16 p1, 0xd

    aput-object p0, v6, p1

    const/16 p1, 0xe

    aput-object v1, v6, p1

    const/16 p1, 0xf

    aput-object v1, v6, p1

    const/16 p1, 0x10

    aput-object p0, v6, p1

    const/16 p0, 0x11

    aput-object v1, v6, p0

    const/16 p0, 0x12

    aput-object v1, v6, p0

    const/16 p0, 0x13

    aput-object v1, v6, p0

    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 110
    :cond_93
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 118
    :cond_97
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "fy user-message constructor"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static currentKoin()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    const-string v0, "p000.nd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "m12351X"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    const-string v1, "f16011b"

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    const-string v1, "f17192e"

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private currentSessionId()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->currentKoin()Ljava/lang/Object;

    move-result-object v0

    .line 78
    const-string v1, "p000.au8"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 79
    const-string v2, "f2061a"

    invoke-static {v1, v2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mo1728b"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "p000.ib2"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "m10573c"

    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    const/4 v1, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "m9044r"

    invoke-static {v1, v2, v6}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_78

    .line 84
    const-string v1, "f26927a"

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_70

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    .line 86
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u0645\u0639\u0631\u0641 \u0627\u0644\u062c\u0644\u0633\u0629 \u0641\u0627\u0631\u063a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u0644\u0627 \u062a\u0648\u062c\u062f \u062c\u0644\u0633\u0629 DeepSeek \u0646\u0634\u0637\u0629"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-ne v4, p2, :cond_1c

    return-object v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 125
    :cond_1f
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$postChunk$3(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V
    .registers 2

    .line 128
    invoke-interface {p0, p1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;->onChunk(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$postError$4(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Throwable;)V
    .registers 2

    .line 130
    invoke-interface {p0, p1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$postStarted$2(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V
    .registers 2

    .line 127
    invoke-interface {p0, p1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;->onStarted(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$send$0(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    if-eqz p4, :cond_1b

    array-length p2, p4

    if-lez p2, :cond_1b

    const/4 p2, 0x0

    aget-object p3, p4, p2

    if-eqz p3, :cond_1b

    .line 62
    aget-object p2, p4, p2

    invoke-static {p2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->sseText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 63
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1b

    invoke-direct {p0, p1, p2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->postChunk(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V

    .line 65
    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$send$1(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    const-string p0, "mo6168r"

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "p000.v54"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "f39231a"

    invoke-static {p0, p1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 69
    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private postChunk(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->main:Landroid/os/Handler;

    new-instance v1, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda5;-><init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postCompleted(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->main:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda1;-><init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postError(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Throwable;)V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->main:Landroid/os/Handler;

    new-instance v1, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda2;-><init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postStarted(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->main:Landroid/os/Handler;

    new-instance v1, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda0;-><init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private send(Ljava/lang/String;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->currentKoin()Ljava/lang/Object;

    move-result-object v2

    .line 40
    const-string v3, "p000.au8"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 41
    const-string v4, "f2061a"

    invoke-static {v3, v4}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mo1728b"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "p000.yk3"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 55
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 42
    aput-object v5, v7, v8

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "m10573c"

    const/4 v7, 0x3

    invoke-static {v4, v5, v7}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    const/4 v3, 0x0

    aput-object v3, v5, v6

    const/4 v10, 0x2

    aput-object v3, v5, v10

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_11f

    .line 46
    invoke-direct {v0}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->currentSessionId()Ljava/lang/String;

    move-result-object v4

    .line 47
    const-string v5, "p000.fy"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 48
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 49
    move-object/from16 v12, p1

    invoke-static {v5, v12}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->createUserMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 50
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v5, "p000.qv1"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 53
    const/16 v12, 0xb

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v13, v8

    const-class v15, Ljava/lang/Integer;

    aput-object v15, v13, v6

    aput-object v14, v13, v10

    const-class v15, Ljava/util/ArrayList;

    aput-object v15, v13, v7

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x4

    aput-object v15, v13, v16

    const/16 v17, 0x5

    aput-object v15, v13, v17

    const/16 v18, 0x6

    aput-object v14, v13, v18

    const/16 v19, 0x7

    aput-object v15, v13, v19

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const/16 v20, 0x9

    aput-object v14, v13, v20

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0xa

    aput-object v14, v13, v21

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 55
    const/16 v13, 0x240

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v8

    aput-object v3, v12, v6

    aput-object v3, v12, v10

    aput-object v11, v12, v7

    aput-object v9, v12, v16

    aput-object v9, v12, v17

    aput-object v3, v12, v18

    aput-object v9, v12, v19

    aput-object v3, v12, v15

    aput-object v3, v12, v20

    aput-object v13, v12, v21

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "m17997o"

    invoke-static {v7, v9, v10}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v8

    aput-object v3, v9, v6

    invoke-virtual {v7, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    const-string v3, "p000.eh4"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 59
    const-string v5, "p000.e93"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 60
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v3, v9, v8

    new-instance v3, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda3;-><init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V

    invoke-static {v7, v9, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 67
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v5, v9, v8

    new-instance v5, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v7, v9, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    .line 71
    invoke-direct {v0, v1, v4}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->postStarted(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v7, "mo457b"

    invoke-static {v4, v7, v10}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->findMethod(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object v5, v7, v6

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-direct {v0, v1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->postCompleted(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V

    .line 74
    return-void

    .line 44
    :cond_11f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\u0639\u0645\u064a\u0644 DeepSeek \u063a\u064a\u0631 \u0645\u0647\u064a\u0623\u061b \u064a\u062c\u0628 \u062a\u0633\u062c\u064a\u0644 \u0627\u0644\u062f\u062e\u0648\u0644 \u0623\u0648\u0644\u064b\u0627"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sseText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "gs1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "f14942a"

    invoke-static {p0, v0}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_1b
    const-string v1, "is1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 100
    const-string v0, "f17931a"

    invoke-static {p0, v0}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 101
    const-string v0, "f8792a"

    invoke-static {p0, v0}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v2, "f8793b"

    invoke-static {p0, v2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 103
    const-string v2, "data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_4e
    move-object v1, p0

    :cond_4f
    return-object v1

    .line 105
    :cond_50
    return-object v1
.end method

.method private static unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    .line 131
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    :cond_12
    return-object p0
.end method


# virtual methods
.method public sendAsync(Ljava/lang/String;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V
    .registers 5

    .line 28
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 29
    if-eqz p2, :cond_1e

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;-><init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Ljava/lang/String;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V

    const-string p1, "ram-deepseek-native"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    return-void

    .line 29
    :cond_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "prompt"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
