.class Lcom/samsung/mms/ui/SavedMsgsList$3;
.super Landroid/content/BroadcastReceiver;
.source "SavedMsgsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/SavedMsgsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/SavedMsgsList;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/SavedMsgsList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mNoSdCard:Z
    invoke-static {v1, v3}, Lcom/samsung/mms/ui/SavedMsgsList;->access$302(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # invokes: Lcom/samsung/mms/ui/SavedMsgsList;->refreshList()V
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$400(Lcom/samsung/mms/ui/SavedMsgsList;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$500(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$500(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mOkRenameBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mOkRenameBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # setter for: Lcom/samsung/mms/ui/SavedMsgsList;->mNoSdCard:Z
    invoke-static {v1, v2}, Lcom/samsung/mms/ui/SavedMsgsList;->access$302(Lcom/samsung/mms/ui/SavedMsgsList;Z)Z

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # invokes: Lcom/samsung/mms/ui/SavedMsgsList;->refreshList()V
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$400(Lcom/samsung/mms/ui/SavedMsgsList;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$700(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mEditFileName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$700(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mSaveBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$500(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$200(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mEditNewFileName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$200(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/ui/SavedMsgsList$3;->this$0:Lcom/samsung/mms/ui/SavedMsgsList;

    # getter for: Lcom/samsung/mms/ui/SavedMsgsList;->mOkRenameBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/samsung/mms/ui/SavedMsgsList;->access$600(Lcom/samsung/mms/ui/SavedMsgsList;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
