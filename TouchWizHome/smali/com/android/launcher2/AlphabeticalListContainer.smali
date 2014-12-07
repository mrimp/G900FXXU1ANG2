.class public Lcom/android/launcher2/AlphabeticalListContainer;
.super Landroid/view/ViewGroup;
.source "AlphabeticalListContainer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;


# static fields
.field private static final FASTSCROLLINDEX_GRAVITY_LEFT:I = 0x0

.field private static final FASTSCROLLINDEX_GRAVITY_RIGHT:I = 0x1


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mCurrentFastScrollIndexView:I

.field private final mFastScrollIndexGravity:I

.field private final mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

.field private mFastScrollIndexViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AlphabeticalListIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

.field private final mFirstCharColor:I

.field private final mLastMovePt:Landroid/graphics/PointF;

.field private mLastRawTouch:Landroid/graphics/PointF;

.field private mLastSelLen:I

.field private final mListBestMatchIndices:Landroid/util/SparseIntArray;

.field private final mListExactMatchIndices:Landroid/util/SparseIntArray;

.field private mListView:Landroid/widget/ExpandableListView;

.field private final mPopupHeight:F

.field private final mPopupHeightInc:F

.field private final mPopupWidth:F

.field private final mPopupWidthInc:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastMovePt:Landroid/graphics/PointF;

    iput v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    iput v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    iput-object v6, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastRawTouch:Landroid/graphics/PointF;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v4}, Ljava/text/Collator;->setStrength(I)V

    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->AlphabeticalListContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupWidth:F

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupHeight:F

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupWidthInc:F

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupHeightInc:F

    const/4 v1, 0x5

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFirstCharColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private clearIndexMatches()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private feedPtToIndexView(ILandroid/graphics/PointF;)V
    .locals 7
    .param p1    # I
    .param p2    # Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListIndicator;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v3, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v5, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p2}, Lcom/android/launcher2/AlphabeticalListIndicator;->feedPt(Landroid/graphics/PointF;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/AlphabeticalListContainer;->getSelection(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/AlphabeticalListContainer;->updatePopup(Ljava/lang/String;)V

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/AlphabeticalListContainer;->updateList(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getMatchingIndex(Ljava/lang/String;IIZZ)I
    .locals 10
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # Z
    .param p5    # Z

    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    :cond_0
    return v6

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroupCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    if-ltz p2, :cond_2

    if-le p2, v5, :cond_3

    :cond_2
    const/4 p2, 0x0

    :cond_3
    if-ltz p3, :cond_4

    if-le p3, v5, :cond_5

    :cond_4
    move p3, v5

    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, p2

    :goto_0
    if-gt v3, p3, :cond_8

    invoke-virtual {v0, v3}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v4

    iget-object v7, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    if-eqz p4, :cond_b

    iget-object v7, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v2, v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    iget-object v8, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_1
    if-ltz v1, :cond_6

    :cond_8
    if-eqz v1, :cond_9

    if-nez p4, :cond_0

    :cond_9
    move v6, v3

    if-eqz p5, :cond_0

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v7, v3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, v3}, Lcom/android/launcher2/MenuAppsListAdapter;->getChildrenCount(I)I

    move-result v7

    add-int/2addr v6, v7

    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_b
    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    iget-object v8, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private getNextLevelIndexStr(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 18
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    if-nez p2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/AlphabeticalListContainer;->getSelection(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v12, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    const/4 v1, -0x1

    if-ne v1, v14, :cond_2

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/AlphabeticalListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v14

    const/4 v1, -0x1

    if-ne v1, v14, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroupCount()I

    move-result v17

    const/4 v10, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move v13, v14

    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    invoke-virtual {v7, v13}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v11, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_6

    :cond_5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    if-ltz v10, :cond_3

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz p3, :cond_8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    const/4 v1, -0x1

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    const/4 v1, -0x1

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    :cond_7
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    const/4 v1, -0x1

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getSelection(I)Ljava/lang/String;
    .locals 5
    .param p1    # I

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCurrentChar()Ljava/lang/Character;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_1
    return-object v4

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private handleMove(Landroid/graphics/PointF;)Z
    .locals 7
    .param p1    # Landroid/graphics/PointF;

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AlphabeticalListIndicator;

    const/4 v0, 0x0

    iget v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    if-ne v0, v6, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AlphabeticalListIndicator;

    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-gez v0, :cond_7

    iget v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-direct {p0, v4, p1}, Lcom/android/launcher2/AlphabeticalListContainer;->feedPtToIndexView(ILandroid/graphics/PointF;)V

    return v6

    :pswitch_0
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    if-lez v1, :cond_6

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->clearCurrentChar()V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    if-lez v0, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->isPreMatching()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    add-int/lit8 v1, v4, 0x1

    :goto_2
    if-ge v1, v3, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v1}, Lcom/android/launcher2/AlphabeticalListContainer;->showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v2, p1}, Lcom/android/launcher2/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp()Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, -0x1

    iget v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->clearCurrentChar()V

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->unPressDelayed()Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    iput v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    const/4 v2, 0x1

    return v2
.end method

.method private showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z
    .locals 9
    .param p1    # Landroid/graphics/PointF;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ge p3, v7, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    add-int/lit8 v3, p3, -0x1

    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->isTextUppercase()Z

    move-result v5

    invoke-direct {p0, v3, p2, v5}, Lcom/android/launcher2/AlphabeticalListContainer;->getNextLevelIndexStr(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v5}, Lcom/android/launcher2/AlphabeticalListIndicator;->getMidYForCurrentChar()F

    move-result v1

    const/high16 v5, -0x40800000

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_2

    iput v1, v4, Landroid/graphics/PointF;->y:F

    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Launcher_DisableFastScrollIndex"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0, v7}, Lcom/android/launcher2/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher2/AlphabeticalListIndicator;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    move v5, v7

    goto :goto_0

    :cond_2
    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateList(ZLjava/lang/String;)V
    .locals 12
    .param p1    # Z
    .param p2    # Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v7, -0x1

    if-eqz p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v7, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void

    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v2, :cond_1

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/AlphabeticalListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v7

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v11, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    const/4 v10, 0x1

    move-object v5, p0

    move-object v6, p2

    move v8, v2

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/AlphabeticalListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v7

    goto :goto_0
.end method

.method private updatePopup(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    if-eq v1, v3, :cond_2

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupWidth:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupWidthInc:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupHeight:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupHeightInc:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setDrawBounds(Landroid/graphics/PointF;)V

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/AlphabeticalListTextPopup;->clearStyles()V

    if-le v1, v8, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getTextColor()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFirstCharColor:I

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setStyle(ILandroid/text/style/CharacterStyle;)V

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v8, v4}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setStyle(ILandroid/text/style/CharacterStyle;)V

    :cond_1
    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateViewIndexes()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListContainer;->clearIndexMatches()V

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->clearCurrentChar()V

    if-lez v0, :cond_0

    invoke-virtual {v1, v4, v4}, Lcom/android/launcher2/AlphabeticalListIndicator;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addAppIconViewForDrag(Lcom/android/launcher2/AppIconView;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/AppIconView;

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getLastRawTouchPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastRawTouch:Landroid/graphics/PointF;

    return-object v0
.end method

.method public notifyDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListContainer;->updateViewIndexes()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iput-object v7, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher2/AlphabeticalListIndicator;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_DisableFastScrollIndex"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/launcher2/AlphabeticalListTextPopup;

    iput-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_DisableFastScrollIndex"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/AlphabeticalListIndicator;->setAllowWiggle(Z)V

    :cond_3
    const v3, 0x7f080094

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView;

    iput-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v7}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    const/4 v4, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastRawTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    invoke-direct {p0, v2, v1}, Lcom/android/launcher2/AlphabeticalListContainer;->feedPtToIndexView(ILandroid/graphics/PointF;)V

    iput v2, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    move v2, v3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 26
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v21, v21, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v22

    sub-int v6, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    new-instance v5, Landroid/graphics/RectF;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, v18, v6

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-int v24, v19, v4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListContainer;->handleUp()Z

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    move/from16 v14, v18

    :goto_0
    const/16 v20, 0x0

    move/from16 v16, v18

    add-int v17, v18, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v9, v0, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move v14, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    instance-of v0, v9, Lcom/android/launcher2/AlphabeticalListIndicator;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object v15, v9

    check-cast v15, Lcom/android/launcher2/AlphabeticalListIndicator;

    add-int v20, v20, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int v21, v14, v11

    add-int v22, v19, v10

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v15, v14, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v14, v11

    invoke-virtual {v15}, Lcom/android/launcher2/AlphabeticalListIndicator;->isFloating()Z

    move-result v21

    if-nez v21, :cond_1

    move/from16 v16, v14

    goto :goto_2

    :pswitch_1
    sub-int v21, v14, v11

    add-int v22, v19, v10

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v14, v2}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v14, v11

    invoke-virtual {v15}, Lcom/android/launcher2/AlphabeticalListIndicator;->isFloating()Z

    move-result v21

    if-nez v21, :cond_1

    move/from16 v17, v14

    goto :goto_2

    :cond_4
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v22

    int-to-float v0, v11

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v7, v0

    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v22

    int-to-float v0, v10

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    add-int v21, v7, v11

    add-int v22, v8, v10

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v7, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v22

    int-to-float v0, v10

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    move-object/from16 v21, v0

    add-int v22, v8, v10

    move-object/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    :goto_3
    return-void

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AlphabeticalListIndicator;

    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->unPressDelayed()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->pressDelayed()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListContainer;->handleUp()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/AlphabeticalListContainer;->handleMove(Landroid/graphics/PointF;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Lcom/android/launcher2/MenuAppsListAdapter;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/MenuAppsListAdapter;

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuAppsListAdapter;->setListener(Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListContainer;->updateViewIndexes()V

    :cond_1
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 1
    .param p1    # Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 1
    .param p1    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1    # Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    return-void
.end method
