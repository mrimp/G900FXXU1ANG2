.class public Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChildItemViewMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;
    }
.end annotation


# instance fields
.field protected mChildItemViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibleChildCount:I

.field final synthetic this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;


# direct methods
.method public constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mVisibleChildCount:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addChildViewBelowWithInvisible([I)V
    .locals 26

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->removeChildWithAll()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v4, v4, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getLastVisiblePosition()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mVisibleChildCount:I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getBottom()I

    move-result v24

    move/from16 v18, v15

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v21

    const/16 v20, 0x0

    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v5, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v3, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    add-int v6, v16, v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v4, v4, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v10, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v14, v3, :cond_3

    aget v3, p1, v14

    if-ne v5, v3, :cond_2

    const/4 v13, 0x1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int v23, v23, v3

    :cond_4
    const/4 v13, 0x0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v19, -0x1

    if-ge v15, v3, :cond_0

    move-object/from16 v17, v25

    const/4 v11, 0x0

    add-int/lit8 v3, v19, -0x1

    sub-int v20, v3, v15

    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v3, v20, -0x1

    if-ge v5, v3, :cond_0

    add-int v8, v21, v5

    add-int/lit8 v3, v15, 0x1

    add-int v9, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->makeChildView(Landroid/view/View;II[I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_7

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    add-int/lit8 v3, v21, 0x2

    if-ge v12, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    const/4 v4, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v11, v4, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->addViewInLayoutMsg(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v6, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    const/4 v10, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v17, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v3, v3, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int v23, v23, v3

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Didn\'t add childrenView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public calculateOffsetForTransDelAnim(IF)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->userCalculateOffsetTransfer(IF)V

    :cond_0
    return-void
.end method

.method public getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-le v0, p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    goto :goto_0
.end method

.method public getChildItemCountWithAll()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildItemViewAt(I)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-gt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->userGetChildView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getVisibleChildItemViewCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mVisibleChildCount:I

    return v0
.end method

.method protected makeChildView(Landroid/view/View;II[I)Landroid/view/View;
    .locals 11

    const/4 v6, 0x0

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v7, v7, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v5, v6

    :goto_0
    return-object v5

    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v7, p4

    if-ge v2, v7, :cond_3

    aget v7, p4, v2

    if-ne p3, v7, :cond_2

    move-object v5, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v7, v7, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v8, v8, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-interface {v7, p3, v6, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v6, v6, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getCacheColorHint()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v6, v6, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    if-nez v4, :cond_6

    new-instance v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v6, v6, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getListPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v7, v7, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getListPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->width:I

    invoke-static {v9, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v3, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->height:I

    if-lez v3, :cond_7

    const/high16 v6, 0x40000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_2
    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2
.end method

.method public removeChildWithAll()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->releaseChildView()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public userSetTransfer(IFFFF)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr$ChildrenView;->userSetTransfer(FFFF)V

    :cond_0
    return-void
.end method
