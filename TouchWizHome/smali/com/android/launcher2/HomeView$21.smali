.class Lcom/android/launcher2/HomeView$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$l:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/AnimationLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$21;->val$l:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->val$l:Lcom/android/launcher2/AnimationLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->val$l:Lcom/android/launcher2/AnimationLayer;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1300(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    # getter for: Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/launcher2/HomeView;->access$200()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x0

    # getter for: Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/launcher2/HomeView;->access$200()Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1200(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView$21;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1200(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method
