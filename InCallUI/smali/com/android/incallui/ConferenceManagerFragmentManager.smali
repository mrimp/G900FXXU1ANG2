.class public Lcom/android/incallui/ConferenceManagerFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "ConferenceManagerFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceManagerFragmentManager$1;,
        Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/ConferenceManagerFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;"
    }
.end annotation


# instance fields
.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field currentFragment:Lcom/android/incallui/ConferenceManagerFragment;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->ONE_HAND_ENABLED:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->mOrientation:I

    const-string v0, "ConferenceManagerFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->INVALID:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    iput-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/ConferenceManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/ConferenceManagerFragment;
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCallUiMode: Easy mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", OneHand is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Z)V

    sget-object v4, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;->CONFERENCE_MANAGER_COMMON:Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    iget-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v3

    iget v5, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->mOrientation:I

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->mOrientation:I

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v6

    if-eq v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forceUpdate : mOrientation - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->mOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", config.orientation - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getProperOrientation - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v7}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFragmentType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requestedMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", forceUpdate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_3

    iget-object v5, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v5, v4, :cond_4

    :cond_3
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->mOrientation:I

    invoke-virtual {p0, v4, p1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v4, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->currentFragment:Lcom/android/incallui/ConferenceManagerFragment;

    goto/16 :goto_0
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragmentManager;->getFragment()Lcom/android/incallui/ConferenceManagerFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/ConferenceManagerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->currentFragment:Lcom/android/incallui/ConferenceManagerFragment;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->mOrientation:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/ConferenceManagerFragment;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/ConferenceManagerFragmentManager;->checkAndSet(Z)Lcom/android/incallui/ConferenceManagerFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerFragmentManager;->setCurrentFragment(Lcom/android/incallui/ConferenceManagerFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/ConferenceManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerFragmentManager;->currentFragment:Lcom/android/incallui/ConferenceManagerFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f080129

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/ConferenceManagerFragmentManager$1;->$SwitchMap$com$android$incallui$ConferenceManagerFragmentManager$ConferenceManagerMode:[I

    check-cast p1, Lcom/android/incallui/ConferenceManagerFragmentManager$ConferenceManagerMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/BaseFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/ConferenceManagerVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/ConferenceManagerVoiceFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
