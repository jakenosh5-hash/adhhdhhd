.class public final synthetic Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda1;->f$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$$ExternalSyntheticLambda1;->f$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

    invoke-interface {v0}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;->onCompleted()V

    return-void
.end method
