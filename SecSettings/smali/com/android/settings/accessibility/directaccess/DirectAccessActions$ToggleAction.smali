.class abstract Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;
.super Ljava/lang/Object;
.source "DirectAccessActions.java"

# interfaces
.implements Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledStatusMessageResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mMessageResId:I

    iput p2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mEnabledStatusMessageResId:I

    iput p3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mDisabledStatusMessageResId:I

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->willCreate()V

    const v5, 0x7f040089

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0192

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0b0193

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->isEnabled()Z

    move-result v0

    if-eqz v1, :cond_0

    iget v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    sget-object v7, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    sget-object v7, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->TurningOn:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    if-ne v5, v7, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v3, :cond_2

    if-eqz v2, :cond_4

    iget v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    return-object v4

    :cond_3
    move v2, v6

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->onToggle(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->mState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-void
.end method

.method willCreate()V
    .locals 0

    return-void
.end method
