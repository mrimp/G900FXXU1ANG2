.class Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment$1;
.super Ljava/lang/Object;
.source "MergeWithGoogleDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment$1;->this$0:Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;

    # invokes: Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;->createAccountSelectionDialog()V
    invoke-static {v0}, Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;->access$000(Lcom/samsung/contacts/interactions/MergeWithGoogleDialogFragment;)V

    return-void
.end method
