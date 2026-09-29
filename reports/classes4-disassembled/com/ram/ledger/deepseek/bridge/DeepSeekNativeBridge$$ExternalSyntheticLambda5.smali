.class public final synthetic Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda5;->f$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

    iput-object p2, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda5;->f$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

    iget-object v1, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->lambda$postChunk$3(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/String;)V

    return-void
.end method
