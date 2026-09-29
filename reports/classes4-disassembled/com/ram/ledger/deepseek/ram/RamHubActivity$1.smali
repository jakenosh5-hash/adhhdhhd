.class Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;
.super Ljava/lang/Object;
.source "RamHubActivity.java"

# interfaces
.implements Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ram/ledger/deepseek/ram/RamHubActivity;->sendNative(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;


# direct methods
.method constructor <init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;->this$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChunk(Ljava/lang/String;)V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;->this$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    invoke-static {v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->-$$Nest$fgetoutput(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;->this$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    invoke-static {v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->-$$Nest$fgetoutput(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;->this$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    const/16 v2, 0xe

    invoke-static {v1, p1, v2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->-$$Nest$mtext(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public onCompleted()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;->this$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    invoke-static {v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->-$$Nest$fgetstatus(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u0627\u0643\u062a\u0645\u0644 \u062a\u062f\u0641\u0642 DeepSeek"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;->this$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    invoke-static {v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->-$$Nest$fgetstatus(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0641\u0634\u0644 DeepSeek Native: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;->this$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    invoke-static {v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->-$$Nest$fgetstatus(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0628\u062f\u0623 SSE \u0644\u0644\u062c\u0644\u0633\u0629 \u0627\u0644\u062d\u0627\u0644\u064a\u0629: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
