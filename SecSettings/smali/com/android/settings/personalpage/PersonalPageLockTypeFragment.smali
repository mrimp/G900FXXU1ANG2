.class public Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PersonalPageLockTypeFragment.java"


# instance fields
.field private mChangePasswordListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeFinger:Landroid/preference/Preference;

.field private mLockTypePassword:Landroid/preference/Preference;

.field private mLockTypePattern:Landroid/preference/Preference;

.field private mLockTypePin:Landroid/preference/Preference;

.field private mLockTypeSignature:Landroid/preference/Preference;

.field private mPasswordConfirmed:Z

.field private mVerifyFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mPasswordConfirmed:Z

    iput-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mWaitingForConfirmation:Z

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$1;-><init>(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mChangePasswordListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;-><init>(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mVerifyFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    return-void
.end method

.method private StartChooseLockPassword(I)V
    .locals 7

    const/4 v2, 0x4

    const/4 v6, 0x0

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.password_type"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "lockscreen.password_min"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lockscreen.password_max"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "confirm_credentials"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "lockscreen.signature_fallback"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Block"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_1

    const/4 v2, 0x3

    :cond_1
    invoke-virtual {p0, v3, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0    # Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0    # Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V
    .locals 0
    .param p0    # Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->showSensorErrorDialog()V

    return-void
.end method

.method private confirmFingerprintPassword()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mVerifyFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const-string v3, "com.android.settings.permission.unlock"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->showSensorErrorDialog()V

    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private confirmPassword(III)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedSignatureExists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "request_quality"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private confirmPattern(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPersonalModePatternExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onPrivatemodeResultForTablet(I)V
    .locals 6
    .param p1    # I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_pp_request_code"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v3, "PersonalPageLockTypeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_CODE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resultCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    if-lez p1, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.personalpage.service"

    const-string v5, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "without_verify"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showSensorErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0917cc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0917d3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$3;-><init>(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private verifySecuredLock()Z
    .locals 5

    const/4 v1, 0x0

    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    :pswitch_0
    return v1

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPattern(I)Z

    goto :goto_0

    :pswitch_2
    const v1, 0x9000

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    :pswitch_3
    const/high16 v1, 0x20000

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    :pswitch_4
    const/high16 v1, 0x40000

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmFingerprintPassword()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public initPref()V
    .locals 2

    const-string v0, "personalpage_locktype_signature"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeSignature:Landroid/preference/Preference;

    const-string v0, "personalpage_locktype_pattern"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    const-string v0, "personalpage_locktype_pin"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    const-string v0, "personalpage_locktype_password"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    const-string v0, "personalpage_locktype_fingerprint"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeSignature:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v5, 0x0

    const-string v2, "PersonalPageLockTypeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", received - resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mWaitingForConfirmation:Z

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v5, v0, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->onPrivatemodeResultForTablet(I)V

    goto :goto_0

    :pswitch_2
    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v5, v0, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->onPrivatemodeResultForTablet(I)V

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1, v5, v0, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->onPrivatemodeResultForTablet(I)V

    goto :goto_0

    :pswitch_4
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {v1, v5, v0, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->onPrivatemodeResultForTablet(I)V

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_5

    const-string v2, "PersonalPageLockTypeFragment"

    const-string v3, "CONFIRM_REQUEST_ENTER success"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mPasswordConfirmed:Z

    goto :goto_0

    :cond_5
    const-string v2, "PersonalPageLockTypeFragment"

    const-string v3, "Failed to CONFIRM_REQUEST_ENTER"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {v1, v5, v0, v5}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->onPrivatemodeResultForTablet(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz p1, :cond_0

    const-string v0, "password_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mPasswordConfirmed:Z

    const-string v0, "waiting_for_confirmation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mWaitingForConfirmation:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_1

    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "Already confirmed. pass check"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mWaitingForConfirmation:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "no LockType yet. pass check"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "request to verify as locktype"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mWaitingForConfirmation:Z

    goto :goto_0

    :cond_3
    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "Waiting for confirmation.."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f040153

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070098

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0917fc

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->initPref()V

    return-object v0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeSignature:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.signaturelock"

    const-string v2, "com.sec.android.signaturelock.SetupSignature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fromPersonal"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_lock_method"

    const-string v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintDisclaimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fingerIndex"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "fromPersonal"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->showSensorErrorDialog()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mChangePasswordListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const-string v3, "com.android.settings.permission.unlock"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->showSensorErrorDialog()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
