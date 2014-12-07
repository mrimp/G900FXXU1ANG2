.class public abstract Lcom/android/contacts/interactions/GroupNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupNameDialogFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getTitleResourceId()I
.end method

.method protected abstract initializeGroupLabelEditText(Landroid/widget/EditText;)V
.end method

.method protected abstract isTitleDuplicated(Ljava/lang/String;)Z
.end method

.method protected abstract onCompleted(Ljava/lang/String;)V
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300bc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    const v4, 0x7f08021a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->initializeGroupLabelEditText(Landroid/widget/EditText;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->getTitleResourceId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v3, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment$3;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v3, Lcom/android/contacts/interactions/GroupNameDialogFragment$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/contacts/interactions/GroupNameDialogFragment$4;-><init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v1
.end method

.method updateOkButtonState(Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
