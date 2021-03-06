.class public Lcom/android/mms/ui/AddTextSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AddTextSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    const/16 v13, 0x10

    const/16 v12, 0xf

    const/16 v11, 0xd

    const v10, 0x7f0c016f

    const/16 v9, 0xa

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCalendar()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.calendar"

    const v1, 0x7f0c011f

    invoke-static {p0, v0, v2, v13, v1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVMemo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "com.samsung.android.app.memo"

    const/16 v3, 0x11

    const v4, 0x7f0c0120

    const v5, 0x7f02012b

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)Z

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVTask()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.task"

    const/16 v1, 0x12

    const v3, 0x7f0c016e

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMemo()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.PENMEMO_ATTACH"

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    const/16 v1, 0xb

    const v3, 0x7f0c0199

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSNote()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.sec.android.app.snotebook"

    const v1, 0x7f0c019a

    invoke-static {p0, v0, v2, v11, v1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.android.snote"

    const v1, 0x7f0c019a

    invoke-static {p0, v0, v2, v11, v1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScrapbook()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.samsung.android.app.pinboard"

    const/16 v1, 0x16

    const v3, 0x7f0c04d9

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.calendar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    const-string v0, "com.android.calendar"

    if-eqz v8, :cond_a

    :goto_1
    invoke-static {p0, v0, v2, v13, v8}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Z

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocation()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "com.google.android.apps.maps"

    invoke-static {p0, v0, v2, v9, v10}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBaiduMapLocation()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "com.baidu.BaiduMap"

    invoke-static {p0, v0, v2, v9, v10}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    const-string v0, "com.baidu.BaiduMap.samsung"

    invoke-static {p0, v0, v2, v9, v10}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVCard()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    sget-object v0, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    const v1, 0x7f0c011e

    invoke-static {p0, v0, v2, v12, v1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    :cond_9
    :goto_2
    const v0, 0x7f0c0216

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02012f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x13

    invoke-static {v2, v0, v1, v3}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object v2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_a
    const v1, 0x7f0c0196

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_b
    const-string v0, "com.android.contacts"

    const v1, 0x7f0c011e

    invoke-static {p0, v0, v2, v12, v1}, Lcom/android/mms/ui/AddTextSelectorAdapter;->addEnabledPackageItem(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;II)Z

    goto :goto_2
.end method
