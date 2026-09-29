.class public final synthetic Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic f$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda18;->f$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    iput-object p2, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda18;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda18;->f$0:Lcom/ram/ledger/deepseek/ram/RamHubActivity;

    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda18;->f$1:Landroid/widget/EditText;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->$r8$lambda$DfE3JW_SJ35EGTHvRDPZjwQTCSQ(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;Landroid/widget/DatePicker;III)V

    return-void
.end method
