.class public Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayCardViewMediumPlus.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;->getPaddingRight()I

    move-result v2

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int v6, v0, v1

    sub-int/2addr v6, v2

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    int-to-float v6, v5

    iget v7, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;->mThumbnailAspectRatio:F

    mul-float/2addr v6, v7

    float-to-int v3, v6

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMediumPlus;->mThumbnail:Lcom/google/android/play/layout/PlayCardThumbnail;

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;->onMeasure(II)V

    return-void
.end method
