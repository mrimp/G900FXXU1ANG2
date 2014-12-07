.class public Lcom/android/settings/common/ActionModeCallback;
.super Ljava/lang/Object;
.source "ActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;
    }
.end annotation


# instance fields
.field protected listner:Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;

.field mContext:Landroid/content/Context;

.field mCustomView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/common/ActionModeCallback;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/common/ActionModeCallback;->listner:Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/settings/common/ActionModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/common/ActionModeCallback;->mCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/common/ActionModeCallback;->mCustomView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/common/ActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/common/ActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/common/ActionModeCallback$1;

    invoke-direct {v1, p0}, Lcom/android/settings/common/ActionModeCallback$1;-><init>(Lcom/android/settings/common/ActionModeCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/common/ActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1    # Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/settings/common/ActionModeCallback;->listner:Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/common/ActionModeCallback;->listner:Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;

    invoke-interface {v0}, Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;->close()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v0, 0x0

    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/common/ActionModeCallback;->mCustomView:Landroid/view/View;

    const v2, 0x7f0b0121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
