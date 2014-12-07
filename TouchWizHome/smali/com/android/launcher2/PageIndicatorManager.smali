.class public Lcom/android/launcher2/PageIndicatorManager;
.super Ljava/lang/Object;
.source "PageIndicatorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;
    }
.end annotation


# static fields
.field private static final FAST_SCROLL_LONG_PRESS_TIMEOUT:I = 0xfa

.field private static mPageIndicatorHeight:I


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private fastScrollEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

.field private mAddPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mCameraPageIndicator:Landroid/graphics/drawable/Drawable;

.field private final mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

.field private mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mFocusDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorTotalWidth:I

.field private mIsLongPressPending:Z

.field private mLastLoadedPage:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaxVisiblePages:I

.field protected mPageIndicator:Lcom/android/launcher2/PageIndicator;

.field private mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorFocus:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorTop:I

.field mPagedView:Lcom/android/launcher2/PagedView;

.field private final mScroller:Lcom/android/launcher2/ScalarAnimator;

.field private mViewsTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/PagedView;III)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    new-instance v1, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0x320

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher2/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    new-instance v1, Lcom/android/launcher2/PageIndicatorManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PageIndicatorManager$1;-><init>(Lcom/android/launcher2/PageIndicatorManager;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->fastScrollEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    iput-boolean v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    iput-boolean v5, p0, Lcom/android/launcher2/PageIndicatorManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mCameraPageIndicator:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mAddPageIndicator:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorFocus:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mFocusDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    :cond_0
    iput p2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    iput p3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    iput p4, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f02009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f02009a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const v3, 0x7f020099

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    const v3, 0x7f02009b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator(Landroid/content/res/Resources;)Lcom/android/launcher2/PageIndicator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    instance-of v1, p1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iput-boolean v6, v1, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;-><init>(Lcom/android/launcher2/PageIndicatorManager;Lcom/android/launcher2/PageIndicatorManager$1;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->fastScrollEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->setEndListener(Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicatorManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/PageIndicatorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    return v0
.end method

.method static getPageIndicatorHeight()I
    .locals 1

    sget v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    return v0
.end method

.method private loadPageIfNeeded()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-boolean v1, v1, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->isPageFastMoving()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iput v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    goto :goto_0
.end method

.method private snapToScreen(I)V
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_1

    if-ge p1, v1, :cond_3

    const/4 v2, 0x2

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, p1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    return-void

    :cond_3
    if-le p1, v1, :cond_1

    const/4 v2, 0x3

    goto :goto_0
.end method


# virtual methods
.method public cancelEnterFastScroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    :cond_0
    return-void
.end method

.method protected cancelFastScroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->abort()Z

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->exitFastScroll()V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected checkPageIndicatorLongPress(FF)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->CheckFolderOpen()V

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->enterFastScoll(FF)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected checkPageIndicatorTouch(FF)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    float-to-int v4, p1

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    float-to-int v5, p2

    add-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v1, v1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_2

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v1, v1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    check-cast v1, Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->openHeadlines(Z)V

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->snapToScreen(I)V

    move v1, v2

    goto :goto_0
.end method

.method drawPageIndicator(Landroid/graphics/Canvas;J)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v6, v6, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    if-eq v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/launcher2/PageIndicatorManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_extra"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    const/16 v7, 0x4e98

    invoke-virtual {v6, v7, v4}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher2/PageIndicator;->setCurrentPage(IZ)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/PageIndicator;->setOffset(II)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, p1, v6, p2, p3}, Lcom/android/launcher2/PageIndicator;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->loadPageIfNeeded()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_4
    move v2, v5

    goto :goto_1
.end method

.method public endEditMode()V
    .locals 0

    return-void
.end method

.method protected enterFastScoll(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator;->enterFastScroll()V

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/PageIndicatorManager;->handleMove(FFZ)Z

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;I)V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    mul-int v0, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v1, v1, Lcom/android/launcher2/PageIndicator;->mGap:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v1, v1, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mTop:I

    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v3, v3, Lcom/android/launcher2/PageIndicator;->mLeft:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v4, v4, Lcom/android/launcher2/PageIndicator;->mTop:I

    sget v5, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected getPageIndicator(Landroid/content/res/Resources;)Lcom/android/launcher2/PageIndicator;
    .locals 2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v1, v1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    :cond_0
    new-instance v0, Lcom/android/launcher2/PageIndicator;

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-direct {v0, p1, v1}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/launcher2/PageIndicator;

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-direct {v0, p1, v1}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    goto :goto_0
.end method

.method protected getPageIndicatorArea(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/PageIndicator;->getPageTouchArea(II)I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    iput v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorTouch(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/launcher2/PageIndicatorManager;->handleMove(FFZ)Z

    move-result v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->scheduleEnterFastScroll()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method handleMove(FFZ)Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    int-to-float v2, v2

    sub-float v6, p1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-boolean v2, v2, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    :goto_1
    int-to-float v2, v2

    add-float/2addr v2, v6

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    :goto_2
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->loadPageIfNeeded()V

    goto :goto_2
.end method

.method public handleOrientationChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicator;->handleOrientationChange(Landroid/content/res/Resources;)V

    return-void
.end method

.method public hidePageIndicator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicator;->hide(Z)V

    :cond_0
    return-void
.end method

.method isFastScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHoveringOnPageIndicator(FF)Z
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    float-to-int v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    float-to-int v3, p2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInPageIndicator(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    float-to-int v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layoutPageIndicator()V
    .locals 7

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v5, v5, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_0

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v5, v5, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setCPDrawable([Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mCameraPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setCameraPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setHeadlinesPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mAddPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setAddPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setFolderPageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v5

    const/16 v6, 0x258

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setFocusPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mFocusDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setFocusDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v2, v4}, Lcom/android/launcher2/PageIndicator;->setPageCount(I)V

    iget v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    invoke-virtual {v2, v5}, Lcom/android/launcher2/PageIndicator;->setGap(I)V

    add-int v5, v4, v0

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v6, v3

    mul-int/2addr v6, v5

    if-lez v4, :cond_3

    iget v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :goto_0
    sub-int v5, v6, v5

    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onDragEnter(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    goto :goto_0
.end method

.method public onDragExit(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    goto :goto_0
.end method

.method public onDrop(I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method scheduleEnterFastScroll()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return-void
.end method

.method public setAnimationPrevented(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicator;->setAnimationPrevented(Z)V

    return-void
.end method

.method public setGap(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    return-void
.end method

.method public showPageIndicator()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/PageIndicator;->show(ZZ)V

    :cond_0
    return-void
.end method

.method public startEditMode()V
    .locals 0

    return-void
.end method
