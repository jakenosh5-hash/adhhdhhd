.class public final synthetic Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

.field public final synthetic f$1:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda3;->f$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

    iput-object p2, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda3;->f$1:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda3;->f$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

    iget-object v1, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda3;->f$1:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->$r8$lambda$wZW5HNPFtFZ9Mu-Hr-PWSuAxtAQ(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
