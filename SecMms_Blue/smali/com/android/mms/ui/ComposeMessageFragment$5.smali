.class Lcom/android/mms/ui/ComposeMessageFragment$5;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Mms/ComposeMessageFragment"

    const-string v4, "mMessageListViewHandler Fragment was detached"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v0

    :goto_1
    add-int v2, v0, v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x7

    if-le v2, v3, :cond_4

    const/4 v2, 0x7

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setBubbleFontSize(I)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->changeThreadviewTextSizeTo(I)V
    invoke-static {v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1300(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$5;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    :cond_4
    if-ge v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x5

    if-le v2, v3, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    :cond_6
    if-ge v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
