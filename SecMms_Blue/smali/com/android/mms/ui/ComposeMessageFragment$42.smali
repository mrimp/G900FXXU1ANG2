.class Lcom/android/mms/ui/ComposeMessageFragment$42;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->updateNormalModeActionBar()V
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mIsHardKeyboardOpen:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSipWithHardKeypad()V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x34000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_1
.end method
