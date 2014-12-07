.class public Lcom/android/launcher2/AnimationLayer;
.super Landroid/widget/FrameLayout;
.source "AnimationLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AnimationLayer$Anim;
    }
.end annotation


# static fields
.field static final sRootLocationOnScreen:[I


# instance fields
.field private final BLOCK_EVENTS_TIMEOUT:J

.field private mAnimPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockEvents:Z

.field final mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentOrientation:I

.field private mDragLastX:I

.field private mDragLastY:I

.field private mDragLocalState:Ljava/lang/Object;

.field private mDragStateDropped:Z

.field private mFirstDrawAfterConfigChange:Z

.field private mLastBlockTime:J

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mNeedToInvalidate:Z

.field private final mResources:Landroid/content/res/Resources;

.field private final mTmpFPos:[F

.field private final mTmpPos:[I

.field private mViewPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    check-cast p1, Lcom/android/launcher2/Launcher;

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    check-cast p1, Lcom/android/launcher2/Launcher;

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AnimationLayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/AnimationLayer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    return-wide p1
.end method

.method private cleanupFinishedAnimations()V
    .locals 6

    const/high16 v5, 0x3f800000

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->recycle()V

    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public static createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private dispatchOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private getNewImageView()Landroid/widget/ImageView;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_0
    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 11

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    instance-of v0, p3, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {p4}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0x140

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v10

    move-object v6, v10

    goto :goto_0
.end method

.method public animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 8

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    iput p1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    :cond_0
    if-eqz p7, :cond_1

    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V

    goto :goto_0
.end method

.method public areTouchEventsBlocked()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return v0
.end method

.method public buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 7

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    if-nez p4, :cond_0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v5, p5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public cancelAnimationFor(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    :cond_1
    return-void
.end method

.method public cancelAnimations()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    return-void
.end method

.method public cancelAnimationsByGroup(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v4, :cond_2

    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    :cond_1
    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-eq v3, v1, :cond_4

    :cond_3
    iput-object v6, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    iput-object v6, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    if-ne v0, v5, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    if-ne v0, v5, :cond_7

    iput-boolean v4, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    invoke-virtual {p0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method protected dispatchGetDisplayList()V
    .locals 3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->dispatchGetDisplayList()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/view/ViewGroup;->dispatchGetDisplayList()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    invoke-virtual {p0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchWindowFocusChanged(Z)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    const/4 v2, 0x1

    instance-of v3, p2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayerType()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v3, v4, :cond_1

    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-boolean v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public findExistingAnimation(Landroid/view/View;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationForView(Landroid/view/View;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v3, p1, :cond_0

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    aget v3, v0, v5

    sub-int/2addr v2, v3

    aput v2, v1, v5

    return-object v1
.end method

.method public getLocationFromCellPos(IILcom/android/launcher2/CellLayout;Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 20

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v8, v0, [I

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v9, v0, [I

    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getScaleX()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getScaleY()F

    move-result v15

    const/high16 v16, 0x3f800000

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    const/high16 v16, 0x3f800000

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v12, v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v10, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/view/View;->setScaleY(F)V

    const/16 v16, 0x0

    aget v17, v9, v16

    mul-float v18, v12, v14

    sub-float v18, v12, v18

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    aput v17, v9, v16

    const/16 v16, 0x1

    aget v17, v9, v16

    sget-object v18, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    aput v17, v9, v16

    const/16 v16, 0x1

    aget v17, v9, v16

    mul-float v18, v10, v15

    sub-float v18, v10, v18

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    aput v17, v9, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v14

    const/16 v18, 0x0

    aget v18, v9, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    aput v17, v13, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v15

    const/16 v18, 0x1

    aget v18, v9, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    aput v17, v13, v16

    if-eqz p5, :cond_2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    div-float v5, v16, v17

    const/4 v6, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    move/from16 v0, v16

    int-to-float v6, v0

    :cond_0
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    :goto_0
    const/16 v16, 0x0

    aget v17, v13, v16

    mul-float v18, v5, v14

    add-float v17, v17, v18

    aput v17, v13, v16

    const/high16 v16, 0x3f800000

    cmpl-float v16, v14, v16

    if-eqz v16, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v4, v0

    const/16 v16, 0x0

    aget v17, v13, v16

    mul-float v18, v4, v14

    sub-float v18, v4, v18

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    sub-float v17, v17, v18

    aput v17, v13, v16

    :cond_1
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleY()F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    :goto_1
    const/16 v16, 0x1

    aget v17, v13, v16

    mul-float v18, v6, v15

    add-float v17, v17, v18

    aput v17, v13, v16

    const/high16 v16, 0x3f800000

    cmpl-float v16, v15, v16

    if-eqz v16, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v3, v0

    const/16 v16, 0x1

    aget v17, v13, v16

    mul-float v18, v3, v15

    sub-float v18, v3, v18

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    sub-float v17, v17, v18

    aput v17, v13, v16

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v13, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v9, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v13, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v9, v16

    return-object v9

    :catch_0
    move-exception v7

    const/high16 v14, 0x3f800000

    goto :goto_0

    :catch_1
    move-exception v7

    const/high16 v15, 0x3f800000

    goto :goto_1
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[IZ)[I
    .locals 14

    if-nez p3, :cond_0

    const/4 v10, 0x2

    new-array v0, v10, [I

    move-object/from16 p3, v0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-object p3

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v9

    const/high16 v10, 0x3f800000

    invoke-virtual {p1, v10}, Landroid/view/View;->setScaleX(F)V

    const/high16 v10, 0x3f800000

    invoke-virtual {p1, v10}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, p3, v11

    int-to-float v11, v11

    aput v11, v7, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, p3, v11

    int-to-float v11, v11

    aput v11, v7, v10

    const/4 v10, 0x1

    aget v11, v7, v10

    sget-object v12, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    int-to-float v12, v12

    sub-float/2addr v11, v12

    aput v11, v7, v10

    if-eqz p2, :cond_4

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000

    div-float v3, v10, v11

    const/4 v4, 0x0

    if-nez p4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    if-eq v10, v11, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v4, v10

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_1
    const/4 v10, 0x0

    aget v11, v7, v10

    mul-float v12, v3, v8

    add-float/2addr v11, v12

    aput v11, v7, v10

    const/high16 v10, 0x3f800000

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v2, v10

    const/4 v10, 0x0

    aget v11, v7, v10

    mul-float v12, v2, v8

    sub-float v12, v2, v12

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v7, v10

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    :goto_2
    const/4 v10, 0x1

    aget v11, v7, v10

    mul-float v12, v4, v9

    add-float/2addr v11, v12

    aput v11, v7, v10

    const/high16 v10, 0x3f800000

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v1, v10

    const/4 v10, 0x1

    aget v11, v7, v10

    mul-float v12, v1, v9

    sub-float v12, v1, v12

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v7, v10

    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v7, v11

    float-to-int v11, v11

    aput v11, p3, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v7, v11

    float-to-int v11, v11

    aput v11, p3, v10

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const/high16 v8, 0x3f800000

    goto :goto_1

    :catch_1
    move-exception v5

    const/high16 v9, 0x3f800000

    goto :goto_2
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->bindWidgetsAfterConfigChange()V

    return-void
.end method

.method public updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher2/AnimationLayer$Anim;->update([IIZ)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
