.class public Lcom/google/android/finsky/layout/play/PlayCardViewSingle;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayCardViewSingle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewSingle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/16 v0, 0x8

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/layout/play/PlayCardViewSingle;->measureThumbnailSpanningHeight(I)V

    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;->onMeasure(II)V

    return-void
.end method
