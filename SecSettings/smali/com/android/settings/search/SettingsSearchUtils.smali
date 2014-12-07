.class public Lcom/android/settings/search/SettingsSearchUtils;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# static fields
.field private static mMenuInfoItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mTm:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->initMenuTable()V

    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->additionalIncludeMenu()Z

    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->additionaRemoveMenu()Z

    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->loadMenufromCSCXml()V

    return-void
.end method

.method private additionaRemoveMenu()Z
    .locals 13

    const v12, 0x7f07002f

    const v11, 0x7f0700dc

    const/4 v4, 0x0

    const v10, 0x7f0b06a1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_5

    move v2, v3

    :goto_0
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move v1, v4

    :goto_1
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_b

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.safetyassurance"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.kieswifi"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    const-string v6, "jjh"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bluetoothAvailable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    const-string v6, "enable_bluetooth_tethering"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ATT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_3
    :goto_4
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "unlock_set_signature"

    const v7, 0x7f0700c1

    const/4 v8, 0x2

    const-string v9, "unlock_set_or_change"

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v6, "Safety assistance"

    const v7, 0x7f070059

    const-string v8, "General"

    invoke-direct {p0, v6, v7, v4, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :catch_1
    move-exception v6

    const v6, 0x7f0b06b4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connections"

    invoke-direct {p0, v6, v12, v4, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_6
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Connections"

    invoke-direct {p0, v6, v12, v4, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    const-string v6, "enable_switch_wifi_ap"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    const-string v6, "usb_tether_settings"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    const-string v6, "enable_bluetooth_tethering"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a
    const-string v6, "tethering_help"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v11, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_b
    return v3
.end method

.method private additionalIncludeMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static callMenu(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)Z
    .locals 10

    const-wide/32 v0, 0x7f0b06c4

    const-wide/32 v2, 0x7f0b06bf

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const v4, 0x10008000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/settings/search/SettingsSearchUtils;->getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/search/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Safety assistance"

    iget-object v8, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    const-string v2, "extra_from_search"

    invoke-virtual {v5, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "extra_parent_type"

    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extra_tab_id"

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extra_header_id"

    invoke-virtual {v5, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "extra_setting_value"

    iget v1, p0, Lcom/android/settings/search/SearchItem;->value:I

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_2
    return v9

    :cond_1
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.SettingsTabActivity"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    if-ne v4, v9, :cond_9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "Safety assistance"

    iget-object v8, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    new-instance v2, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/search/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "extra_from_search"

    invoke-virtual {v5, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "extra_parent_type"

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_tab_id"

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extra_header_id"

    invoke-virtual {v5, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "extra_parent_preference_key"

    iget-object v4, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extra_setting_value"

    iget v4, p0, Lcom/android/settings/search/SearchItem;->value:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "extra_link_key_array"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-wide/32 v3, 0x7f0b06ee

    cmp-long v3, v0, v3

    if-eqz v3, :cond_5

    const-wide/32 v3, 0x7f0b06ea

    cmp-long v0, v0, v3

    if-nez v0, :cond_8

    :cond_5
    const-string v0, "extra_second_fragment_bundle_key"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_4
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "Call settings"

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-wide v0, v2

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    :cond_8
    const-string v0, "extra_fragment_bundle_key"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_4

    :cond_9
    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v6, p1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    :goto_5
    invoke-static {v0, p1}, Lcom/android/settings/search/SettingsSearchUtils;->getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    goto :goto_5

    :cond_a
    const-string v6, "Call settings"

    iget-object v7, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_6
    iget-object v0, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchUtils;->getHeadTabIndex(Ljava/lang/String;)I

    move-result v0

    const-string v6, "extra_from_search"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "extra_parent_type"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "extra_tab_id"

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "extra_header_id"

    invoke-virtual {v5, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "extra_fragment_bundle_key"

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_parent_preference_key"

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra_setting_value"

    iget v3, p0, Lcom/android/settings/search/SearchItem;->value:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extra_link_key_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "extra_second_fragment_bundle_key"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PARENT_TYPE_PREFERENCE, parent key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    new-instance v2, Ljava/lang/Long;

    iget-object v3, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_6
.end method

.method private compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z
    .locals 4

    sget-object v1, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    iget-object v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    iget v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    iget v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this menu is removed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getHeadTabIndex(Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Connections"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v4, "Device"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "Controls"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v1, "General"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_4
    const-string v4, "Connections"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "My device"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v1, "Accounts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    const-string v1, "More"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method private static getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParentType()> parent key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Connections"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Controls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "General"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    new-instance v0, Lcom/android/settings/search/SettingSearchManager;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SettingSearchManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SettingSearchManager;->getPreInfo(Ljava/lang/String;)Lcom/android/settings/search/SearchItem;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/search/SettingsSearchUtils;->getParentType(Lcom/android/settings/search/SearchItem;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "Connections"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "My device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Accounts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "More"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initMenuTable()V
    .locals 14

    const v13, 0x7f070035

    const v12, 0x7f0b06ee

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "com.ipsec.vpnclient"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "shopdemo"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_56

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b069e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06a0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06a1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06a2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06a5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06a6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06a7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06ac

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.nfc"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06ae

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06b0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v5, "ALL"

    const-string v6, "ALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06b3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06b4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06aa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07002f

    const-string v8, "Connections"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003f

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f07003f

    const-string v8, "Device"

    invoke-direct {p0, v6, v7, v2, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.multiwindow"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06d7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06bb

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v4, :cond_6

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06b8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06d9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06da

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06db

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "SKT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_7
    const-string v6, "SKT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06df

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v6, "SKT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06bd

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "Call settings"

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06c0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f07003f

    const-string v9, "Device"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06cc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06d3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06c1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06cb

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b0726

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06d1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b0727

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b0728

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b0729

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06d0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b072a

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070066

    const-string v9, "Controls"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06e1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b069a

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b069b

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06e4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "Safety assistance"

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06c7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.skyfire.browser.toolbar.att"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v3, :cond_c

    if-eqz v6, :cond_c

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-ne v6, v3, :cond_c

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06c9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const/4 v9, 0x0

    const-string v10, "General"

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_1
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06e6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06e9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06e8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06ea

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06c6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06ec

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-ne v3, v1, :cond_f

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06ef

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06f0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "update_prl"

    const v8, 0x7f0700d2

    const v9, 0x7f0b06f0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v11, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "update_profile"

    const v8, 0x7f0700d2

    const v9, 0x7f0b06f0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v11, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "uicc_unlock"

    const v8, 0x7f0700d2

    const v9, 0x7f0b06f0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v11, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string v6, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06b6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06b7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f070059

    const-string v9, "General"

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "enable_switch_wifi_ap"

    const v8, 0x7f0700dc

    const v9, 0x7f0b06a1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "usb_tether_settings"

    const v8, 0x7f0700dc

    const v9, 0x7f0b06a1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "enable_bluetooth_tethering"

    const v8, 0x7f0700dc

    const v9, 0x7f0b06a1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "location_toggle"

    const v8, 0x7f07006e

    const v9, 0x7f0b06a7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "location_gps"

    const v8, 0x7f07006e

    const v9, 0x7f0b06a7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "location_network"

    const v8, 0x7f07006e

    const v9, 0x7f0b06a7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "assisted_gps"

    const v8, 0x7f07006e

    const v9, 0x7f0b06a7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "location_mode"

    const v8, 0x7f07006e

    const v9, 0x7f0b06a7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "key_my_place"

    const v8, 0x7f07006e

    const v9, 0x7f0b06a7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_13

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "mobile_network_settings"

    const v8, 0x7f0700fd

    const v9, 0x7f0b06ac

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v7, "smart_bonding_settings"

    const v8, 0x7f0700fd

    const v9, 0x7f0b06ac

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string v6, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    :cond_15
    if-eqz v0, :cond_4d

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "vpn_settings_for_att"

    const v7, 0x7f0700fd

    const v8, 0x7f0b06ac

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->isSmsSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "sms_application"

    const v7, 0x7f0700fd

    const v8, 0x7f0b06ac

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "print_settings"

    const v7, 0x7f0700fd

    const v8, 0x7f0b06ac

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.nfc"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "toggle_android_beam"

    const v7, 0x7f070087

    const v8, 0x7f0b06ae

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string v0, "ALL"

    const-string v6, "ALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "allshare_shared_contents"

    const v7, 0x7f070016

    const v8, 0x7f0b06b1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "allshare_accept_device"

    const v7, 0x7f070016

    const v8, 0x7f0b06b1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "allshare_reject_device"

    const v7, 0x7f070016

    const v8, 0x7f0b06b1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "allshare_download_to"

    const v7, 0x7f070016

    const v8, 0x7f0b06b1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "allshare_download_from"

    const v7, 0x7f070016

    const v8, 0x7f0b06b1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    if-nez v4, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "unlock_set_or_change"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lock_screen_clock_settings"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Germany"

    const-string v6, "ro.csc.country_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Australia"

    const-string v6, "ro.csc.country_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lock_screen_shortcut_menu"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lock_screen_myprofile_settings"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "owner_info_settings"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "biometric_weak_improve_matching"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "visiblepattern"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "visiblesignature"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "signature_verification_level"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "unlock_effect"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lock_screen_wakeup_settings"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lock_after_timeout"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "power_button_instantly_locks"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "help_text"

    const v7, 0x7f0700b8

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_3
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "homescreen_wallpaper"

    const v7, 0x7f0700e9

    const v8, 0x7f0b06d9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lockscreen_wallpaper"

    const v7, 0x7f0700e9

    const v8, 0x7f0b06d9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "both_wallpaper"

    const v7, 0x7f0700e9

    const v8, 0x7f0b06d9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "MONOTYPE"

    const v7, 0x7f070058

    const v8, 0x7f0b06da

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "font_size"

    const v7, 0x7f070058

    const v8, 0x7f0b06da

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "brightness"

    const v7, 0x7f070041

    const v8, 0x7f0b06b9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "screen_timeout"

    const v7, 0x7f070041

    const v8, 0x7f0b06b9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "touch_key_light"

    const v7, 0x7f070041

    const v8, 0x7f0b06b9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "screen_mode"

    const v7, 0x7f070041

    const v8, 0x7f0b06b9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "power_saving_mode"

    const v7, 0x7f070041

    const v8, 0x7f0b06b9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "screensaver"

    const v7, 0x7f070041

    const v8, 0x7f0b06b9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "accelerometer"

    const v7, 0x7f070041

    const v8, 0x7f0b06b9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "display_battery_level"

    const v7, 0x7f070041

    const v8, 0x7f0b06b9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "edit_screen_capture"

    const v7, 0x7f070041

    const v8, 0x7f0b06b9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "notification_panel_menu"

    const v7, 0x7f070088

    const v8, 0x7f0b06db

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "brightness_adjustment"

    const v7, 0x7f070088

    const v8, 0x7f0b06db

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "com.sec.android.pagebuddynotisvc"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "recommended_apps"

    const v7, 0x7f070088

    const/4 v8, 0x1

    const v9, 0x7f0b06db

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_1e
    :goto_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "led_indicator_charging_key"

    const v7, 0x7f07006b

    const v8, 0x7f0b06bb

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "led_indicator_low_battery_key"

    const v7, 0x7f07006b

    const v8, 0x7f0b06bb

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "led_indicator_missed_event_key"

    const v7, 0x7f07006b

    const v8, 0x7f0b06bb

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "led_indicator_voice_recording_key"

    const v7, 0x7f07006b

    const v8, 0x7f0b06bb

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    if-eqz v5, :cond_20

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "open_multi_window_view"

    const v6, 0x7f070082

    const v7, 0x7f0b06d7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "phone_language"

    const v6, 0x7f070068

    const v7, 0x7f0b06cc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "current_input_method"

    const v6, 0x7f070068

    const v7, 0x7f0b06cc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "recognizer_settings"

    const v6, 0x7f070068

    const v7, 0x7f0b06cc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "tts_settings"

    const v6, 0x7f070068

    const v7, 0x7f0b06cc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isMouseHoveringSupported()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "key_mouse_over"

    const v6, 0x7f070068

    const v7, 0x7f0b06cc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "pointer_speed"

    const v6, 0x7f070068

    const v7, 0x7f0b06cc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_22

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "handwriting_language"

    const v6, 0x7f070068

    const v7, 0x7f0b06cc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "voice_input_control_incomming_calls"

    const v6, 0x7f0700e6

    const v7, 0x7f0b06d3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "voice_input_control_alarm"

    const v6, 0x7f0700e6

    const v7, 0x7f0b06d3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "voice_input_control_camera"

    const v6, 0x7f0700e6

    const v7, 0x7f0b06d3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "voice_input_control_music"

    const v6, 0x7f0700e6

    const v7, 0x7f0b06d3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "incoming_call_notification"

    const v6, 0x7f070047

    const v7, 0x7f0b06c1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "air_call_accept_hands_free"

    const v6, 0x7f070047

    const v7, 0x7f0b06c1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "message_notification"

    const v6, 0x7f070047

    const v7, 0x7f0b06c1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "alarm_notification"

    const v6, 0x7f070047

    const v7, 0x7f0b06c1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "schedule_notification"

    const v6, 0x7f070047

    const v7, 0x7f0b06c1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "any_screen"

    const v6, 0x7f07008c

    const v7, 0x7f0b06cb

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "onehand_help"

    const v6, 0x7f07008c

    const v7, 0x7f0b06cb

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "air_motion_indicator"

    const v6, 0x7f07000f

    const v7, 0x7f0b0726

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "quick_glance"

    const v6, 0x7f07000f

    const v7, 0x7f0b0726

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "air_scroll"

    const v6, 0x7f07000f

    const v7, 0x7f0b0726

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "air_turn"

    const v6, 0x7f07000f

    const v7, 0x7f0b0726

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "air_call_accept"

    const v6, 0x7f07000f

    const v7, 0x7f0b0726

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "pick_up_to_call_out"

    const v6, 0x7f07007c

    const v7, 0x7f0b0728

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "pick_up"

    const v6, 0x7f07007c

    const v7, 0x7f0b0728

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "tilt"

    const v6, 0x7f07007c

    const v7, 0x7f0b0728

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "pan_to_browse_image"

    const v6, 0x7f07007c

    const v7, 0x7f0b0728

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "turn_over"

    const v6, 0x7f07007c

    const v7, 0x7f0b0728

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "palm_swipe"

    const v6, 0x7f070060

    const v7, 0x7f0b0729

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "palm_touch"

    const v6, 0x7f070060

    const v7, 0x7f0b0729

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "smartscreen_stay"

    const v6, 0x7f0700d0

    const v7, 0x7f0b06d0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "smartscreen_pause"

    const v6, 0x7f0700d0

    const v7, 0x7f0b06d0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "smartscreen_scroll"

    const v6, 0x7f0700d0

    const v7, 0x7f0b06d0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "smartscreen_rotation"

    const v6, 0x7f0700d0

    const v7, 0x7f0b06d0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "ring_volume"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "vibration_feedback_intensity"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "ringtone"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "phone_vibration"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "notification_sound"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2c

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "vibrate_when_ringing"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2d

    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2d

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "dtmf_tone"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "sound_effects"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lock_sounds"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_2e

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "haptic_feedback"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "audio_output"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "my_sound"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "sip_feedback_sound"

    const v7, 0x7f0700d3

    const v8, 0x7f0b06bc

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "sip_feedback_vibration"

    const v6, 0x7f0700d3

    const v7, 0x7f0b06bc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "key_account_add"

    const v6, 0x7f070009

    const v7, 0x7f0b06e1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "auto_time"

    const v6, 0x7f070034

    const v7, 0x7f0b06e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "date"

    const v6, 0x7f070034

    const v7, 0x7f0b06e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "time"

    const v6, 0x7f070034

    const v7, 0x7f0b06e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "auto_zone"

    const v6, 0x7f070034

    const v7, 0x7f0b06e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "timezone"

    const v6, 0x7f070034

    const v7, 0x7f0b06e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "24 hour"

    const v6, 0x7f070034

    const v7, 0x7f0b06e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "date_format"

    const v6, 0x7f070034

    const v7, 0x7f0b06e3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "disable_incoming_calls"

    const v6, 0x7f070045

    const v7, 0x7f0b06c0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "disable_notifications"

    const v6, 0x7f070045

    const v7, 0x7f0b06c0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "disable_alarm_and_timer"

    const v6, 0x7f070045

    const v7, 0x7f0b06c0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "disable_led_indicator"

    const v6, 0x7f070045

    const v7, 0x7f0b06c0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "always"

    const v6, 0x7f070045

    const v7, 0x7f0b06c0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "allowed_contacts"

    const v6, 0x7f070045

    const v7, 0x7f0b06c0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "allowed_list"

    const v6, 0x7f070045

    const v7, 0x7f0b06c0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "power_saving_cpu"

    const v6, 0x7f070076

    const v7, 0x7f0b06c6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "power_saving_display"

    const v6, 0x7f070076

    const v7, 0x7f0b06c6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "power_saving_haptic"

    const v6, 0x7f070076

    const v7, 0x7f0b06c6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "power_saving_tips"

    const v6, 0x7f070076

    const v7, 0x7f0b06c6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "power_saving_auto_turn_on"

    const v6, 0x7f070076

    const v7, 0x7f0b06c6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "toggle_lock_screen_rotation_preference"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "screen_timeout"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_2
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "market://search?q=pname:com.google.android.marvin.talkback"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v3

    :goto_5
    if-eqz v0, :cond_36

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "toggle_speak_password_preference"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "call_answering_ending"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "toggle_easy_interaction_preference"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "power_key_hold"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "share_acc_setting_menu"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "font_size"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "screen_magnification_preference_screen"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "high_contrast"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "color_blind"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "notification_preference"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "enable_global_gesture_preference_screen"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "tts_settings_preference"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "toggle_script_injection_preference"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "audio_balance"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "mono_audio_key"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "all_sound_off_key"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "flash_notification_key"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "assistant_menu_preference"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "select_long_press_timeout_preference"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "access_control_key"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0004

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v3, :cond_38

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "samsung_captioning_preference_screen"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "google_captioning_preference_screen"

    const v6, 0x7f070001

    const v7, 0x7f0b06c8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "dock_sounds"

    const v6, 0x7f070044

    const v7, 0x7f0b06c7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "cradle_enable"

    const v6, 0x7f070044

    const v7, 0x7f0b06c7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "desk_home_screen_display"

    const v6, 0x7f070044

    const v7, 0x7f0b06c7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "automatic_unlock"

    const v6, 0x7f070044

    const v7, 0x7f0b06c7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "audio_output"

    const v6, 0x7f070044

    const v7, 0x7f0b06c7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "cover_note"

    const v6, 0x7f070044

    const v7, 0x7f0b06c7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "cover_note_weather_unit"

    const v6, 0x7f070044

    const v7, 0x7f0b06c7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v0

    if-nez v0, :cond_3c

    :try_start_3
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.sec.android.cloudagent"

    const/4 v6, 0x5

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "pref_add_samsung_account"

    const v6, 0x7f07002a

    const/4 v7, 0x1

    const v8, 0x7f0b069a

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3c
    :goto_6
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.google.settings"

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "backup_data"

    const v6, 0x7f0700a3

    const v7, 0x7f0b069b

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "configure_account"

    const v6, 0x7f0700a3

    const v7, 0x7f0b069b

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "auto_restore"

    const v6, 0x7f0700a3

    const v7, 0x7f0b069b

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "master_clear"

    const v6, 0x7f0700a3

    const v7, 0x7f0b069b

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "home"

    const v6, 0x7f070069

    const v7, 0x7f0b06e8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "sms_application"

    const v6, 0x7f070069

    const v7, 0x7f0b06e8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "display_battery_level"

    const v6, 0x7f07009b

    const v7, 0x7f0b06ea

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "encryption"

    const v6, 0x7f0700c5

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_3f

    new-instance v0, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    iget-object v5, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "sdEncpref"

    const v6, 0x7f0700c3

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_40

    move v2, v3

    :cond_40
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_41

    if-eqz v2, :cond_41

    const-string v0, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "sim_lock_settings"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "show_password"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "device_admin"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "toggle_install_applications"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "toggle_verify_applications"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "credential_storage_type"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "trusted_credentials"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "credentials_install_key"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "reset_credentials"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "auto_policy_update"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "use_wifi_only"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "credentials_install"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "smartCardConfig"

    const v6, 0x7f0700be

    const v7, 0x7f0b06ed

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    const-string v0, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "bugreport"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "local_backup_password"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "keep_screen_on"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "select_runtime"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "hdcp_checking"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "bt_hci_snoop_log"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "proc_stats"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "enforce_read_external"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "enable_adb"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "bugreport_in_power"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "allow_mock_location"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "debug_app"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "wait_for_debugger"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "verify_apps_over_usb"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "wifi_display_certification"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "show_touches"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "pointer_location"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "debug_layout"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "show_hw_screen_udpates"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "show_hw_layers_udpates"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "debug_hw_overdraw"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "show_hw_overdraw"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "show_screen_updates"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "force_rtl_layout_all_locales"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "window_animation_scale"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "transition_animation_scale"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "animator_duration_scale"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "disable_overlays"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "force_hw_ui"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "force_msaa"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "overlay_display_devices"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "strict_mode"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "show_cpu_usage"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "track_frame_time"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "enable_opengl_traces"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "enable_traces"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "immediately_destroy_activities"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "app_process_limit"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "show_all_anrs"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "show_non_rect_clip"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v13, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    const-string v0, "ATT"

    const-string v5, "OPEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "system_update_settings_na_gsm"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_7
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "status_info"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "container"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "device_name"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "device_model"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "firmware_version"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "baseband_version"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "kernel_version"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "build_number"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "selinux_status"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_47

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_none"

    const v5, 0x7f0700c1

    const-string v6, "unlock_set_or_change"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_biometric_weak"

    const v5, 0x7f0700c1

    const-string v6, "unlock_set_or_change"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_biometric_weak_with_voice"

    const v5, 0x7f0700c1

    const-string v6, "unlock_set_or_change"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_signature"

    const v5, 0x7f0700c1

    const-string v6, "unlock_set_or_change"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_pattern"

    const v5, 0x7f0700c1

    const-string v6, "unlock_set_or_change"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_pin"

    const v5, 0x7f0700c1

    const-string v6, "unlock_set_or_change"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_password"

    const v5, 0x7f0700c1

    const-string v6, "unlock_set_or_change"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_smart"

    const v5, 0x7f0700c1

    const-string v6, "unlock_set_or_change"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_off"

    const v5, 0x7f0700c1

    const-string v6, "unlock_set_or_change"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "dualclock_settings"

    const v5, 0x7f070071

    const-string v6, "lock_screen_clock_settings"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "clock_size"

    const v5, 0x7f070071

    const-string v6, "lock_screen_clock_settings"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_screen_date_and_year"

    const v5, 0x7f070071

    const-string v6, "lock_screen_clock_settings"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "clock_weather"

    const v5, 0x7f070071

    const-string v6, "lock_screen_clock_settings"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_screen_profile"

    const v5, 0x7f070071

    const-string v6, "lock_screen_myprofile_settings"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    :goto_8
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "tts_default_rate"

    const v5, 0x7f0700e2

    const-string v6, "tts_settings"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "tts_play_example"

    const v5, 0x7f0700e2

    const-string v6, "tts_settings"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isMouseHoveringSupported()Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "key_preview_and_icon_labels"

    const v5, 0x7f070081

    const-string v6, "key_mouse_over"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "key_list_scrolling"

    const v5, 0x7f070081

    const-string v6, "key_mouse_over"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "time_and_date"

    const v5, 0x7f0700a5

    const-string v6, "quick_glance"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "notification"

    const v5, 0x7f0700a5

    const-string v6, "quick_glance"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "missed_call"

    const v5, 0x7f0700a5

    const-string v6, "quick_glance"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unread_message"

    const v5, 0x7f0700a5

    const-string v6, "quick_glance"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "battery"

    const v5, 0x7f0700a5

    const-string v6, "quick_glance"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "current_music"

    const v5, 0x7f0700a5

    const-string v6, "quick_glance"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "single_photo_view"

    const v5, 0x7f070012

    const-string v6, "air_turn"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "now_playing_on_music"

    const v5, 0x7f070012

    const-string v6, "air_turn"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "bgm_on_lock_screen"

    const v5, 0x7f070012

    const-string v6, "air_turn"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "advanced_air_call_accept_auto_start_speaker"

    const v5, 0x7f0700a8

    const-string v6, "air_call_accept"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "information_preview"

    const v5, 0x7f070056

    const v6, 0x7f0b06d1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "progress_bar_preview"

    const v5, 0x7f070056

    const v6, 0x7f0b06d1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "speed_dial_tip"

    const v5, 0x7f070056

    const v6, 0x7f0b06d1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "magnifier"

    const v5, 0x7f070056

    const v6, 0x7f0b06d1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "sound_and_haptic_feedback"

    const v5, 0x7f070056

    const v6, 0x7f0b06d1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "smart_scroll_sensitivity"

    const v5, 0x7f0700d1

    const-string v6, "smartscreen_scroll"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "smart_scroll_visual_feedback_icon"

    const v5, 0x7f0700d1

    const-string v6, "smartscreen_scroll"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_49

    if-eqz v2, :cond_49

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "sim_toggle"

    const v4, 0x7f0700cc

    const-string v5, "sim_lock_settings"

    invoke-direct {p0, v2, v4, v11, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "sim_pin"

    const v4, 0x7f0700cc

    const-string v5, "sim_lock_settings"

    invoke-direct {p0, v2, v4, v11, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "perso_toggle"

    const v4, 0x7f0700cc

    const-string v5, "sim_lock_settings"

    invoke-direct {p0, v2, v4, v11, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    const-string v0, "ATT"

    const-string v2, "OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_4b
    :goto_9
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "enable_screen_help"

    const v2, 0x7f07008b

    const-string v4, "onehand_help"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "input_control_help"

    const v2, 0x7f07008b

    const-string v4, "onehand_help"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    return-void

    :cond_4c
    move v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v6, "SettingsSearchUtils"

    const-string v7, "Browser Bar not found"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4d
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "vpn_settings"

    const v7, 0x7f0700fd

    const v8, 0x7f0b06ac

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4e
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "unlock_set_or_change"

    const v7, 0x7f0700bd

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lock_screen_widget_options"

    const v7, 0x7f0700b7

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "Germany"

    const-string v6, "ro.csc.country_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "Australia"

    const-string v6, "ro.csc.country_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lock_screen_shortcut_menu"

    const v7, 0x7f0700b7

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "unlock_effect"

    const v7, 0x7f0700b7

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "help_text"

    const v7, 0x7f0700b7

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "say_your_wakeup"

    const v7, 0x7f0700b7

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "set_wakeup_command"

    const v7, 0x7f0700b7

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "biometric_weak_improve_matching"

    const v7, 0x7f0700b4

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "biometric_weak_liveliness"

    const v7, 0x7f0700b4

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "lock_after_timeout"

    const v7, 0x7f0700b4

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "power_button_instantly_locks"

    const v7, 0x7f0700b4

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v6, "visiblepattern"

    const v7, 0x7f0700c0

    const v8, 0x7f0b06b8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v3, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move v0, v2

    goto/16 :goto_5

    :catch_2
    move-exception v0

    const-string v0, "SettingsSearchUtils"

    const-string v5, "Cloud package not found"

    invoke-static {v0, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_51
    if-eqz v1, :cond_52

    :cond_52
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "software_update_settings"

    const v6, 0x7f070038

    const v7, 0x7f0b06f1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_53
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_screen_short_or_camera_widget"

    const v5, 0x7f070070

    const-string v6, "lock_screen_widget_options"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_screen_clock_or_myprofile"

    const v5, 0x7f070070

    const-string v6, "lock_screen_widget_options"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "dualclock_settings"

    const v5, 0x7f070070

    const-string v6, "lock_screen_widget_options"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "clock_size"

    const v5, 0x7f070070

    const-string v6, "lock_screen_widget_options"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_screen_date_and_year"

    const v5, 0x7f070070

    const-string v6, "lock_screen_widget_options"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_screen_profile"

    const v5, 0x7f070070

    const-string v6, "lock_screen_widget_options"

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_54
    if-eqz v1, :cond_55

    :cond_55
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "update"

    const v2, 0x7f0700d2

    const-string v4, "software_update_settings"

    invoke-direct {p0, v1, v2, v11, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "auto_update"

    const v2, 0x7f0700d2

    const-string v4, "software_update_settings"

    invoke-direct {p0, v1, v2, v11, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "wifi_only"

    const v2, 0x7f0700d2

    const-string v4, "software_update_settings"

    invoke-direct {p0, v1, v2, v11, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_56
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b069e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002f

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06a0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002f

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06a6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002f

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06ac

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002f

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06ae

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002f

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06b0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002f

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06b3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002f

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06b4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07002f

    const-string v7, "Connections"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06b8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06b9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_58

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06bb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06bc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "SKT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    :cond_59
    const-string v4, "SKT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06df

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    const-string v4, "SKT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06bd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "Call settings"

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06c0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06c1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "Safety assistance"

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06c6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06c7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06cc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06cf

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06d0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06d2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06d3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070036

    const-string v7, "My device"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b0698

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07000b

    const-string v7, "Accounts"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b069a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07000b

    const-string v7, "Accounts"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b069b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07000b

    const-string v7, "Accounts"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06a7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070075

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070075

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06e6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070075

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06ea

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070075

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06ec

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070075

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06e3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070075

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "eng"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070075

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const v5, 0x7f0b06f1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070075

    const-string v7, "More"

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "toggle_airplane"

    const v6, 0x7f0700fd

    const v7, 0x7f0b06ac

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "mobile_network_settings"

    const v6, 0x7f0700fd

    const v7, 0x7f0b06ac

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v5, "tether_settings"

    const v6, 0x7f0700fd

    const v7, 0x7f0b06ac

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v3, v7}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    :cond_5d
    if-eqz v0, :cond_6e

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "vpn_settings_for_att"

    const v5, 0x7f0700fd

    const v6, 0x7f0b06ac

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    invoke-direct {p0}, Lcom/android/settings/search/SettingsSearchUtils;->isSmsSupported()Z

    move-result v0

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "sms_application"

    const v5, 0x7f0700fd

    const v6, 0x7f0b06ac

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "print_settings"

    const v5, 0x7f0700fd

    const v6, 0x7f0b06ac

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.nfc"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "toggle_android_beam"

    const v5, 0x7f070087

    const v6, 0x7f0b06ae

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "allshare_onoff"

    const v5, 0x7f070016

    const v6, 0x7f0b06b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "allshare_shared_contents"

    const v5, 0x7f070016

    const v6, 0x7f0b06b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "allshare_accept_device"

    const v5, 0x7f070016

    const v6, 0x7f0b06b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "allshare_reject_device"

    const v5, 0x7f070016

    const v6, 0x7f0b06b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "allshare_download_to"

    const v5, 0x7f070016

    const v6, 0x7f0b06b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "allshare_download_from"

    const v5, 0x7f070016

    const v6, 0x7f0b06b1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_set_or_change"

    const v5, 0x7f0700bd

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_screen_widget_options"

    const v5, 0x7f0700b7

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "Germany"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "Australia"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_screen_shortcut_menu"

    const v5, 0x7f0700b7

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "unlock_effect"

    const v5, 0x7f0700b7

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "help_text"

    const v5, 0x7f0700b7

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "say_your_wakeup"

    const v5, 0x7f0700b7

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "set_wakeup_command"

    const v5, 0x7f0700b7

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "biometric_weak_improve_matching"

    const v5, 0x7f0700b4

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "biometric_weak_liveliness"

    const v5, 0x7f0700b4

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_after_timeout"

    const v5, 0x7f0700b4

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "power_button_instantly_locks"

    const v5, 0x7f0700b4

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "visiblepattern"

    const v5, 0x7f0700c0

    const v6, 0x7f0b06b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "wallpaper"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "notification_panel_edit"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "key_multi_window"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "screen_mode"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "brightness"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "accelerometer"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "screen_timeout"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "screensaver"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "MONOTYPE"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "font_size"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "touch_key_light"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "display_battery_level"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "edit_screen_capture"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "power_saving_mode"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "auto_adjust_touch"

    const v5, 0x7f070040

    const v6, 0x7f0b06b9

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_62

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "led_indicator_charging_key"

    const v5, 0x7f07006b

    const v6, 0x7f0b06bb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "led_indicator_low_battery_key"

    const v5, 0x7f07006b

    const v6, 0x7f0b06bb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "led_indicator_missed_event_key"

    const v5, 0x7f07006b

    const v6, 0x7f0b06bb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "led_indicator_voice_recording_key"

    const v5, 0x7f07006b

    const v6, 0x7f0b06bb

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "ring_volume"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "vibration_feedback_intensity"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "ringtone"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "phone_vibration"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "notification_sound"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "vibrate_when_ringing"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "dtmf_tone"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "sound_effects"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "lock_sounds"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "haptic_feedback"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "my_sound"

    const v5, 0x7f0700d3

    const v6, 0x7f0b06bc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "disable_incoming_calls"

    const v5, 0x7f070045

    const v6, 0x7f0b06c0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "disable_notifications"

    const v5, 0x7f070045

    const v6, 0x7f0b06c0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "disable_alarm_and_timer"

    const v5, 0x7f070045

    const v6, 0x7f0b06c0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "disable_led_indicator"

    const v5, 0x7f070045

    const v6, 0x7f0b06c0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "always"

    const v5, 0x7f070045

    const v6, 0x7f0b06c0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "allowed_contacts"

    const v5, 0x7f070045

    const v6, 0x7f0b06c0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "allowed_list"

    const v5, 0x7f070045

    const v6, 0x7f0b06c0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "incoming_call_notification"

    const v5, 0x7f070047

    const v6, 0x7f0b06c1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "message_notification"

    const v5, 0x7f070047

    const v6, 0x7f0b06c1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "alarm_notification"

    const v5, 0x7f070047

    const v6, 0x7f0b06c1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "schedule_notification"

    const v5, 0x7f070047

    const v6, 0x7f0b06c1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "power_saving_cpu"

    const v5, 0x7f070076

    const v6, 0x7f0b06c6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "power_saving_display"

    const v5, 0x7f070076

    const v6, 0x7f0b06c6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "power_saving_haptic"

    const v5, 0x7f070076

    const v6, 0x7f0b06c6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "power_saving_tips"

    const v5, 0x7f070076

    const v6, 0x7f0b06c6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "power_saving_auto_turn_on"

    const v5, 0x7f070076

    const v6, 0x7f0b06c6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "dock_sounds"

    const v5, 0x7f070044

    const v6, 0x7f0b06c7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "cradle_enable"

    const v5, 0x7f070044

    const v6, 0x7f0b06c7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "desk_home_screen_display"

    const v5, 0x7f070044

    const v6, 0x7f0b06c7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "automatic_unlock"

    const v5, 0x7f070044

    const v6, 0x7f0b06c7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "audio_output"

    const v5, 0x7f070044

    const v6, 0x7f0b06c7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "toggle_lock_screen_rotation_preference"

    const v5, 0x7f070001

    const v6, 0x7f0b06c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "screen_timeout"

    const v5, 0x7f070001

    const v6, 0x7f0b06c8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_4
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "market://search?q=pname:com.google.android.marvin.talkback"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move v2, v3

    :goto_c
    if-eqz v2, :cond_64

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "toggle_speak_password_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "call_answering_ending"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "power_key_hold"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "share_acc_setting_menu"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "font_size"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "screen_magnification_preference_screen"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "high_contrast"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "color_blind"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "enable_global_gesture_preference_screen"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "tts_settings_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "toggle_script_injection_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "audio_balance"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "mono_audio_key"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "all_sound_off_key"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "flash_notification_key"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "assistant_menu_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "select_long_press_timeout_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "access_control_key"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "notification_preference"

    const v4, 0x7f070001

    const v5, 0x7f0b06c8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "notification_time_interval"

    const v4, 0x7f07008a

    const-string v5, "notification_preference"

    invoke-direct {p0, v2, v4, v11, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "phone_language"

    const v4, 0x7f070068

    const v5, 0x7f0b06cc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "current_input_method"

    const v4, 0x7f070068

    const v5, 0x7f0b06cc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "recognizer_settings"

    const v4, 0x7f070068

    const v5, 0x7f0b06cc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "tts_settings"

    const v4, 0x7f070068

    const v5, 0x7f0b06cc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "pointer_speed"

    const v4, 0x7f070068

    const v5, 0x7f0b06cc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "air_motion"

    const v4, 0x7f0700a9

    const v5, 0x7f0b06cf

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "motion"

    const v4, 0x7f0700a9

    const v5, 0x7f0b06cf

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "surface"

    const v4, 0x7f0700a9

    const v5, 0x7f0b06cf

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "g_sensor_cal"

    const v4, 0x7f0700a9

    const v5, 0x7f0b06cf

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "smartscreen_stay"

    const v4, 0x7f0700d0

    const v5, 0x7f0b06d0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "smartscreen_rotation"

    const v4, 0x7f0700d0

    const v5, 0x7f0b06d0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_66

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "smartscreen_pause"

    const v4, 0x7f0700d0

    const v5, 0x7f0b06d0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_66
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "smartscreen_scroll"

    const v4, 0x7f0700d0

    const v5, 0x7f0b06d0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "air_view_mode"

    const v4, 0x7f070014

    const v5, 0x7f0b06d2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "pen_air_view_option"

    const v4, 0x7f070014

    const v5, 0x7f0b06d2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "finger_air_view_option"

    const v4, 0x7f070014

    const v5, 0x7f0b06d2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "key_air_button"

    const v4, 0x7f070014

    const v5, 0x7f0b06d2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v0

    if-nez v0, :cond_67

    :try_start_5
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.android.cloudagent"

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "pref_add_samsung_account"

    const v4, 0x7f07002a

    const/4 v5, 0x1

    const v6, 0x7f0b069a

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_67
    :goto_d
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "backup_data"

    const v4, 0x7f0700a3

    const v5, 0x7f0b069b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "configure_account"

    const v4, 0x7f0700a3

    const v5, 0x7f0b069b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "auto_restore"

    const v4, 0x7f0700a3

    const v5, 0x7f0b069b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "master_clear"

    const v4, 0x7f0700a3

    const v5, 0x7f0b069b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "location_toggle"

    const v4, 0x7f07006e

    const v5, 0x7f0b06a7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "location_gps"

    const v4, 0x7f07006e

    const v5, 0x7f0b06a7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "location_network"

    const v4, 0x7f07006e

    const v5, 0x7f0b06a7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "assisted_gps"

    const v4, 0x7f07006e

    const v5, 0x7f0b06a7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "key_my_place"

    const v4, 0x7f07006e

    const v5, 0x7f0b06a7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "encryption"

    const v4, 0x7f0700c5

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "sdEncpref"

    const v4, 0x7f0700c3

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "sim_card_lock"

    const v4, 0x7f0700be

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "show_password"

    const v4, 0x7f0700be

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "device_administrators"

    const v4, 0x7f0700be

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "toggle_install_applications"

    const v4, 0x7f0700be

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "toggle_verify_applications"

    const v4, 0x7f0700be

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "trusted_credentials"

    const v4, 0x7f0700be

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "credentials_install_key"

    const v4, 0x7f0700be

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "reset_credentials"

    const v4, 0x7f0700be

    const v5, 0x7f0b06ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "home"

    const v4, 0x7f070069

    const v5, 0x7f0b06e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_69

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "sms_application"

    const v4, 0x7f070069

    const v5, 0x7f0b06e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "auto_time"

    const v4, 0x7f070034

    const v5, 0x7f0b06e3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "date"

    const v4, 0x7f070034

    const v5, 0x7f0b06e3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "time"

    const v4, 0x7f070034

    const v5, 0x7f0b06e3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "auto_zone"

    const v4, 0x7f070034

    const v5, 0x7f0b06e3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "timezone"

    const v4, 0x7f070034

    const v5, 0x7f0b06e3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "24 hour"

    const v4, 0x7f070034

    const v5, 0x7f0b06e3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "date_format"

    const v4, 0x7f070034

    const v5, 0x7f0b06e3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "bugreport"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "local_backup_password"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "keep_screen_on"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "hdcp_checking"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "enforce_read_external"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "enable_adb"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "bugreport_in_power"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "allow_mock_location"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "debug_app"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "wait_for_debugger"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "verify_apps_over_usb"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "show_touches"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "pointer_location"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "debug_layout"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "show_hw_screen_udpates"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "show_hw_layers_udpates"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "show_hw_overdraw"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "show_screen_updates"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "window_animation_scale"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "transition_animation_scale"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "animator_duration_scale"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "disable_overlays"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "force_hw_ui"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "force_msaa"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "overlay_display_devices"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "strict_mode"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "show_cpu_usage"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "track_frame_time"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "enable_opengl_traces"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "enable_traces"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "immediately_destroy_activities"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "app_process_limit"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v2, "show_all_anrs"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v13, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    const-string v0, "ATT"

    const-string v2, "OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "system_update_settings_na_gsm"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    :goto_e
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "status_info"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "container"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "device_name"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "device_model"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "firmware_version"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "baseband_version"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6c
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "kernel_version"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "build_number"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "selinux_status"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_none"

    const v2, 0x7f0700c1

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_biometric_weak"

    const v2, 0x7f0700c1

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_biometric_weak_with_voice"

    const v2, 0x7f0700c1

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_signature"

    const v2, 0x7f0700c1

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_pattern"

    const v2, 0x7f0700c1

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_pin"

    const v2, 0x7f0700c1

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_password"

    const v2, 0x7f0700c1

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unlock_set_off"

    const v2, 0x7f0700c1

    const-string v3, "unlock_set_or_change"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_short_or_camera_widget"

    const v2, 0x7f070070

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_clock_or_myprofile"

    const v2, 0x7f070070

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "dualclock_settings"

    const v2, 0x7f070070

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "clock_size"

    const v2, 0x7f070070

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_date_and_year"

    const v2, 0x7f070070

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "lock_screen_profile"

    const v2, 0x7f070070

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "notification_panel_menu"

    const v2, 0x7f070088

    const-string v3, "notification_panel_edit"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_motion_indicator"

    const v2, 0x7f07000f

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "quick_glance"

    const v2, 0x7f07000f

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_scroll"

    const v2, 0x7f07000f

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_turn"

    const v2, 0x7f07000f

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_move"

    const v2, 0x7f07000f

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "air_call_accept"

    const v2, 0x7f07000f

    const-string v3, "air_motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pick_up_to_call_out"

    const v2, 0x7f07007c

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pick_up"

    const v2, 0x7f07007c

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "tilt"

    const v2, 0x7f07007c

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "pan_to_browse_image"

    const v2, 0x7f07007c

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "turn_over"

    const v2, 0x7f07007c

    const-string v3, "motion"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "palm_swipe"

    const v2, 0x7f070060

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "palm_touch"

    const v2, 0x7f070060

    const-string v3, "surface"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "radio_scroll_mode_0"

    const v2, 0x7f0700d1

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "radio_scroll_mode_1"

    const v2, 0x7f0700d1

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_sensitivity"

    const v2, 0x7f0700d1

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "smart_scroll_visual_feedback_icon"

    const v2, 0x7f0700d1

    const-string v3, "smartscreen_scroll"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_pointer"

    const v2, 0x7f07008d

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_information_preview"

    const v2, 0x7f07008d

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_progress_preview"

    const v2, 0x7f07008d

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_speed_dial_preview"

    const v2, 0x7f07008d

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6d
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_webpage_magnifier"

    const v2, 0x7f07008d

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_icon_label"

    const v2, 0x7f07008d

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_list_scroll"

    const v2, 0x7f07008d

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "key_pen_sound_and_haptic_feedback"

    const v2, 0x7f07008d

    const-string v3, "pen_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "information_preview"

    const v2, 0x7f070056

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "progress_bar_preview"

    const v2, 0x7f070056

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "speed_dial_tip"

    const v2, 0x7f070056

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "magnifier"

    const v2, 0x7f070056

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "sound_and_haptic_feedback"

    const v2, 0x7f070056

    const-string v3, "finger_air_view_option"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "time_and_date"

    const v2, 0x7f0700a5

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "notification"

    const v2, 0x7f0700a5

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "missed_call"

    const v2, 0x7f0700a5

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "unread_message"

    const v2, 0x7f0700a5

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "battery"

    const v2, 0x7f0700a5

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "current_music"

    const v2, 0x7f0700a5

    const-string v3, "quick_glance"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "single_photo_view"

    const v2, 0x7f070012

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "internet_window"

    const v2, 0x7f070012

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "now_playing_on_music"

    const v2, 0x7f070012

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "bgm_on_lock_screen"

    const v2, 0x7f070012

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "note_page_view"

    const v2, 0x7f070012

    const-string v3, "air_turn"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "advanced_air_call_accept_auto_start_speaker"

    const v2, 0x7f0700a8

    const-string v3, "air_call_accept"

    invoke-direct {p0, v1, v2, v11, v3}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_6e
    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v4, "vpn_settings"

    const v5, 0x7f0700fd

    const v6, 0x7f0b06ac

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :catch_3
    move-exception v0

    const-string v0, "SettingsSearchUtils"

    const-string v2, "Cloud package not found"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_6f
    if-eqz v1, :cond_70

    :cond_70
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    const-string v1, "software_update_settings"

    const v2, 0x7f070038

    const v4, 0x7f0b06f1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :catch_4
    move-exception v0

    goto/16 :goto_c

    :catch_5
    move-exception v0

    goto/16 :goto_4
.end method

.method private isSmsSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadMenufromCSCXml()V
    .locals 12

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/setting_search_filter.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v2, Ljava/io/FileReader;

    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/setting_search_filter.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchMenuFilter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v5, :cond_12

    :cond_5
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddMenuList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "SettingsSearchUtils"

    const-string v3, "node name : AddMenu"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_6
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_b

    const/4 v6, 0x3

    if-ne v3, v6, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_b

    :cond_7
    const/4 v6, 0x3

    if-eq v3, v6, :cond_6

    const/4 v6, 0x4

    if-eq v3, v6, :cond_6

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "menuInfo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "xml"

    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_8

    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "id"

    iget-object v11, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v3, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x1

    if-ne v7, v9, :cond_9

    :try_start_7
    iget-object v9, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "id"

    iget-object v11, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_2

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    :try_start_a
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_a
    :goto_7
    throw v0

    :cond_b
    :try_start_c
    const-string v1, "RemoveMenuList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SettingsSearchUtils"

    const-string v1, "node name : RemoveMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    :cond_c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v6, :cond_4

    :cond_d
    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "menuInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v7, "xml"

    iget-object v8, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v0, 0x2

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v0, 0x3

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    if-nez v8, :cond_10

    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v9, "id"

    iget-object v10, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v1, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_e
    :goto_8
    const/4 v3, 0x0

    :goto_9
    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_c

    invoke-direct {p0, v1, v7, v8, v0}, Lcom/android/settings/search/SettingsSearchUtils;->menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;

    move-result-object v9

    invoke-direct {p0, v3, v9}, Lcom/android/settings/search/SettingsSearchUtils;->compareMenuInfoItem(ILcom/android/settings/search/SearchItem$MenuInfoItem;)Z

    move-result v9

    if-eqz v9, :cond_f

    sget-object v9, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x1

    if-ne v8, v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v9, "id"

    iget-object v10, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v0, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    goto :goto_8

    :catch_5
    move-exception v1

    const-string v2, "SettingsSearchUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cscFile IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_6
    move-exception v0

    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_11
    move-object v2, v1

    :cond_12
    if-eqz v2, :cond_2

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const-string v1, "SettingsSearchUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cscFile IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catch_8
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catch_9
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method private menuInfo(Ljava/lang/String;IILjava/lang/String;)Lcom/android/settings/search/SearchItem$MenuInfoItem;
    .locals 1

    new-instance v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem$MenuInfoItem;-><init>()V

    iput-object p1, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->id_key:Ljava/lang/String;

    iput p2, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->fileId:I

    iput p3, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentType:I

    iput-object p4, v0, Lcom/android/settings/search/SearchItem$MenuInfoItem;->parentKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAddSearchMenuInCode()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem;",
            ">;"
        }
    .end annotation

    const-wide/32 v7, 0x7f09101a

    const/4 v6, 0x2

    const/4 v5, 0x0

    const v4, 0x7f0b06ed

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    const-string v2, "LockMyMobile"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    const-wide/32 v2, 0x7f090d0f

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    const-wide/32 v2, 0x7f090d10

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->summaryResId:J

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    iput v6, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    const-string v2, "RemoteControls"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    const-wide/32 v2, 0x7f090cf9

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    iput v5, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "SettingsSearchUtils"

    const-string v2, "SecProductFeature_IMS.SEC_PRODUCT_FEATURE_IMS_TMUS_COMMONIMS_WFC: false"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    const-string v2, "SettingsSearchUtils"

    const-string v3, "change password."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "mPhonePasswordPreference"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    const-wide/32 v2, 0x7f09008b

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    iput v5, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    const-string v2, "SIMAlert"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    const-wide/32 v2, 0x7f090cf3

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    iput v5, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/settings/search/SearchItem;

    invoke-direct {v0}, Lcom/android/settings/search/SearchItem;-><init>()V

    const-string v2, "GoToSamsungDive"

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    const-wide/32 v2, 0x7f090d0e

    iput-wide v2, v0, Lcom/android/settings/search/SearchItem;->titleResId:J

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    iput v5, v0, Lcom/android/settings/search/SearchItem;->menuType:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v2, Lcom/android/settings/search/SearchItem;

    invoke-direct {v2}, Lcom/android/settings/search/SearchItem;-><init>()V

    const-string v0, "note_page_view"

    iput-object v0, v2, Lcom/android/settings/search/SearchItem;->id_key:Ljava/lang/String;

    iput-wide v7, v2, Lcom/android/settings/search/SearchItem;->titleResId:J

    const-wide/32 v3, 0x7f09101e

    iput-wide v3, v2, Lcom/android/settings/search/SearchItem;->summaryResId:J

    const-string v0, "air_turn"

    iput-object v0, v2, Lcom/android/settings/search/SearchItem;->parentsKey:Ljava/lang/String;

    iput v6, v2, Lcom/android/settings/search/SearchItem;->menuType:I

    const-string v0, "com.samsung.android.snote"

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/search/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "SettingsSearchUtils"

    const-string v3, "S note is Installed."

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v3, 0x7f09101c

    iput-wide v3, v2, Lcom/android/settings/search/SearchItem;->titleResId:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_4
    const-wide/32 v3, 0x7f09101a

    :try_start_1
    iput-wide v3, v2, Lcom/android/settings/search/SearchItem;->titleResId:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "SettingsSearchUtils"

    const-string v3, "S note is NOT Installed"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSearchMenuInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/search/SearchItem$MenuInfoItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SettingsSearchUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMenuInfoItem count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/search/SettingsSearchUtils;->mMenuInfoItem:Ljava/util/ArrayList;

    return-object v0
.end method
