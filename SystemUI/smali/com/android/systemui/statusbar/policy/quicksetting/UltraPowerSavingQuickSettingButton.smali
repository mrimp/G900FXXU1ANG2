.class public Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "UltraPowerSavingQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;
    }
.end annotation


# static fields
.field private static final DB_PSM_CHANGE_INTENT:Ljava/lang/String; = "android.settings.POWERSAVINGMODE_CHANGED"

.field private static final DB_PSM_SWITCH:Ljava/lang/String; = "ultra_powersaving_mode"

.field private static final PSM_ACTIVITY:Ljava/lang/String; = "com.android.settings.Settings$PowerSavingMode2014Activity"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-UltraPowerSavingController"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z

.field private mSupportBrowser:Z

.field private mUltraPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1    # Landroid/content/Context;

    const v2, 0x7f0b0114

    const v1, 0x7f0b00ee

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    const v3, 0x7f0201c6

    const v4, 0x7f0201c5

    const v5, 0x7f0201c4

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mUltraPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_2

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mState:Z

    return-void

    :cond_0
    const v0, 0x7f0201c7

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v8, v6

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)I
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private canEnablePowerSaving()Z
    .locals 10

    const/4 v6, 0x1

    const/4 v9, -0x2

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_cpu_clock"

    invoke-static {v5, v8, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_display"

    invoke-static {v5, v8, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_background_colour"

    invoke-static {v5, v8, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_haptic_feedback"

    invoke-static {v5, v8, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    move v4, v6

    :goto_0
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    move v4, v6

    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mSupportBrowser:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    move v4, v6

    :cond_1
    :goto_2
    return v4

    :cond_2
    move v4, v7

    goto :goto_0

    :cond_3
    move v4, v7

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_2
.end method

.method private getMode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "ultra_powersaving_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x1

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 4
    .param p1    # I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ultra_powersaving_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showConfirmPopup()V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0163

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mUltraPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public init()V
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mUltraPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "com.android.browser"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mSupportBrowser:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onClick(Z)V
    .locals 5
    .param p1    # Z

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v1, :cond_1

    const-string v1, "STATUSBAR-UltraPowerSavingController"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "STATUSBAR-UltraPowerSavingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerSaving  onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "STATUSBAR-UltraPowerSavingController"

    const-string v2, "onClick(): PowerSaving state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mState:Z

    if-eq v1, p1, :cond_0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    const-string v1, "STATUSBAR-UltraPowerSavingController"

    const-string v2, "onClick(): UltraPowerSaving send intent for Ultra PSV"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "flag"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->setMode(I)V

    goto/16 :goto_0
.end method

.method public onLongClick()V
    .locals 2

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$UltraPowerSavingModeActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public userSwitched()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mUltraPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;->onChange(Z)V

    return-void
.end method
