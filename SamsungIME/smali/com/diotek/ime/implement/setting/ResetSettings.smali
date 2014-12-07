.class public Lcom/diotek/ime/implement/setting/ResetSettings;
.super Landroid/preference/DialogPreference;
.source "ResetSettings.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsKor:Z

.field private mIsTablet:Z

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    return-void
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    new-instance v0, Lcom/diotek/ime/implement/setting/ResetSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetAll()V

    :cond_0
    return-void
.end method

.method private resetHwrSettings()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    const-string v3, "SETTINGS_DEFAULT_HWR_ON"

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "hwr_settings"

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.android.inputmethod_preferences"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const-string v5, "500"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const-string v4, "5"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    const-string v4, "2"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private resetSettingsByCSC()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getInstance(Ljava/lang/String;)Lcom/diotek/ime/framework/util/CSCReadAndSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->setCustomerCSC(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private resetSettingsByPropertise()V
    .locals 3

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyLoader;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyLoader;-><init>()V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/repository/PropertyLoader;->loadAndSetToPreference(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "Reset settings from properties.xml was failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resetXT9Settings()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    if-eqz v4, :cond_1

    const-string v4, "prediction_setting"

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_WORDCOMPLETION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_SPELLCORRECTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_AUTOAPPEND"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const-string v5, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    const-string v6, "2"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void

    :cond_1
    const-string v4, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    goto :goto_0
.end method

.method private setChecked(Landroid/preference/TwoStatePreference;Z)V
    .locals 0
    .param p1    # Landroid/preference/TwoStatePreference;
    .param p2    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setResetAutoReplacement()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v6, v4, v1

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->makeAutoReplacePrefKey(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v2

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ko"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setResetLanguageListSettings()V
    .locals 15

    const-string v12, "SETTINGS_INPUT_LANGUAGES"

    invoke-virtual {p0, v12}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    const-string v13, "com.sec.android.inputmethod_preferences"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v12, "SETTINGS_INPUT_DEFALUT_LANGUAGE"

    const-string v13, ""

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "select_swiftkey_language_list"

    invoke-virtual {p0, v12}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_2

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v12

    if-eqz v12, :cond_1

    const-string v12, "0"

    invoke-interface {v4, v7, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :catch_0
    move-exception v12

    goto :goto_1
.end method


# virtual methods
.method protected resetAll()V
    .locals 45
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetSettingsByPropertise()V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetSettingsByCSC()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const-string v42, "com.sec.android.inputmethod_preferences"

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v41

    if-nez v41, :cond_4

    const/16 v21, 0x1

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Sip_SetAutoCorrectionDefaultOff"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    invoke-interface/range {v36 .. v36}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v41, "first_live_language_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "fist_hwr_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_pinch_zoom_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_predictive_text_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_trace_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "swiftkey_download_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_swiftkey_download_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "swiftkey_download_list_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_swiftkey_download_list_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "swiftkey_download_list_checkbox"

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_one_handed_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_pen_detection_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_auto_replacement_tap_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_mmkey_popup_help_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_keyboardchange_popup_help_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_languagechange_popup_help_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "first_empty_shortcuts_guide_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "SETTINGS_SHORTCUT_PHRASE"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstLanguageChangeTap(Z)V

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setMMKeyFirstTap(Z)V

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstKeyboardChangeTap(Z)V

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->setQwertyInputMethod()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->resetMultiwindowArrange()V

    :cond_0
    if-eqz v20, :cond_6

    const-string v41, "first_swiftkey_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v42, "SETTINGS_USE_STANDARD_DATA"

    if-nez v19, :cond_5

    const/16 v41, 0x1

    :goto_1
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v41, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v41, v0

    const-string v42, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v17, :cond_1

    const/4 v9, 0x0

    :cond_1
    const-string v41, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, v41

    invoke-interface {v11, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_2
    if-nez v21, :cond_8

    const-string v41, "first_xt9_9_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v42, "support_dlm"

    if-nez v19, :cond_7

    const/16 v41, 0x1

    :goto_3
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v41, v0

    const-string v42, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v17, :cond_2

    const/4 v9, 0x0

    :cond_2
    const-string v41, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, v41

    invoke-interface {v11, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v41, v0

    if-eqz v41, :cond_3

    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Sip_TraceGuideDialogCheckDefault"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v41, "true"

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v41, v0

    const-string v42, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v43, 0x1

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_5
    const-string v41, "SETTINGS_DEFAULT_HOLD_DELAY"

    const-string v42, "settings_hold_delay_medium"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v41, 0x12c

    invoke-static/range {v41 .. v41}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHoldDelay(I)V

    const/4 v13, 0x1

    :goto_6
    const/16 v41, 0xa

    move/from16 v0, v41

    if-gt v13, v0, :cond_a

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "phrase"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v41, 0x0

    goto/16 :goto_1

    :cond_6
    const-string v41, "first_swiftkey_execution"

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    :cond_7
    const/16 v41, 0x0

    goto/16 :goto_3

    :cond_8
    const-string v41, "first_xt9_9_execution"

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v41, v0

    const-string v42, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_a
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v41, "da_mode"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-interface/range {v41 .. v42}, Lcom/diotek/ime/framework/common/InputManager;->setCheckDontShowPinchZoomGuide(Z)V

    const/16 v39, 0x0

    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v35

    if-eqz v35, :cond_b

    move-object/from16 v0, v35

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_b

    check-cast v35, Landroid/preference/SwitchPreference;

    const-string v41, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_b
    const-string v41, "SETTINGS_DEFAULT_AUTO_CAPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_c

    const-string v41, "SETTINGS_DEFAULT_AUTO_CAPS"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_c
    const-string v41, "SETTINGS_DEFAULT_AUTO_SPACING"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_d

    const-string v41, "SETTINGS_DEFAULT_AUTO_SPACING"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_d
    const-string v41, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v35

    if-eqz v35, :cond_e

    move-object/from16 v0, v35

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_e

    check-cast v35, Landroid/preference/SwitchPreference;

    const-string v41, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_e
    const-string v41, "SETTINGS_USE_STANDARD_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_f

    const-string v42, "SETTINGS_USE_STANDARD_DATA"

    if-nez v19, :cond_27

    const/16 v41, 0x1

    :goto_7
    move-object/from16 v0, v36

    move-object/from16 v1, v42

    move/from16 v2, v41

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_f
    const-string v41, "SETTINGS_DEFAULT_VOICE_INPUT"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_10

    const-string v41, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_10
    const-string v41, "SETTINGS_DEFAULT_AUTO_PERIOD"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_11

    const-string v41, "SETTINGS_DEFAULT_AUTO_PERIOD"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_11
    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_12

    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    const-string v41, "doing_one_in_power_saving_mode"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v41

    if-nez v41, :cond_12

    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    if-eqz v41, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "sip_key_feedback_vibration"

    const/16 v43, 0x1

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_12
    :goto_8
    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_13

    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    const-string v41, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    if-eqz v41, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "sip_key_feedback_sound"

    const/16 v43, 0x1

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_13
    :goto_9
    const-string v41, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_14

    const-string v41, "SETTINGS_DEFAULT_USE_PREVIEW"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_14
    const-string v41, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_15

    const-string v41, "SETTINGS_DEFAULT_TRACE"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v41, v0

    if-eqz v41, :cond_16

    const-string v41, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_16

    const-string v41, "SETTINGS_DEFAULT_SPACE_LANGUAGE_CHANGE"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_16
    const-string v41, "SETTINGS_DEFAULT_PEN_DETECTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_17

    const-string v41, "SETTINGS_DEFAULT_PEN_DETECTION"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_17
    const-string v41, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_18

    const-string v41, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_18
    const-string v41, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_19

    const-string v41, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v41, v0

    if-nez v41, :cond_1f

    const-string v41, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Landroid/preference/ListPreference;

    const/16 v16, 0x0

    if-eqz v28, :cond_1a

    const-string v41, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v41, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v28 .. v28}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v41

    aget-object v41, v41, v16

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1a
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v41

    if-eqz v41, :cond_1c

    const-string v41, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    if-eqz v32, :cond_1b

    const-string v41, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1b
    if-eqz v32, :cond_1c

    const-string v41, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v32 .. v32}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v41

    aget-object v41, v41, v16

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1c
    if-nez v20, :cond_1d

    const-string v41, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v33

    if-eqz v33, :cond_1d

    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_1d

    const-string v41, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    if-eqz v39, :cond_1d

    const-string v41, "SETTINGS_DEFAULT_HWR_ON"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_1d
    const-string v41, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1e

    const-string v41, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v6, v1}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_1e
    const-string v41, "SETTINGS_DEFAULT_ONE_HAND"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1f

    const-string v41, "SETTINGS_DEFAULT_ONE_HAND"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-interface {v0, v5}, Lcom/diotek/ime/framework/common/InputManager;->updateSytemOneHandOperationSetting(Z)V

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v41, v0

    if-eqz v41, :cond_20

    if-nez v20, :cond_20

    const-string v41, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v33

    if-eqz v33, :cond_20

    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_20

    const-string v41, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    if-eqz v39, :cond_20

    const-string v41, "SETTINGS_DEFAULT_HWR_ON"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v41, v0

    if-eqz v41, :cond_26

    const-string v41, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    if-eqz v23, :cond_21

    const-string v41, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v41, v0

    if-eqz v41, :cond_22

    const-string v41, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v33

    if-eqz v33, :cond_22

    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v41, v0

    if-eqz v41, :cond_22

    const-string v41, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/SwitchPreference;

    if-eqz v39, :cond_22

    const-string v41, "SETTINGS_DEFAULT_HWR_ON"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/setting/ResetSettings;->setChecked(Landroid/preference/TwoStatePreference;Z)V

    :cond_22
    const-string v41, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/ListPreference;

    const/16 v16, 0x0

    if-eqz v29, :cond_23

    const-string v41, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v29 .. v29}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v41

    aget-object v41, v41, v16

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_23
    const-string v41, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/ListPreference;

    if-eqz v29, :cond_24

    const-string v41, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v29 .. v29}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v41

    aget-object v41, v41, v16

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_24
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v41

    if-eqz v41, :cond_26

    const-string v41, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/ListPreference;

    if-eqz v32, :cond_25

    const-string v41, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_25
    const-string v41, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/ListPreference;

    if-eqz v29, :cond_26

    const-string v41, "SETTINGS_DEFAULT_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v29 .. v29}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v41

    aget-object v41, v41, v16

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetHwrSettings()V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->resetXT9Settings()V

    if-nez v18, :cond_35

    if-nez v20, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getXt9DownloadableLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v40

    move-object/from16 v3, v40

    array-length v0, v3

    move/from16 v27, v0

    const/4 v14, 0x0

    :goto_a
    move/from16 v0, v27

    if-ge v14, v0, :cond_2a

    aget-object v24, v3, v14

    const-string v41, "0x%08x"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_27
    const/16 v41, 0x0

    goto/16 :goto_7

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "sip_key_feedback_vibration"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "sip_key_feedback_sound"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    :cond_2a
    const-string v41, "select_language_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v26

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v38

    const/16 v31, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    :goto_b
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v15, v0, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    aget-object v42, v38, v15

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v42

    aget-object v43, v38, v15

    invoke-virtual/range {v43 .. v43}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v43

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v41, "0x%08x"

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget-object v44, v38, v15

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    if-eqz v41, :cond_2c

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->length()I

    move-result v41

    if-lez v41, :cond_2b

    const-string v41, ", "

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    aget-object v41, v38, v15

    invoke-virtual/range {v41 .. v41}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const/16 v41, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v41, "select_language_list_"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v41, "ja"

    aget-object v42, v38, v15

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_2d

    const-string v41, "zh"

    aget-object v42, v38, v15

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2f

    :cond_2d
    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :cond_2e
    :goto_c
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-interface {v11, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    :cond_2f
    const-string v41, "ko"

    aget-object v42, v38, v15

    invoke-virtual/range {v42 .. v42}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v41, v0

    if-eqz v41, :cond_30

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    :cond_30
    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    :cond_31
    if-eqz v26, :cond_32

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->setResetAutoReplacement()V

    const-string v41, "SETTINGS_DEFAULT_TRACE"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    if-nez v41, :cond_34

    const-string v41, "settings_keyboard_swipe"

    const-string v42, "settings_keyboard_swipe_none"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_33
    :goto_d
    const-string v41, "first_tips_all_execution"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_34
    const-string v41, "settings_keyboard_swipe"

    const-string v42, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v41, v0

    const-string v42, "SETTINGS_DEFAULT_TRACE"

    const/16 v43, 0x1

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_35
    if-eqz v20, :cond_33

    const/16 v31, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v4

    const/16 v22, 0x0

    const/4 v12, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_36
    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_3d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/touchtype_fluency/util/LanguagePack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v43

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_36

    const/16 v41, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v41

    if-eqz v41, :cond_39

    const/16 v41, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsTablet:Z

    move/from16 v41, v0

    if-nez v41, :cond_39

    const/16 v41, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v41, "select_language_list_"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v41, "ja"

    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_37

    const-string v41, "zh"

    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3a

    :cond_37
    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :cond_38
    :goto_f
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-interface {v11, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v41, v0

    if-eqz v41, :cond_36

    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v41

    const-string v42, "KR"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3c

    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v41

    const-string v42, "ko"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3c

    move-object/from16 v22, v29

    goto/16 :goto_e

    :cond_3a
    const-string v41, "ko"

    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v41, v0

    if-eqz v41, :cond_3b

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    :cond_3b
    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    :cond_3c
    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v41

    const-string v42, "US"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_36

    invoke-interface/range {v29 .. v29}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v41

    const-string v42, "en"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_36

    move-object/from16 v12, v29

    goto/16 :goto_e

    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v41, v0

    if-eqz v41, :cond_3f

    if-eqz v22, :cond_3e

    invoke-interface/range {v22 .. v22}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v41

    if-nez v41, :cond_3e

    const/16 v41, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface/range {v22 .. v22}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v42

    invoke-interface/range {v22 .. v22}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v43

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v41, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_3e
    if-eqz v12, :cond_3f

    invoke-interface {v12}, Lcom/touchtype_fluency/util/LanguagePack;->isEnabled()Z

    move-result v41

    if-nez v41, :cond_3f

    const/16 v41, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v41

    invoke-virtual {v0, v12, v1}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v41, v0

    invoke-interface {v12}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v42

    invoke-interface {v12}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v43

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v41, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_3f
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mIsKor:Z

    move/from16 v41, v0

    if-nez v41, :cond_40

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->setResetLanguageListSettings()V

    :cond_40
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/ResetSettings;->setResetAutoReplacement()V

    const-string v41, "SETTINGS_DEFAULT_TRACE"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    if-nez v41, :cond_41

    const-string v41, "settings_keyboard_swipe"

    const-string v42, "settings_keyboard_swipe_none"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_d

    :cond_41
    const-string v41, "settings_keyboard_swipe"

    const-string v42, "settings_keyboard_swipe_continuous_input"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v41, v0

    const-string v42, "SETTINGS_DEFAULT_TRACE"

    const/16 v43, 0x1

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/ResetSettings;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v41, v0

    const-string v42, "SETTINGS_DEFAULT_KEYPAD_FLICK_UMLAUT"

    const/16 v43, 0x0

    invoke-interface/range {v41 .. v43}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_d
.end method
