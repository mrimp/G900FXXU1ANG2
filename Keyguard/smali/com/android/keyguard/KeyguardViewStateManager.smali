.class public Lcom/android/keyguard/KeyguardViewStateManager;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
.implements Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;


# instance fields
.field private mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

.field mChallengeTop:I

.field private mCurrentPage:I

.field private mExpandChallengeView:Landroid/widget/ImageButton;

.field private mHideHintsRunnable:Ljava/lang/Runnable;

.field private mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

.field private mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

.field private mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

.field private mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

.field mLastScrollState:I

.field mMainQueue:Landroid/os/Handler;

.field private mPageIndexOnPageBeginMoving:I

.field private mPageListeningToSlider:I

.field private final mPauseListener:Landroid/animation/Animator$AnimatorListener;

.field private final mResumeListener:Landroid/animation/Animator$AnimatorListener;

.field private mTmpLoc:[I

.field private mTmpPoint:[I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iput v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    iput v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$1;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPauseListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$2;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mResumeListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$3;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardWidgetPager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method private getChallengeTopRelativeToFrame(Lcom/android/keyguard/KeyguardWidgetFrame;I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput p2, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->mapPoint(Landroid/view/View;Landroid/view/View;[I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aget v0, v0, v2

    return v0
.end method

.method private mapPoint(Landroid/view/View;Landroid/view/View;[I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v2, v4, v6

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v3, v4, v7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v0, v4, v6

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v1, v4, v7

    aget v4, p3, v6

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    aput v4, p3, v6

    aget v4, p3, v7

    sub-int v5, v3, v1

    add-int/2addr v4, v5

    aput v4, p3, v7

    return-void
.end method

.method private updateEdgeSwiping()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setOnlyAllowEdgeSwipes(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setOnlyAllowEdgeSwipes(Z)V

    goto :goto_0
.end method

.method private userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->userActivity()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fadeInSecurity(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mResumeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public fadeOutSecurity(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPauseListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public isBouncing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChallengeShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    :cond_0
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->resetFocusedMagazineCardState()V

    goto :goto_0
.end method

.method public onPageBeginMoving()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v1, v1, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeOutChallenge()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method public onPageBeginWarp()V
    .locals 3

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeOutSecurity(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    return-void
.end method

.method public onPageEndMoving()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    return-void
.end method

.method public onPageEndWarp()V
    .locals 3

    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeInSecurity(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 8

    const/4 v7, 0x1

    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    if-ne v5, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetToResetOnPageFadeOut()I

    move-result v6

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v5}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v5, p2, :cond_3

    instance-of v5, p1, Lcom/android/keyguard/sec/ShortCutWidgetFrame;

    if-nez v5, :cond_3

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    :cond_3
    iput p2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v5}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v2, p1, Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 8

    const/4 v7, -0x1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_1

    instance-of v2, p1, Lcom/android/keyguard/CameraWidgetFrame;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/keyguard/CameraWidgetFrame;->setUseFastTransition(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v4, Lcom/android/keyguard/SlidingChallengeLayout;

    if-nez v2, :cond_3

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz v2, :cond_4

    const/high16 v5, 0x2000000

    or-int v3, v1, v5

    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v4, Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v4}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeInChallenge()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    :cond_2
    iput v7, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    return-void

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const v5, -0x2000001

    and-int v3, v1, v5

    goto :goto_1
.end method

.method public onRemoveView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    :cond_0
    return-void
.end method

.method public onScrollPositionChanged(FI)V
    .locals 3

    iput p2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->getChallengeTopRelativeToFrame(Lcom/android/keyguard/KeyguardWidgetFrame;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->adjustFrame(I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 5

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    if-nez p1, :cond_8

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->userActivity()V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getSmallFrameHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    :cond_3
    if-eq p1, v4, :cond_4

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    :goto_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    :cond_5
    :goto_3
    iput p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v2

    if-nez v2, :cond_b

    if-eq p1, v4, :cond_9

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    goto :goto_4
.end method

.method public setChallengeLayout(Lcom/android/keyguard/ChallengeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    return-void
.end method

.method public setExpandChallengeView(Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    return-void
.end method

.method public setKeyguardWidgetNavigation(Lcom/android/keyguard/sec/KeyguardWidgetNavigation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    return-void
.end method

.method public setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    return-void
.end method

.method public setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    return-void
.end method

.method public showBouncer(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    const v1, 0x7f06007c

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->announceCurrentSecurityMethod()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/PagedView;->isPageMoving()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v1, 0x7f06007d

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/keyguard/ChallengeLayout;->showBouncer()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/keyguard/ChallengeLayout;->hideBouncer()V

    goto :goto_1
.end method

.method public showUsabilityHints()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardViewStateManager$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardViewStateManager$4;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
