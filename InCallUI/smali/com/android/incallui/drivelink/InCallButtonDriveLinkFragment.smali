.class public Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;
.super Lcom/android/incallui/CallButtonFragment;
.source "InCallButtonDriveLinkFragment.java"


# static fields
.field public static mBluetoothButton:Landroid/widget/ToggleButton;

.field private static mCancelButton:Landroid/widget/ToggleButton;

.field private static mCancelButtonDual:Landroid/widget/Button;

.field private static mIncallBottomFrame:Landroid/widget/LinearLayout;

.field public static mSpeakerButton:Landroid/widget/ToggleButton;

.field private static mUnholdButtonDual:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;-><init>()V

    return-void
.end method

.method public static manageHold(Z)V
    .locals 3
    .param p0    # Z

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mIncallBottomFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mIncallBottomFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mUnholdButtonDual:Landroid/widget/Button;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mUnholdButtonDual:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButtonDual:Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButtonDual:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mIncallBottomFrame:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mIncallBottomFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mUnholdButtonDual:Landroid/widget/Button;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mUnholdButtonDual:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButtonDual:Landroid/widget/Button;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButtonDual:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onClick(Landroid/view/View;)V

    const-string v1, "onClick: call super onClick"

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080102
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const-string v1, "onCreateView..."

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const v1, 0x7f04002e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const v0, 0x7f080105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    sput-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButton:Landroid/widget/ToggleButton;

    const v0, 0x7f080107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    sput-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const v0, 0x7f080108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    sput-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    const v0, 0x7f080101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mIncallBottomFrame:Landroid/widget/LinearLayout;

    const v0, 0x7f080102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mUnholdButtonDual:Landroid/widget/Button;

    const v0, 0x7f080103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButtonDual:Landroid/widget/Button;

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mUnholdButtonDual:Landroid/widget/Button;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mUnholdButtonDual:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButtonDual:Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mCancelButtonDual:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/CallButtonFragment;->onResume()V

    return-void
.end method

.method public showCanCelButton(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method
