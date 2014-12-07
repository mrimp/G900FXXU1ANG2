.class public Lcom/android/settings/AirplaneModeSettings;
.super Landroid/app/Fragment;
.source "AirplaneModeSettings.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private airplaneModeInfo:Landroid/widget/TextView;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/AirplaneModeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSettings$1;-><init>(Lcom/android/settings/AirplaneModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/AirplaneModeSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSettings$2;-><init>(Lcom/android/settings/AirplaneModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeSettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/AirplaneModeSettings;

    invoke-direct {p0}, Lcom/android/settings/AirplaneModeSettings;->onAirplaneModeChanged()V

    return-void
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "AirplaneModeSettings"

    const-string v6, "onAirplaneModeChanged()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-direct {p0, v3}, Lcom/android/settings/AirplaneModeSettings;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/AirplaneModeSettings;->updateAirplaneModeInfo(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move v0, v3

    :goto_1
    const-string v5, "AirplaneModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged - serviceState.getState() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "AirplaneModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged - airplaneModeEnabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    :goto_2
    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/AirplaneModeSettings;->updateAirplaneModeInfo(Z)V

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2
.end method

.method private updateAirplaneModeInfo(Z)V
    .locals 5
    .param p1    # Z

    const-string v2, "AirplaneModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAirplaneModeInfo() - airplaneModeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f091651

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f091652

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->mActionBarLayout:Landroid/view/View;

    :cond_1
    new-instance v2, Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/AirplaneModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v3, v4}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/16 v8, 0x8

    const v6, 0x7f040013

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b004e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0b004d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0b0050

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v6, 0x7f0b004f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeInfo:Landroid/widget/TextView;

    const v6, 0x7f0b004c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    const/high16 v7, 0x41a00000

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    const v4, 0x7f090d33

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    const-string v7, "com.android.mms"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const v4, 0x7f090d36

    :cond_4
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    const v4, 0x7f090d37

    :cond_5
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v6, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v7, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/android/settings/AirplaneModeSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    iget-object v6, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-direct {p0, v6}, Lcom/android/settings/AirplaneModeSettings;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/AirplaneModeSettings;->updateAirplaneModeInfo(Z)V

    return-object v5

    :cond_6
    const v4, 0x7f090d37

    goto :goto_0

    :cond_7
    const-string v6, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "CHC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    const v4, 0x7f090d34

    goto :goto_1

    :cond_9
    const v4, 0x7f090d35

    goto :goto_1

    :cond_a
    iget-object v6, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    const v4, 0x7f090d38

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
