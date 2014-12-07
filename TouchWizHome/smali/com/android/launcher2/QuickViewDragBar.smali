.class public Lcom/android/launcher2/QuickViewDragBar;
.super Landroid/widget/FrameLayout;
.source "QuickViewDragBar.java"

# interfaces
.implements Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;


# static fields
.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewDragBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewDragBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setStates(ZZZ)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method


# virtual methods
.method public checkOver(II)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v0, v1}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->resetTrashCan()V

    move v0, v1

    goto :goto_0
.end method

.method public enableDelete(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public onBulgeAnimationEnded()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->resetTrashCan()V

    return-void
.end method

.method public onDrop()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v7, v5

    :goto_0
    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTextRight()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public resetTrashCan()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    return-void
.end method

.method public setTextDisplayPositionRight(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
