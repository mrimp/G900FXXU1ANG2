.class Lcom/android/mms/ui/ManageSimMessages$5;
.super Landroid/os/Handler;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v2, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COMPLETE_COPY_TO_PHONE_MEMORY copiedCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0006

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Lcom/android/mms/ui/ManageSimMessages;->hideProgressDialog()V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v3, 0x7f0c044a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COMPLETE_DELETE_FROM_SIM deletedCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0005

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # invokes: Lcom/android/mms/ui/ManageSimMessages;->cancelSimFullNotification()V
    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$1700(Lcom/android/mms/ui/ManageSimMessages;)V

    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v2}, Lcom/android/mms/ui/ManageSimMessages;->hideProgressDialog()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/mms/ui/ManageSimMessages$5$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ManageSimMessages$5$1;-><init>(Lcom/android/mms/ui/ManageSimMessages$5;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$5;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v3, 0x7f0c044b

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
