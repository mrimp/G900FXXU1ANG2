.class Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$3;
.super Ljava/lang/Object;
.source "ContactTipsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$3;->this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$3;->this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$3;->this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->neverShowContactTipsAgain(Landroid/content/Context;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$3;->this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->storeCheckedState(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method
