.class public Lcom/android/settings/fmm/RemoteControls;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RemoteControls.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fmm/RemoteControls$FragmentLocation;,
        Lcom/android/settings/fmm/RemoteControls$SamsungAccount;,
        Lcom/android/settings/fmm/RemoteControls$FragmentAccount;,
        Lcom/android/settings/fmm/RemoteControls$PreferenceListener;
    }
.end annotation


# static fields
.field public static chkboxFlag:Z


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/fmm/RemoteControls$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fmm/RemoteControls$1;-><init>(Lcom/android/settings/fmm/RemoteControls;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/RemoteControls;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fmm/RemoteControls;)I
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    invoke-direct {p0}, Lcom/android/settings/fmm/RemoteControls;->setServiceFlagOn()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fmm/RemoteControls;)I
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    invoke-direct {p0}, Lcom/android/settings/fmm/RemoteControls;->setServiceFlagOff()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/fmm/RemoteControls;)I
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    invoke-direct {p0}, Lcom/android/settings/fmm/RemoteControls;->getServiceFlag()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private native getServiceFlag()I
.end method

.method private native setServiceFlagOff()I
.end method

.method private native setServiceFlagOn()I
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    if-eqz p2, :cond_3

    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CMCC"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CU"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/android/settings/fmm/RemoteControls;->chkboxFlag:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->showNotificationChargeDialog()V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v2, "terrier"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/fmm/RemoteControls;->setServiceFlagOn()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.remotecontrol_on"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "RemoteControls"

    const-string v3, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    const-string v2, "RemoteControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged [ServiceFlag] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/fmm/RemoteControls;->getServiceFlag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteControls"

    const-string v3, "WARNING: Could not load /system/lib/libterrier.so"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v2, "terrier"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/fmm/RemoteControls;->setServiceFlagOff()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.remotecontrol_off"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "RemoteControls"

    const-string v3, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    const-string v2, "RemoteControls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged LMM[ServiceFlag] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/fmm/RemoteControls;->getServiceFlag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "RemoteControls"

    const-string v3, "WARNING: Could not load /system/lib/libterrier.so"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f0401ba

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 5

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b028f

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b047e

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b047f

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void

    :catch_0
    move-exception v1

    const-string v3, "RemoteControls"

    const-string v4, "can\'t perform transaction.commit()"

    invoke-static {v3, v4, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 9

    const v8, 0x7f0b047e

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "FMMPreferences"

    invoke-virtual {v5, v6, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "pref_fmm"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "samsung_signin"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_5

    :cond_1
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_0
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "remote_control"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_6

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "remote_control"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/fmm/RemoteControls$PreferenceListener;-><init>(Lcom/android/settings/fmm/RemoteControls;Lcom/android/settings/fmm/RemoteControls$1;)V

    iput-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;

    # getter for: Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;
    invoke-static {v0}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->access$400(Lcom/android/settings/fmm/RemoteControls$SamsungAccount;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    # getter for: Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;
    invoke-static {v0}, Lcom/android/settings/fmm/RemoteControls$SamsungAccount;->access$400(Lcom/android/settings/fmm/RemoteControls$SamsungAccount;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_3
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "RemoteControls"

    const-string v4, "can\'t perform transaction.commit()"

    invoke-static {v3, v4, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040136

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0304

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v3, Lcom/android/settings/fmm/RemoteControls$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/RemoteControls$2;-><init>(Lcom/android/settings/fmm/RemoteControls;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f091398

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fmm/RemoteControls$4;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/RemoteControls$4;-><init>(Lcom/android/settings/fmm/RemoteControls;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/fmm/RemoteControls$3;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/RemoteControls$3;-><init>(Lcom/android/settings/fmm/RemoteControls;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-void
.end method
