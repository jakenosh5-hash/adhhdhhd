.class public final Lcom/ram/ledger/deepseek/ram/RamHubActivity;
.super Landroid/app/Activity;
.source "RamHubActivity.java"


# instance fields
.field private final blue:I

.field private body:Landroid/widget/LinearLayout;

.field private bridge:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

.field private database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

.field private input:Landroid/widget/EditText;

.field private output:Landroid/widget/LinearLayout;

.field private router:Lcom/ram/ledger/deepseek/ram/RamCommandRouter;

.field private status:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1pJMijeELoyWaURZvTvn_483iwo(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$createNoteDialog$7(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2J-3Or0Qje4d33gL-XvJuWVNVFM(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$showRam$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2KmWYElXTQFBcAJZq52MEbmkzr8(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$showFinance$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6KGDgVDDaQZbdwajuQPPzE2WBSE(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$showNotes$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DfE3JW_SJ35EGTHvRDPZjwQTCSQ(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;Landroid/widget/DatePicker;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$createTaskDialog$4(Landroid/widget/EditText;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ek9XGFxGGG_GdHro6_owWUPWM3o(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$showRam$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F5FuC0o_YC2koy6qSSCYg13Ezd8(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$showFinance$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GDWVZZdFVev4GP0HbiKByDUapLg(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$createDebtDialog$12(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IAlzmP_VbuzyPzOueajjxzEuqew(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showTasks()V

    return-void
.end method

.method public static synthetic $r8$lambda$OYJW8lDMuTqCozyW1yE614Jr3Hg(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showMemory()V

    return-void
.end method

.method public static synthetic $r8$lambda$UCD-k98Pu_h5__n0N6npBFvoE6k(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$showMemory$13(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UI6OEKrhRyBNM6v-3vSTx0-BnpM(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showNotes()V

    return-void
.end method

.method public static synthetic $r8$lambda$VJcj7ZS3zdeswZMQ3wN1TfMEVc8(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$showTasks$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VyB6Y2JI4E4VtuO8o5yk9AmyRPc(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showFinance()V

    return-void
.end method

.method public static synthetic $r8$lambda$gyifs4UM8__191ujTzxsWUt65Kw(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$createTransactionDialog$11(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nz6OYejfKX5HbgF9A3NMUMxJXa4(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$showFinance$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pW6eMtmy-E9p3Rk3Q5jpcHiMMPM(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showRam()V

    return-void
.end method

.method public static synthetic $r8$lambda$yHSSuQKyLinFE6Ov1UFk5aJHu1k(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->lambda$createTaskDialog$5(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetoutput(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->output:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstatus(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->status:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtext(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/16 v0, 0x58

    const/16 v1, 0x8c

    const/16 v2, 0x20

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->blue:I

    return-void
.end method

.method private add(Landroid/view/View;)V
    .registers 6

    .line 171
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->body:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTab(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 7

    .line 174
    invoke-direct {p0, p2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p2

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextSize(F)V

    new-instance v0, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p3, v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/Button;
    .registers 3

    .line 173
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    return-object v0
.end method

.method private createDebtDialog()V
    .registers 6

    .line 149
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0627\u0633\u0645 \u0627\u0644\u0637\u0631\u0641"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0627\u0644\u0645\u0628\u0644\u063a"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u062f\u064a\u0646 \u062c\u062f\u064a\u062f"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, v1, v2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda19;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 153
    const-string v1, "\u062d\u0641\u0638"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 155
    return-void
.end method

.method private createNoteDialog()V
    .registers 6

    .line 122
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0627\u0644\u0639\u0646\u0648\u0627\u0646"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0627\u0644\u0645\u062d\u062a\u0648\u0649"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinLines(I)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u0645\u0630\u0643\u0631\u0629 \u062c\u062f\u064a\u062f\u0629"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v1, v2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda8;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 127
    const-string v1, "\u062d\u0641\u0638"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    return-void
.end method

.method private createTaskDialog()V
    .registers 4

    .line 105
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0639\u0646\u0648\u0627\u0646 \u0627\u0644\u0645\u0647\u0645\u0629"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0645\u0647\u0645\u0629 \u062c\u062f\u064a\u062f\u0629"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda17;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;)V

    .line 107
    const-string v0, "\u0627\u062e\u062a\u064a\u0627\u0631 \u0627\u0644\u062a\u0627\u0631\u064a\u062e"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    return-void
.end method

.method private createTransactionDialog(Ljava/lang/String;)V
    .registers 7

    .line 140
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0627\u0644\u0645\u0628\u0644\u063a"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v2, 0x2002

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 142
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v3, "\u0627\u0644\u0648\u0635\u0641"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "INCOME"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "\u062f\u062e\u0644"

    goto :goto_3a

    :cond_38
    const-string v4, "\u0645\u0635\u0631\u0648\u0641"

    :goto_3a
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda15;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 144
    const-string p1, "\u062d\u0641\u0638"

    invoke-virtual {v0, p1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 145
    const-string v0, "\u0625\u0644\u063a\u0627\u0621"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 146
    return-void
.end method

.method private dp(I)I
    .registers 3

    .line 175
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private executeInput(Z)V
    .registers 7

    .line 79
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->input:Landroid/widget/EditText;

    if-nez v0, :cond_5

    return-void

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    .line 82
    :cond_1a
    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->router:Lcom/ram/ledger/deepseek/ram/RamCommandRouter;

    invoke-virtual {v1, v0}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;->dispatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->output:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    invoke-direct {p0, v1, v3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    if-nez p1, :cond_46

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->isLocalCommand(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_49

    :cond_46
    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->sendNative(Ljava/lang/String;)V

    .line 85
    :cond_49
    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->input:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method private isLocalCommand(Ljava/lang/String;)Z
    .registers 4

    .line 166
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "income"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "expense"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "debt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "\u0645\u0633\u0627\u0639\u062f\u0629"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "\u0645\u0647\u0645\u0629"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "\u0645\u0644\u0627\u062d\u0638\u0629"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "\u062f\u062e\u0644"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "\u0645\u0635\u0631\u0648\u0641"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "\u062f\u064a\u0646"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "\u0630\u0627\u0643\u0631\u0629"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    const-string v0, "\u0641\u0647\u0631\u0633"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_87

    goto :goto_89

    :cond_87
    const/4 p1, 0x0

    goto :goto_8a

    :cond_89
    :goto_89
    const/4 p1, 0x1

    :goto_8a
    return p1
.end method

.method static synthetic lambda$addTab$14(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 174
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createDebtDialog$12(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 7

    .line 153
    :try_start_0
    iget-object p3, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, ","

    const-string v0, ""

    invoke-virtual {p2, p4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addDebt(Ljava/lang/String;D)J

    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showFinance()V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception p1

    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->status:Landroid/widget/TextView;

    const-string p2, "\u0628\u064a\u0627\u0646\u0627\u062a \u0627\u0644\u062f\u064a\u0646 \u063a\u064a\u0631 \u0635\u0627\u0644\u062d\u0629"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2d
    return-void
.end method

.method private synthetic lambda$createNoteDialog$7(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 127
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3c

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3c

    iget-object p3, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addNote(Ljava/lang/String;Ljava/lang/String;)J

    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showNotes()V

    :cond_3c
    return-void
.end method

.method private synthetic lambda$createTaskDialog$4(Landroid/widget/EditText;Landroid/widget/DatePicker;III)V
    .registers 13

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v5, 0x3b

    const/16 v6, 0x3b

    const/16 v4, 0x17

    move v1, p3

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 111
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3a

    iget-object p2, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addTask(Ljava/lang/String;Ljava/lang/Long;)J

    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showTasks()V

    .line 112
    :cond_3a
    return-void
.end method

.method private synthetic lambda$createTaskDialog$5(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 10

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 109
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda18;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/EditText;)V

    .line 112
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 113
    return-void
.end method

.method private synthetic lambda$createTransactionDialog$11(Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 8

    .line 144
    :try_start_0
    iget-object p4, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, ","

    const-string v0, ""

    invoke-virtual {p2, p5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2a

    move-object p2, p1

    goto :goto_32

    :cond_2a
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_32
    invoke-virtual {p4, p1, v0, v1, p2}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->addTransaction(Ljava/lang/String;DLjava/lang/String;)J

    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showFinance()V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_41

    :catch_39
    move-exception p1

    iget-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->status:Landroid/widget/TextView;

    const-string p2, "\u0642\u064a\u0645\u0629 \u0645\u0627\u0644\u064a\u0629 \u063a\u064a\u0631 \u0635\u0627\u0644\u062d\u0629"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_41
    return-void
.end method

.method static synthetic lambda$onCreate$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 35
    const-string p0, "\u062d\u064f\u0641\u0638\u062a \u0627\u0644\u0631\u0633\u0627\u0644\u0629 \u0645\u062d\u0644\u064a\u064b\u0627\u061b \u0627\u0633\u062a\u062e\u062f\u0645 \u0632\u0631 DeepSeek \u0644\u0625\u0631\u0633\u0627\u0644\u0647\u0627."

    return-object p0
.end method

.method private synthetic lambda$showFinance$10(Landroid/view/View;)V
    .registers 2

    .line 136
    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->createDebtDialog()V

    return-void
.end method

.method private synthetic lambda$showFinance$8(Landroid/view/View;)V
    .registers 2

    .line 134
    const-string p1, "INCOME"

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->createTransactionDialog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showFinance$9(Landroid/view/View;)V
    .registers 2

    .line 135
    const-string p1, "EXPENSE"

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->createTransactionDialog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showMemory$13(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/view/View;)V
    .registers 5

    .line 162
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    const/16 v0, 0x32

    if-eqz p3, :cond_1d

    iget-object p2, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string p3, "memories"

    invoke-virtual {p2, p3, v0}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2b

    :cond_1d
    iget-object p3, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->searchMemory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_2b
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$showNotes$6(Landroid/view/View;)V
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->createNoteDialog()V

    return-void
.end method

.method private synthetic lambda$showRam$1(Landroid/view/View;)V
    .registers 2

    .line 72
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->executeInput(Z)V

    return-void
.end method

.method private synthetic lambda$showRam$2(Landroid/view/View;)V
    .registers 2

    .line 75
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->executeInput(Z)V

    return-void
.end method

.method private synthetic lambda$showTasks$3(Landroid/view/View;)V
    .registers 2

    .line 101
    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->createTaskDialog()V

    return-void
.end method

.method private renderShell()V
    .registers 8

    .line 42
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->body:Landroid/widget/LinearLayout;

    .line 44
    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->body:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->body:Landroid/widget/LinearLayout;

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->dp(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    new-instance v3, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda2;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    const-string v4, "RAM"

    invoke-direct {p0, v1, v4, v3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->addTab(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 49
    new-instance v3, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda3;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    const-string v4, "\u0627\u0644\u062a\u0642\u0648\u064a\u0645"

    invoke-direct {p0, v1, v4, v3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->addTab(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 50
    new-instance v3, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda4;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    const-string v4, "\u0627\u0644\u0645\u0630\u0643\u0631\u0627\u062a"

    invoke-direct {p0, v1, v4, v3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->addTab(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 51
    new-instance v3, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda5;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    const-string v4, "\u0627\u0644\u0645\u0627\u0644\u064a\u0629"

    invoke-direct {p0, v1, v4, v3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->addTab(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 52
    new-instance v3, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda6;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    const-string v4, "\u0627\u0644\u0630\u0627\u0643\u0631\u0629"

    invoke-direct {p0, v1, v4, v3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->addTab(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 53
    iget-object v3, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->body:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const-string v1, "\u0645\u062d\u0644\u064a \u0623\u0648\u0644\u064b\u0627 \u2022 \u0642\u0627\u0639\u062f\u0629 RAM \u062c\u0627\u0647\u0632\u0629"

    invoke-direct {p0, v1, v2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->status:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->status:Landroid/widget/TextView;

    iget v2, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->blue:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->status:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->setContentView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method private reset(Ljava/lang/String;)V
    .registers 4

    .line 170
    nop

    :goto_1
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_10

    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    :cond_10
    const/16 v0, 0x16

    invoke-direct {p0, p1, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    return-void
.end method

.method private sendNative(Ljava/lang/String;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->status:Landroid/widget/TextView;

    const-string v1, "\u062c\u0627\u0631\u064d \u0625\u0646\u0634\u0627\u0621 \u0637\u0644\u0628 DeepSeek Native\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->bridge:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

    new-instance v1, Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;

    invoke-direct {v1, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$1;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;->sendAsync(Ljava/lang/String;Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge$Listener;)V

    .line 96
    return-void
.end method

.method private showFinance()V
    .registers 5

    .line 132
    const-string v0, "\u0627\u0644\u0645\u0627\u0644\u064a\u0629 \u0648\u0627\u0644\u062f\u064a\u0648\u0646"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->reset(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v1, "transactions"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v3, "debts"

    invoke-virtual {v1, v3, v2}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 134
    const-string v0, "\u0625\u0636\u0627\u0641\u0629 \u062f\u062e\u0644"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    new-instance v1, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda10;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const-string v0, "\u0625\u0636\u0627\u0641\u0629 \u0645\u0635\u0631\u0648\u0641"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    new-instance v1, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda11;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const-string v0, "\u0625\u0636\u0627\u0641\u0629 \u062f\u064a\u0646"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    new-instance v1, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda12;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method private showMemory()V
    .registers 6

    .line 158
    const-string v0, "\u0627\u0644\u0630\u0627\u0643\u0631\u0629 \u0627\u0644\u062a\u0631\u0627\u0643\u0645\u064a\u0629"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->reset(Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0628\u062d\u062b \u0641\u064a \u0627\u0644\u0630\u0627\u0643\u0631\u0629"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 160
    const-string v1, "\u0628\u062d\u062b"

    invoke-direct {p0, v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 161
    iget-object v2, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v3, "memories"

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v4}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    invoke-direct {p0, v2, v3}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 162
    new-instance v3, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method private showNotes()V
    .registers 4

    .line 117
    const-string v0, "\u0627\u0644\u0645\u0630\u0643\u0631\u0627\u062a"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->reset(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v1, "notes"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 118
    const-string v0, "\u0625\u0636\u0627\u0641\u0629 \u0645\u0630\u0643\u0631\u0629"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    new-instance v1, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda7;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private showRam()V
    .registers 4

    .line 62
    const-string v0, "RAM \u2022 \u0627\u0644\u0645\u0633\u0627\u0639\u062f \u0627\u0644\u062a\u0646\u0641\u064a\u0630\u064a"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->reset(Ljava/lang/String;)V

    .line 63
    const-string v0, "\u0627\u0644\u0623\u0648\u0627\u0645\u0631 \u0627\u0644\u0645\u062d\u0644\u064a\u0629 \u0644\u0627 \u062a\u063a\u0627\u062f\u0631 \u0627\u0644\u062c\u0647\u0627\u0632. \u0627\u0644\u0646\u0635 \u063a\u064a\u0631 \u0627\u0644\u0645\u0639\u0631\u0648\u0641 \u064a\u0645\u0643\u0646 \u0625\u0631\u0633\u0627\u0644\u0647 \u0639\u0628\u0631 \u0627\u0644\u0639\u0645\u064a\u0644 \u0627\u0644\u0623\u0635\u0644\u064a \u0644\u0640 DeepSeek."

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 64
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->input:Landroid/widget/EditText;

    .line 65
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->input:Landroid/widget/EditText;

    const-string v1, "help \u0623\u0648 \u0645\u0647\u0645\u0629 \u0625\u0636\u0627\u0641\u0629 \u0634\u0631\u0627\u0621 \u0627\u0644\u062e\u0628\u0632"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->input:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 67
    const-string v0, "\u062a\u0646\u0641\u064a\u0630 \u0627\u0644\u0623\u0645\u0631 \u0627\u0644\u0645\u062d\u0644\u064a"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 69
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->output:Landroid/widget/LinearLayout;

    .line 70
    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->output:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    iget-object v1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->output:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 72
    new-instance v1, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda13;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const-string v0, "\u0625\u0631\u0633\u0627\u0644 \u0627\u0644\u0646\u0635 \u0625\u0644\u0649 DeepSeek Native"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 75
    new-instance v1, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda14;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method private showTasks()V
    .registers 4

    .line 99
    const-string v0, "\u0627\u0644\u062a\u0642\u0648\u064a\u0645 \u0648\u0627\u0644\u0645\u0647\u0627\u0645"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->reset(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    const-string v1, "tasks"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/ram/ledger/deepseek/ram/RamDatabase;->list(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    .line 101
    const-string v0, "\u0625\u0636\u0627\u0641\u0629 \u0645\u0647\u0645\u0629 \u0645\u0639 \u062a\u0627\u0631\u064a\u062e"

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->button(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->add(Landroid/view/View;)V

    new-instance v1, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ram/ledger/deepseek/ram/RamHubActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method private text(Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 6

    .line 172
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, -0xbbbbbc

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->dp(I)I

    move-result p2

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance p1, Lcom/ram/ledger/deepseek/ram/RamDatabase;

    invoke-direct {p1, p0}, Lcom/ram/ledger/deepseek/ram/RamDatabase;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    .line 34
    new-instance p1, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

    invoke-direct {p1}, Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;-><init>()V

    iput-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->bridge:Lcom/ram/ledger/deepseek/bridge/DeepSeekNativeBridge;

    .line 35
    new-instance p1, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;

    iget-object v0, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->database:Lcom/ram/ledger/deepseek/ram/RamDatabase;

    new-instance v1, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity$$ExternalSyntheticLambda9;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/ram/ledger/deepseek/ram/RamCommandRouter;-><init>(Lcom/ram/ledger/deepseek/ram/RamDatabase;Lcom/ram/ledger/deepseek/ram/RamCommandRouter$NativeFallback;)V

    iput-object p1, p0, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->router:Lcom/ram/ledger/deepseek/ram/RamCommandRouter;

    .line 36
    const-string p1, "RAM \u2022 \u0646\u0638\u0627\u0645 \u0627\u0644\u062d\u064a\u0627\u0629"

    invoke-virtual {p0, p1}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->renderShell()V

    .line 38
    invoke-direct {p0}, Lcom/ram/ledger/deepseek/ram/RamHubActivity;->showRam()V

    .line 39
    return-void
.end method
