.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_GRAVITY:I = 0x800013


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContainer:Landroid/widget/LinearLayout;

.field private mGravity:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/app/BackStackRecord;

.field mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x1030089

    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, -0x1

    iput v2, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    new-instance v2, Landroid/app/FragmentBreadCrumbs$1;

    invoke-direct {v2, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    iput-object v2, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    sget-object v2, Lcom/android/internal/R$styleable;->FragmentBreadCrumbs:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v2, 0x800013

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046c

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Landroid/app/FragmentBreadCrumbs;->mIsParentThemeDeviceDefault:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0    # Landroid/app/FragmentBreadCrumbs;

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 1
    .param p0    # Landroid/app/FragmentBreadCrumbs;

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object v0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0
.end method

.method private getPreEntryCount()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    sub-int v1, v8, v9

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getLayoutDirection()I

    move-result v7

    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    const v9, 0x800007

    and-int v6, v8, v9

    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v4, v3, v8

    :goto_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    if-ge v3, v8, :cond_1

    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    :cond_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int/2addr v8, v9

    if-le v4, v8, :cond_2

    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v4, v8, v9

    :cond_2
    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :sswitch_0
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v4, v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v3, v4, v8

    goto :goto_1

    :sswitch_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v10, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v4, v3, v8

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, p1, v5}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v6

    shl-int/lit8 v7, v5, 0x10

    invoke-static {v3, p2, v7}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;

    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public setMaxVisible(I)V
    .locals 2
    .param p1    # I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    return-void
.end method

.method public setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0
    .param p1    # Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/lang/CharSequence;

    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    return-void
.end method

.method updateCrumbs()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    const/4 v9, 0x0

    :goto_0
    add-int v20, v13, v14

    move/from16 v0, v20

    if-ge v9, v0, :cond_6

    if-ge v9, v14, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    :goto_1
    if-ge v9, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    if-eq v0, v4, :cond_2

    move v11, v9

    :goto_2
    if-ge v11, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_0
    sub-int v20, v9, v14

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    goto :goto_1

    :cond_1
    move v15, v9

    :cond_2
    if-lt v9, v15, :cond_5

    const v8, 0x1090052

    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentBreadCrumbs;->getContext()Landroid/content/Context;

    move-result-object v20

    sget-object v21, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v20, 0x10d

    const v21, 0x1090052

    :try_start_0
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const v20, 0x1020016

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/FragmentBreadCrumbs;->mIsParentThemeDeviceDefault:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_3

    const-string v20, "sec-roboto-light"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    if-nez v9, :cond_4

    const v20, 0x10202ac

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v20, "FragmentBreadCrumbs"

    const-string v21, "fragmentBreadCrumbItemLayout not found."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_6
    add-int v19, v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    :goto_4
    move/from16 v0, v19

    if-le v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    add-int/lit8 v21, v15, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v20, 0x1020016

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    add-int/lit8 v20, v15, -0x1

    move/from16 v0, v20

    if-ge v9, v0, :cond_9

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v20, v0

    if-lez v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v20, v0

    sub-int v20, v15, v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_a

    const/16 v20, 0x8

    :goto_7
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    const v20, 0x10202ac

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v20, v0

    sub-int v20, v15, v20

    move/from16 v0, v20

    if-le v9, v0, :cond_b

    if-eqz v9, :cond_b

    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    const/16 v20, 0x0

    goto :goto_6

    :cond_a
    const/16 v20, 0x0

    goto :goto_7

    :cond_b
    const/16 v20, 0x8

    goto :goto_8

    :cond_c
    return-void
.end method
