.class Lcom/android/mms/ui/ConversationListFragment$32;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$32;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$32;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$32;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mPrioritySenderListAdapter:Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->applyChanged()Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$32;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$32;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->setMenuMode(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$8400(Lcom/android/mms/ui/ConversationListFragment;I)V

    return-void
.end method
