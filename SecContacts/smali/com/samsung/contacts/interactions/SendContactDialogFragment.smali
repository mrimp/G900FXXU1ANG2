.class public Lcom/samsung/contacts/interactions/SendContactDialogFragment;
.super Landroid/app/DialogFragment;
.source "SendContactDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0    # Landroid/app/FragmentManager;

    new-instance v0, Lcom/samsung/contacts/interactions/SendContactDialogFragment;

    invoke-direct {v0}, Lcom/samsung/contacts/interactions/SendContactDialogFragment;-><init>()V

    const-string v1, "SendDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/samsung/contacts/interactions/SendContactDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030117

    invoke-direct {v1, p0, v4, v5, v3}, Lcom/samsung/contacts/interactions/SendContactDialogFragment$1;-><init>(Lcom/samsung/contacts/interactions/SendContactDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    const v4, 0x7f0e0280

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const v4, 0x7f0e0261

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/contacts/interactions/SendContactDialogFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/contacts/interactions/SendContactDialogFragment$2;-><init>(Lcom/samsung/contacts/interactions/SendContactDialogFragment;Landroid/widget/ArrayAdapter;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e025f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/contacts/interactions/SendContactDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/interactions/SendContactDialogFragment$3;-><init>(Lcom/samsung/contacts/interactions/SendContactDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method
