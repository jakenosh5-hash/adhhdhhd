.class Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;
.super Ljava/lang/Object;
.source "DeepSeekNativeBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->sendAsync(Ljava/lang/String;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

.field final synthetic val$listener:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

.field final synthetic val$prompt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Ljava/lang/String;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;->this$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

    iput-object p2, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;->val$prompt:Ljava/lang/String;

    iput-object p3, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;->val$listener:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;->this$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

    iget-object v1, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;->val$prompt:Ljava/lang/String;

    iget-object v2, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;->val$listener:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

    invoke-static {v0, v1, v2}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->-$$Nest$msend(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Ljava/lang/String;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 33
    goto :goto_16

    :catchall_a
    move-exception v0

    iget-object v1, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;->this$0:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

    iget-object v2, p0, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$1;->val$listener:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;

    invoke-static {v0}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->-$$Nest$smunwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->-$$Nest$mpostError(Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;Ljava/lang/Throwable;)V

    .line 34
    :goto_16
    return-void
.end method
