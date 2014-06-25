.class Lcom/android/internal/policy/impl/GlobalActions$99;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mSel:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;II)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$99;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/internal/policy/impl/GlobalActions$99;)Lcom/android/internal/policy/impl/GlobalActions;
    .locals 1
    .parameter

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$99;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    return-object v0
.end method


# virtual methods
.method public onPress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions$99;->mSel:I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$99;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104054e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108061e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1070039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$99$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$99$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$99;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, rebootDlg:Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$99$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$99$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$99;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
