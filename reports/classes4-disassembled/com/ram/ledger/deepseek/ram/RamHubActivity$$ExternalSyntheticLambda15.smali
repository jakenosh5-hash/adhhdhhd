.class public final synthetic Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;->f$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    iput-object p2, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;->f$3:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;->f$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;->f$3:Landroid/widget/EditText;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->$r8$lambda$gyifs4UM8__191ujTzxsWUt65Kw(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
