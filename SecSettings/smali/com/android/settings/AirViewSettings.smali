.class public Lcom/android/settings/AirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoSubMenu:Z

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mAirCommandDisablePopup:Landroid/app/AlertDialog;

.field private mAirViewDisableDialog:Landroid/app/AlertDialog;

.field private mAirViewModeListPref:Landroid/preference/ListPreference;

.field private final mAirViewObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

.field private mInforPriviewEnableDialog:Landroid/app/AlertDialog;

.field private mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    new-instance v0, Lcom/android/settings/AirViewSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirViewSettings$1;-><init>(Lcom/android/settings/AirViewSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirViewSettings;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirViewSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/AirViewSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirViewModeSummary()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AirViewSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/AirViewSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AirViewSettings;->broadcastAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/AirViewSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/AirViewSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirviewSwitch()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/AirViewSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/AirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/AirViewSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private broadcastAirViewChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    :cond_4
    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private makeTalkBackDisablePopup()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f091094

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f091095

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f09090f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090e76

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AirViewSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/AirViewSettings$6;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/AirViewSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/AirViewSettings$5;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showAirViewDisableDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$3;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirViewSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$2;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$4;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showInformationPreviewEnablePopup()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09103d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e7d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$8;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirViewSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewSettings$7;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mInforPriviewEnableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateAirButtonCheckState()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_button_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "AirViewSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI_AIR_BUTTON_ONOFF : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateAirViewModeSummary()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_view_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAirviewSwitch()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private updateMenuEnableState()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_view_master_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "AirViewSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI_AIR_VIEW_MASTER_STATE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_view_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v4, "AirViewSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI_AIR_VIEW_MODE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_2
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateState()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_view_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirViewModeSummary()V

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirButtonCheckState()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->makeTalkBackDisablePopup()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->showAllOptionDisabledDialog()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    :goto_1
    const-string v1, "AirViewSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI_AIR_VIEW_MASTER_STATE was changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_4

    :goto_2
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->showAirViewDisableDialog()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, Lcom/android/settings/AirViewSettings;->broadcastAirViewChanged(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f070014

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    new-instance v5, Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    instance-of v5, v5, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_1

    iget-object v2, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0f0048

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirviewSwitch()V

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v5, "air_view_mode"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "pen_air_view_option"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    const-string v5, "finger_air_view_option"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "key_air_button"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v5, :cond_3

    sget v5, Lcom/android/settings/AirViewSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "extra_parent_preference_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/android/settings/AirViewSettings;->mSettingValue:I

    if-ne v5, v4, :cond_4

    :goto_0
    const-string v5, "key_air_button"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/AirViewSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    move v4, v6

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f091371

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201ee

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:section"

    const-string v2, "air_view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewSettings;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v6, "air_view_mode"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "com.android.settings.airviewsettings.aircommand"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_button_onoff"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_1

    move v0, v8

    :goto_0
    if-eqz v4, :cond_0

    const-string v6, "DoNotShowDialog"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/AirViewSettings;->showAirCommoandDisablePopup()V

    :goto_1
    return v8

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_view_mode"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    const-string v6, "AirViewSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URI_AIR_VIEW_MODE was changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateAirViewModeSummary()V

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V

    :cond_3
    :goto_2
    move v8, v7

    goto :goto_1

    :cond_4
    const-string v6, "key_air_button"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "pen_hovering_information_preview"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->showInformationPreviewEnablePopup()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "air_button_onoff"

    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-ne v6, v8, :cond_6

    move v6, v7

    :goto_3
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_7

    :goto_4
    invoke-virtual {v6, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    move v8, v7

    goto :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    move v0, v3

    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_5

    sget v5, Lcom/android/settings/AirViewSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    sget v5, Lcom/android/settings/AirViewSettings;->mSettingValue:I

    if-ne v5, v3, :cond_4

    move v2, v3

    :goto_1
    move-object v1, p2

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mPenAirViewPrefScreeen:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_6

    iput-boolean v3, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    :goto_3
    return v4

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mFingerAirViewPrefScreen:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_2

    iput-boolean v3, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-nez v3, :cond_0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_view_master_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_view_master_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->updateState()V

    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AirViewSettings;->isGoIntoSubMenu:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_view_master_onoff"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method public showAirCommoandDisablePopup()V
    .locals 6

    invoke-direct {p0}, Lcom/android/settings/AirViewSettings;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f04007b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b0172

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f091064

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f091037

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090811

    new-instance v5, Lcom/android/settings/AirViewSettings$9;

    invoke-direct {v5, p0}, Lcom/android/settings/AirViewSettings$9;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/AirViewSettings$10;

    invoke-direct {v5, p0}, Lcom/android/settings/AirViewSettings$10;-><init>(Lcom/android/settings/AirViewSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object v4, p0, Lcom/android/settings/AirViewSettings;->mAirCommandDisablePopup:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/AirViewSettings$11;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/AirViewSettings$11;-><init>(Lcom/android/settings/AirViewSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
