.class public Lcom/samsung/contacts/preference/ContactsSettingsFragment$ContactsSettings;
.super Landroid/preference/PreferenceFragment;
.source "ContactsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/preference/ContactsSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsSettings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v5

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableAAB()Z

    move-result v6

    const-string v7, "attAddressBook"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const-string v8, "DisplayOptionsPreferenceFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasSim: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isKnoxMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisableMenuNameOrder()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "sortOrder"

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v3, "displayOrder"

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Contact_EnableExceptionHandling4Corea"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "vcardSettings"

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v5, "serviceNumbers"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "import"

    aput-object v3, v0, v2

    const-string v3, "enable_sweep_actions"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v5, "onlineSearch"

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Contact_EnableExceptionHandling4Corea"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "vcardSettings"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    :goto_2
    if-lez v0, :cond_11

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f09000e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "displayOrder"

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f09000c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "sortOrder"

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v0, "serviceNumbers"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_3
    invoke-virtual {v3, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v3, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    :goto_4
    if-eqz v0, :cond_e

    if-eqz v3, :cond_e

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/samsung/contacts/activities/ServiceNumbersTabActivity;

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v5, "serviceNumbers"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "serviceNumbers"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto :goto_3

    :cond_d
    move v3, v2

    goto :goto_4

    :cond_e
    if-nez v0, :cond_6

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "serviceNumbers"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v5, "serviceNumbers"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSdnAvailable()Z

    move-result v0

    invoke-virtual {v3}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v0, :cond_6

    :cond_10
    if-eqz v5, :cond_6

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_11
    const-string v0, "onlineSearch"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisableMenuGalSearch()Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    :goto_5
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getUseUniNameField()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "account"

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_13
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/contacts/impl/NearPlaceProviderManager;->addPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    return-void

    :cond_14
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v5

    array-length v6, v5

    move v0, v2

    :goto_6
    if-ge v0, v6, :cond_17

    aget-object v7, v5, v0

    iget-object v8, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/contacts/common/model/account/ExchangeAccountType;->isExchangeType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/contacts/ContactsUtils;->isLDAPType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_15
    :goto_7
    if-nez v1, :cond_12

    if-eqz v3, :cond_12

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    move v1, v2

    goto :goto_7
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSendContactType()I

    move-result v2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "sendContact"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableExceptionHandling4Corea"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "characterset"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "vcardSettings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/contacts/impl/NearPlaceProviderManager;->setPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v3, "vcardSettings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "EUC-KR"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
