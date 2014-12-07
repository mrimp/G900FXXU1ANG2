.class public Lcom/android/services/telephony/common/PhoneFeature;
.super Ljava/lang/Object;
.source "PhoneFeature.java"


# static fields
.field private static baseband:Ljava/lang/String;

.field private static buildcarrier:Ljava/lang/String;

.field private static countryiso_code:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static language:Ljava/lang/String;

.field private static mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private static mContext:Landroid/content/Context;

.field private static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static platform:Ljava/lang/String;

.field private static product_device:Ljava/lang/String;

.field private static salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    const-string v0, "persist.sys.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->language:Ljava/lang/String;

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    const-string v0, "ro.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->product_device:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDBGLevel()I
    .locals 3

    const/4 v0, 0x2

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "espressorf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "espresso10rf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static hasCallPoseFeature(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/services/telephony/common/PhoneFeature;->hasSensorHub(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "meliusca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "melius3gduosctc"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static hasIlluminanceSensor()Z
    .locals 6

    const/4 v4, 0x0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/4 v5, 0x5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public static hasMultiWindwoFeature()Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasProximitySensor()Z
    .locals 6

    const/4 v4, 0x0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/16 v5, 0x8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public static hasPutUpDownMotionFeature(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/services/telephony/common/PhoneFeature;->hasSensorHub(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "meliusca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "meliusca"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public static hasRCSBlackBird()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v1, "PARTIAL_BRANDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "FULL_BRANDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static hasSNote()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v0, "com.sec.android.app.snotebook"

    :try_start_0
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v6, "com.sec.android.app.snotebook"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    move v3, v5

    goto :goto_0

    :catch_1
    move-exception v1

    move v3, v5

    goto :goto_0
.end method

.method public static hasSensorHub(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static hasVibratorFeature()Z
    .locals 4

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static hasVisualVoicemail()Z
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "com.coremobility.app.vnotes"

    const-string v5, "com.coremobility.app.vnotes"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean v4, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isHProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isJProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ja3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jalte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jactivelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isKProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "klte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "k3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isM_or_T0Project()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "m0xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "m0ub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "m3xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "t03g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "t0lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isPreviousThanJProject()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "m0xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "m0ub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "expresslte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeFeature(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;

    sput-object p0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makePreconditionForFeature()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForCommon()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForTablet()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForHKTW()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForCanada()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForKor()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForJapan()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForChina()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForUsa()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForCamera()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForLatin()V

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForAustralia()V

    return-void
.end method

.method public static makeFeatureForAustralia()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigPrivacyPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "video_call_remove_record_button"

    const-string v3, "record,capture"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static makeFeatureForCamera()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "mproject3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "disable_direct_photo_share"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "direct_photo_share"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "direct_photo_share_for_patent_avoidance"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static makeFeatureForCanada()V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "d2vl"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "d2ub"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "d2vw"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "comanchevl"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t0ltevl"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t0lteub"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t0ltevw"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I727R"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I757M"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I717R"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I717D"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-I717M"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SGH-T989D"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltevw"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltewx"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jfltevl"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jflteub"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meliusltevl"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hltevl"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kltevl"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "d2vw"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "jfltevw"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jfltewx"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    :goto_2
    if-nez v0, :cond_6

    :goto_3
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_mode_list_lte"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "callforwarding_popup_in_can"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_7
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "callforwarding_disable_in_flight_mode"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_8
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "networksearching_in_can"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "networkmode_in_can"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "end_call_two_button"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "video_call_disable"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "beep_vibration_for_ussd"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_can"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "hac_enable"

    const-string v4, "hltevl"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "kltevl"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_b
    move v0, v1

    goto/16 :goto_4

    :cond_c
    move v0, v1

    goto :goto_5

    :cond_d
    move v0, v1

    goto :goto_6
.end method

.method public static makeFeatureForChina()V
    .locals 14

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "ro.multisim.simslotcount"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v1, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ironzn"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ironzm"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v4, "duoszn"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v4, "duoszc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v4, "duoszm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "CHN"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHU"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CTC"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHM"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHC"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "CTC"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ctc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v1

    :goto_4
    if-nez v0, :cond_9

    :goto_5
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    const-string v0, "CHN"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "CHU"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "CHM"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "CHC"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_a
    move v0, v1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v0, "CHM"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CHC"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CMCC"

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_b
    move v0, v1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v0, "CHU"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "CU"

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_c
    move v0, v1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v11, "duosctc"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "m0grandectc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "t03gctc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "kyleplus3gctc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "montblanc3gfacchnctc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->product_device:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "hltefacchnctc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->product_device:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "crater3gctc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "montblanc3gctc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "delos3gviactc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ms013gctc"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_d
    move v0, v1

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "feature_chn"

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "disable_format_number"

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "hide_caller_id"

    invoke-virtual {v0, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "geo_description_disable"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "video_call_disable"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_e
    move v0, v1

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "voice_call_recording"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "aruba3gduosctc"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "kyleplusctc"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "cs02ve3gctc"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "infinite3gduosctc"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "baffin3gduosctc"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "delos3gduosctc"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "disable_sip_call_setting"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ip_call"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ip_call_cmcc"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ip_call_gsm"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_redial_time_delay"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_adjust_camera_contrast_brightness"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_adjust_screen_brightness"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_audio_mixed_recording"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_multimedia_ringback_tone_timer"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_operator_open_close_camera"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_accept_by_voicecall"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_operator_fallback"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_display_start_call_time"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "preferred_networks"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "network_mode_list_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_f
    move v0, v1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "display_network_forbidden_information"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_call_duration_information"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "call_block_ui"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "voice_privacy_enable"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "phone_number_locator"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_charges_notification_in_pnl"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ctc_voicecall_additional_setting"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "cdma_call_forwarding_indicator"

    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_ctc"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ctc_call_time_duration"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ctc_dual_mode"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_10
    move v0, v1

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ctc_dual_mode_single_phone_byqc"

    const-string v0, "kyleplusctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "lt023gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "cs02ve3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_11
    move v0, v1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_chn_dual_mode"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_12
    move v0, v1

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_chn_dual_mode_cdma_gsm"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_chn_dual_mode_gsm_gsm"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_chn_duos"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_13
    move v0, v1

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_chn_duos_cdma_gsm"

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_chn_duos_gsm_gsm"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "number_of_select_icon_is_9"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_14
    move v0, v1

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_chn_dual_mode_with_one_ril"

    const-string v7, "t03gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ctc_vip_mode"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "aruba3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "kyleplusctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "cs02ve3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "infinite3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "ms013gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v1

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_15
    move v0, v1

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ctc_roamingcall"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ctc_cdma_smc_fac_req"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "no_alert_tone_signal"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "remove_network_mode"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "u0ltezc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_16
    const-string v0, "t0ltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "t0voltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "cs03ltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "hltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "kltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "display_tdscdma_instead_of_wcdma"

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "lawmo_lock"

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_lunar_birthday"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_china_lunar"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "play_media_tone_via_bt"

    const-string v7, "aruba3gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "alert_in_call_use_ipc"

    const-string v0, "aruba3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "infinite3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "baffin3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "delos3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_17
    move v0, v1

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "end_call_two_button"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3b

    move v0, v1

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_button_sound_effects"

    const-string v0, "aruba3gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "delos3gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_18
    move v0, v1

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lt023gctc"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "kyleplusctc"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "cs02ve3gctc"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_disable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "allow_select_network_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_wake_lock_during_call_recording"

    const-string v0, "kylepluszc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "aruba3gzc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "aruba3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "nevis3gzc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "delos3gzc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_1b
    move v0, v1

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "write_call_state"

    const-string v7, "aruba3gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "no_proximity_sensor"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasProximitySensor()Z

    move-result v0

    if-nez v0, :cond_3e

    move v0, v1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "reject_call_with_message_icon_mode"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "voice_call_recording_second_call_ongoing"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "voice_call_recording_easy_mode"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_chn_duos_support_cgg"

    const-string v0, "melius3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "h3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "k3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_1c
    move v0, v1

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_chn_cgg_sndpath_change"

    const-string v0, "melius3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "h3gduosctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_1d
    move v0, v1

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "network_mode_tdlte"

    const-string v0, "t0ltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "t0voltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "cs03ltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "hltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "kltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_1e
    move v0, v1

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_sglte"

    const-string v0, "t0ltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "t0voltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "cs03ltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "hltezm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_1f
    move v0, v1

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "vt_audio_mixed_recording_via_stack"

    const-string v0, "ms013gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "melius3gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "delos3gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "cratertd3gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "baffinvetd3gzm"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "h3gzm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_20
    move v0, v1

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ctc_country_code_locator"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "delay_switch_speaker_during_call"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "baffinvetd3g"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "play_emergency_dialer_key_tone"

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vikal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_21
    move v0, v1

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "emergency_dialer_sound_pool_tones_haptic"

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vikal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v1

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ctc_esurfing_dial_up"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_wvga"

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vikal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_22
    move v0, v1

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_focused_button"

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vikal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_23
    move v0, v1

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "answer_call_folder_opened"

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vikal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_24
    move v0, v1

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "end_call_folder_closed"

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vikal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_25
    move v0, v1

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "activate_proximity_sensor_folder_opened"

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vikal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_26
    move v0, v1

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "support_folder_hardkey"

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vikal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_27
    move v0, v1

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "hold_key_end_call"

    const-string v0, "montblanc3gctc"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "vikal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_28
    move v0, v1

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "separate_call_forwarding_notification"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4d

    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_29

    const-string v6, "sec_product_feature_common_dsds_support"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_29

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4d

    :cond_29
    :goto_29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_call_forwarding_query_after_boot"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "yellowpage_callerid_info"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "chn_waiting_notchange_incoming"

    const-string v2, "k3gduosctc"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "FlatRateAlertActivity_delay_in_wifi"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2a
    move v0, v2

    goto/16 :goto_6

    :cond_2b
    move v0, v2

    goto/16 :goto_7

    :cond_2c
    move v0, v2

    goto/16 :goto_8

    :cond_2d
    move v0, v2

    goto/16 :goto_9

    :cond_2e
    move v0, v2

    goto/16 :goto_a

    :cond_2f
    move v0, v2

    goto/16 :goto_b

    :cond_30
    move v0, v2

    goto/16 :goto_c

    :cond_31
    move v0, v2

    goto/16 :goto_d

    :cond_32
    move v0, v2

    goto/16 :goto_e

    :cond_33
    move v0, v2

    goto/16 :goto_f

    :cond_34
    move v0, v2

    goto/16 :goto_10

    :cond_35
    move v0, v2

    goto/16 :goto_11

    :cond_36
    move v0, v2

    goto/16 :goto_12

    :cond_37
    move v0, v2

    goto/16 :goto_13

    :cond_38
    move v0, v2

    goto/16 :goto_14

    :cond_39
    move v0, v2

    goto/16 :goto_15

    :cond_3a
    move v0, v2

    goto/16 :goto_16

    :cond_3b
    move v0, v2

    goto/16 :goto_17

    :cond_3c
    move v0, v2

    goto/16 :goto_18

    :cond_3d
    move v0, v2

    goto/16 :goto_19

    :cond_3e
    move v0, v2

    goto/16 :goto_1a

    :cond_3f
    move v0, v2

    goto/16 :goto_1b

    :cond_40
    move v0, v2

    goto/16 :goto_1c

    :cond_41
    move v0, v2

    goto/16 :goto_1d

    :cond_42
    move v0, v2

    goto/16 :goto_1e

    :cond_43
    move v0, v2

    goto/16 :goto_1f

    :cond_44
    move v0, v2

    goto/16 :goto_20

    :cond_45
    move v0, v2

    goto/16 :goto_21

    :cond_46
    move v0, v2

    goto/16 :goto_22

    :cond_47
    move v0, v2

    goto/16 :goto_23

    :cond_48
    move v0, v2

    goto/16 :goto_24

    :cond_49
    move v0, v2

    goto/16 :goto_25

    :cond_4a
    move v0, v2

    goto/16 :goto_26

    :cond_4b
    move v0, v2

    goto/16 :goto_27

    :cond_4c
    move v0, v2

    goto/16 :goto_28

    :cond_4d
    move v1, v2

    goto/16 :goto_29
.end method

.method public static makeFeatureForCommon()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "m3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "t0lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "p4notelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "baffinlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "expressltexx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "ks01lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "meliusca"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "jftddxx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kcat6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "kltedd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "GT-I9100M"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "stop_signal_info_tone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "gesture_callaccept"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_format_number"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_data_usage"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "ms013gxx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_conference_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "display_busy_picture"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "call_icon_display_in_call_screen"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_call_transfer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_merge_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "fdn_contact_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_SearchIncludingFdn"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "write_sleep_checking_file"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v7, "exynos"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v7, "msm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "write_hard_key_reset_file"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v7, "exynos"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v7, "msm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "display_additional_caller_info"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "answering_ending_call_on"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "cane3g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "raft"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ssc_antenna_solution"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_EnableSSC"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ssc_antenna_solution_qualcomm_ril"

    const-string v6, "jfltexx"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "keyboard_open_spk_on"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "koeno_takuhaibin_number"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_subaddress_settings"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_additional_settings"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "fdn_button_call"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_EnableCallButtonInFdnList"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_global_lte_gsm"

    const-string v6, "viennaltevzw"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_not_support_gsm"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "u0lte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_network_mode_wcdma_only"

    const-string v6, "wcdmaonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_network_mode_gsm_only"

    const-string v6, "gsmonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_network_mode_lte"

    const-string v6, "lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "bootup_data_connection_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_EnableDataServicePopup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "bootup_data_tariff_rate_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Settig_EnableDataTariffWizard"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "national_roaming_mode_menu"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_EnableDataRoamingMenuInDetail"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "national_roaming_mode_menu_play"

    const-string v0, "PRT"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "XEO"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_4
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "data_roaming_option_national"

    const-string v6, "national"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "data_roaming_option_all"

    const-string v6, "all"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "data_roaming_noti_tray"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_EnableDataRoamingButtonInQuickPanel"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_list_lte"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_orange"

    const-string v5, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_numeric"

    const-string v5, "NUMERIC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cust_network_sel_menu4_vodafone"

    const-string v0, "VODAFONE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "RWC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_5
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_atl_lte"

    const-string v5, "ATL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_yog"

    const-string v5, "YOG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_o2"

    const-string v5, "O2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "cust_network_sel_menu4_addauto"

    const-string v0, "OLB"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ADDAUTO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TGY"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "BMC"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TLS"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "RWC"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_6
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_lteonly"

    const-string v5, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "cust_network_sel_menu4_lteready"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_NotiLteAvailableStatus"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_selection_delay"

    const-string v0, "hltexx"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ha3gxx"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "hltevj"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ha3gub"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ha3gzs"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "hltezh"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ja3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "cs023g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "wilcoxdsxx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lt03"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "m0xx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_7
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_state_manual_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ManualSearchListWithDetailStatus"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "noise_suppression"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_noise_reduction_in_wbamr"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_noise_reduction"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "noise_suppression_support_speaker"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mysound_nbcall_only"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mysound_music_only"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "nextwork_mute_on_ringbacktone"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "loganltexx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "loganltevj"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "loganlteub"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_8
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "maxvolume_headset_vibration"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "kona3g"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "qualcomm_ril"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->platform:Ljava/lang/String;

    const-string v6, "msm"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "audio_separate_ringback_gain"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "btn_on_off_delay"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "separate_call_reject"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableSeparateCallReject"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "keypad_type_to_phone_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_KeypadTypeToDigit4UssdInput"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disappear_ussd_cancel_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableUssdCancelPopup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "beep_vibration_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableBeepVibration4UssdAlert"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_vm_in_callforwarding"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableVmsNumberAsDefaultInCallForwarding"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_ringtone_keytone"

    const-string v0, "kyleplusctc"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "cs02ve3gctc"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_9
    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_display_voicemail_keypad"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_RemoveKeypadDuringVmsCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "personal_vibration"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVibratorFeature()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "prevent_duplicated_popup_msg"

    const-string v0, "INU"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "INS"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "lt033gzs"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "lt03ltezh"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_a
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "barge_in"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-boolean v5, v5, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ring_mute_during_barge_in"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_ltn_auto_csp"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_VoiceCall_EnablePrefix4LongDistanceCallAs"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_32

    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_ltn_sdnname_display"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableDisplaySdnNameDuringCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_sip_call_setting"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_DisableMenuInternetCallSetting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_detail_call_end_reason"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_ltn_callerid_matching"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "config_exception_data_roaming_noti"

    const-string v5, "All"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ConfigExceptionDataRoamingNoti"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs_bb"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasRCSBlackBird()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ringtone_escalating"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer_default_on"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_update_bt_connecting"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableAutoAnswerInSilentNEarjactMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_display_vmtelnum_duringcall"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableDisplayVMTelNumDuringCall"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "order_neg_pos_buttons"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "allow_select_network_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vi_animation"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "reject_call_with_message_send_button_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "data_enable_on_destroy"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ecbm_emergency_calls_only_enable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_memo_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_message_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_contact_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_edit_callerid"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableEditingCallerID"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_dormant_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "service_memo_during_call"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lt03"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "hlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "GT-I9220"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "p4note"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t03g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t0lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "kona"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "GT-N7000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "SHV-E160"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "SGH-I717"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "vienna3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "viennalte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_b
    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_remind_me_later_support "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_network_mode"

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "gd1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "u0ltexw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_c
    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "move_incomingcallwidget_touch_area"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t03g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t0lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_d
    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "force_display_endcall_screen"

    const-string v0, "t0lteuc"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "d2lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "d2uc"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jfltevl"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "t03gxx"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "m0ub"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_e
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "force_turn_on_screen_for_new_incoming"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_onehand_operation"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_onehand_any_screen"

    const-string v5, "support_onehand_operation"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_mobile_data_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "geo_description_disable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mmi_complete_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableUssdCompleteNoti"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "change_ussd_popup_lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_UseUssdToastForNetworkNoResp"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "voice_call_recording"

    const-string v6, "RecordingAllowed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "add_panel"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_contacts"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hw_home_key"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1110048

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "powey_key_ends_call_during_screen_off"

    const-string v5, "hw_home_key"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_volume"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "show_extra_volume_in_call_card"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_theme_feature_support"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "GT-I9070"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_camera_effect_feature_support"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "trlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "trhlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "klte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "k3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_f
    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "play_ring_during_video_recording"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "kltedd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_audio_processing_on_ap"

    const-string v6, "msm8960"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "montblanc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_10
    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_dual_camera"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ja3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jflte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "hlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jftdd"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ks01lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "klte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "k3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_11
    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_camera_firmware_update_check_popup"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_camera_init_noise_reduction"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "mproject"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "mprojectqlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_12
    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "use_snote_string"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t03g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "t0lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasSNote()Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_13
    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "use_action_memo_string"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "hlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lt03lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lt033g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_14
    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_vau"

    const-string v5, "VAU"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_can_bmc"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "video_call_remove_record_button"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "video_call_msm8974_ringbacktone_enable"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_15
    move v0, v2

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "video_call_audio_focus_enable"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_16
    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "proximity_sensor_control_by_keypad"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "Enable_OrangePopup_DataOnlyModel"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_EnableWizard1stCall4Tablet"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_marvell_dsds"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_preferred_sim_card_dsds"

    const-string v4, "feature_marvell_dsds"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "caller_animation_small_images"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "jactivelte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "meliusca"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "flte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_17
    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_easy_mode"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isPreviousThanJProject()Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "t0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "d2"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "clear_cover"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "meliusca"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "serrano"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "melius"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "flte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_18
    move v0, v2

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "clear_cover_enhanced"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "flte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_19
    move v0, v2

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "clear_cover_with_proximity"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "clear_cover_not_support_end_call"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "melius"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "serrano"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_1a
    move v0, v2

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "emergency_contacts_item"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isPreviousThanJProject()Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "sstream_voice_call_enable"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt033g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_1b
    move v0, v2

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ssuport_hand_adapt_operation"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_1c
    move v0, v2

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "minute_minder_noti"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_1d
    move v0, v2

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enhanced_driving_mode"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ks01lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "meliusca"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "cane"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_1e
    move v0, v2

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.product.model"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SGH-T999V"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_d2_vtr"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "video_call_disable"

    const-string v0, "GT-I9210"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    move v0, v1

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "end_call_two_button"

    const-string v0, "GT-I9210"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    move v0, v1

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_sec_lock_screen"

    const-string v4, "nevis3gzc"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "acrodea_avatar"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "common_volte"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "common_volte_vt"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_volte_emergency_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "common_volte_in"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "INU"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v2

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "add_vt_hold_in_menu"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "INU"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v2

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "accept_vt_by_button"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enable_volte_hold_tone"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "INU"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "SIN"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "STH"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "XSP"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    move v0, v2

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_additional_ss_query"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "SIN"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v2

    :goto_29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_via"

    const-string v4, "VIA"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "default_volte"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "feature_via"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v2

    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SIN"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "sin_volte_ui"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    if-eqz v0, :cond_52

    move v0, v2

    :goto_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ril_network_on"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "voip_interworking"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "waiting_call_option_hold"

    const-string v4, "hold"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "waiting_call_option_end"

    const-string v4, "end"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "waiting_call_option_invisible"

    const-string v0, "waiting_call_option_hold"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "waiting_call_option_end"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_1f
    move v0, v2

    :goto_2c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "turn_on_speaker_by_proxisensor"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "send_missedcall_id_to_other_device"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "sec_bt_at_command"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "not_foreground_but_update_incallscreen"

    const-string v4, "goldenltebmc"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_callscreen_for_dualsim"

    const-string v4, "wilcoxdsxx"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "samsung_screen_timeout_incall"

    const-string v0, "goldenltebmc"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "serranoltebmc"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_20
    move v0, v2

    :goto_2d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_dongle_function"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "not_support_vt_multiwindow"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasMultiWindwoFeature()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isM_or_T0Project()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_21
    move v0, v2

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_incomingcall_multi_window"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasMultiWindwoFeature()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "js01ltedcm"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_22
    move v0, v2

    :goto_2f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_incomingcall_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_EnableIncomingcallPopup"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "show_icc_ndp"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_integrator_haptic"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_usb30_on_e911"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_23
    move v0, v2

    :goto_30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "update_user_data_diff_name"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_24
    move v0, v2

    :goto_31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_incomingcall_penwindow"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_vtincomingcall_penwindow"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "fixing_lcd_brightness"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim_profile"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim_enable_dynamic"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim_ver2"

    const-string v4, "V2"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_multisim_ver3"

    const-string v4, "V3"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "separate_call_forwarding_notification"

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "sec_product_feature_common_dsds_support"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_25
    move v0, v2

    :goto_32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_safetycare"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_ConfigNetworkModeDuringEmergency"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_safetycare_not_change_network_mode"

    const-string v5, "support_safetycare"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    const-string v5, "NOCHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move v0, v2

    :goto_33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_incoming_call_popup_during_camera"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v0, v5, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5b

    move v0, v2

    :goto_34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_drive_link"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "bring_the_device_to_ear_to_accept"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "side_touch_grip_function"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.sidetouch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "onscreen_manage_conference"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "webex_ui"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "flash_notification"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_popupmsg_when_deactivationcf"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_DisablePopupMsgWhenDeactivatingCallForwarding"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_incomingcall_popup"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_caller_information"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "early_service_binding"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_27
    move v0, v1

    goto/16 :goto_0

    :cond_28
    move v0, v1

    goto/16 :goto_1

    :cond_29
    move v0, v1

    goto/16 :goto_2

    :cond_2a
    move v0, v1

    goto/16 :goto_3

    :cond_2b
    move v0, v1

    goto/16 :goto_4

    :cond_2c
    move v0, v1

    goto/16 :goto_5

    :cond_2d
    move v0, v1

    goto/16 :goto_6

    :cond_2e
    move v0, v1

    goto/16 :goto_7

    :cond_2f
    move v0, v1

    goto/16 :goto_8

    :cond_30
    move v0, v1

    goto/16 :goto_9

    :cond_31
    move v0, v1

    goto/16 :goto_a

    :cond_32
    move v0, v1

    goto/16 :goto_b

    :cond_33
    move v0, v1

    goto/16 :goto_c

    :cond_34
    move v0, v1

    goto/16 :goto_d

    :cond_35
    move v0, v1

    goto/16 :goto_e

    :cond_36
    move v0, v1

    goto/16 :goto_f

    :cond_37
    move v0, v1

    goto/16 :goto_10

    :cond_38
    move v0, v1

    goto/16 :goto_11

    :cond_39
    move v0, v1

    goto/16 :goto_12

    :cond_3a
    move v0, v1

    goto/16 :goto_13

    :cond_3b
    move v0, v1

    goto/16 :goto_14

    :cond_3c
    move v0, v1

    goto/16 :goto_15

    :cond_3d
    move v0, v1

    goto/16 :goto_16

    :cond_3e
    move v0, v1

    goto/16 :goto_17

    :cond_3f
    move v0, v1

    goto/16 :goto_18

    :cond_40
    move v0, v1

    goto/16 :goto_19

    :cond_41
    move v0, v1

    goto/16 :goto_1a

    :cond_42
    move v0, v1

    goto/16 :goto_1b

    :cond_43
    move v0, v1

    goto/16 :goto_1c

    :cond_44
    move v0, v1

    goto/16 :goto_1d

    :cond_45
    move v0, v1

    goto/16 :goto_1e

    :cond_46
    move v0, v1

    goto/16 :goto_1f

    :cond_47
    move v0, v1

    goto/16 :goto_20

    :cond_48
    move v0, v1

    goto/16 :goto_21

    :cond_49
    move v0, v1

    goto/16 :goto_22

    :cond_4a
    move v0, v1

    goto/16 :goto_23

    :cond_4b
    move v0, v2

    goto/16 :goto_24

    :cond_4c
    move v0, v2

    goto/16 :goto_25

    :cond_4d
    move v0, v1

    goto/16 :goto_26

    :cond_4e
    move v0, v1

    goto/16 :goto_27

    :cond_4f
    move v0, v1

    goto/16 :goto_28

    :cond_50
    move v0, v1

    goto/16 :goto_29

    :cond_51
    move v0, v1

    goto/16 :goto_2a

    :cond_52
    move v0, v1

    goto/16 :goto_2b

    :cond_53
    move v0, v1

    goto/16 :goto_2c

    :cond_54
    move v0, v1

    goto/16 :goto_2d

    :cond_55
    move v0, v1

    goto/16 :goto_2e

    :cond_56
    move v0, v1

    goto/16 :goto_2f

    :cond_57
    move v0, v1

    goto/16 :goto_30

    :cond_58
    move v0, v1

    goto/16 :goto_31

    :cond_59
    move v0, v1

    goto/16 :goto_32

    :cond_5a
    move v0, v1

    goto/16 :goto_33

    :cond_5b
    move v0, v1

    goto/16 :goto_34
.end method

.method public static makeFeatureForHKTW()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "TGY"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BRI"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CWT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TWN"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FET"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ZZH"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_hktw"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "TGY"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_format_number"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "remove_network_mode"

    const-string v2, "u0ltezt"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "extra_ringer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_format_number"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static makeFeatureForJapan()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, ""

    const-string v3, "JPN"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "nck_block_feature"

    const-string v4, "DCM"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    const-string v3, "DCM"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, ""

    const-string v4, "KDI"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, ""

    const-string v5, "SBM"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_dcm_u1"

    const-string v7, "SC-02C"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_dcm"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_kdi"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_sbm"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_jpn"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "bt_menu_in_easy_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voice_call_recording"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voice_call_recording_menu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voice_call_recording_easy_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "network_mode_list_dcm"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_change_data_enable_func"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_data_enable_on_destroy"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_contacts_item_popup"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_contacts"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "Emergency_dialer_expandable_dial"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_safetycare_not_change_network_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_additional_call_setting_for_kor"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "cdma_apn_enable"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hide_FDN"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hide_call_barring"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_voicemail_category"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_call_forwarding"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hide_caller_id"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "international_dial_assist"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voicemail_roaming_number"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "voicemail_notification_setting"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_callsettings_menu"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_jcontacts_package_name"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_dsac_feature"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_callwait_tone_long_feature"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_prohibit_secondcall_in_emergency"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_disable_call_hold_in_emergency"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_start_search_delay"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_manual_select_delay"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_show_separated_network_list"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_forbidden_network_show"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_reject_call_msg_limit"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_not_support_extra_calllog_type"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_parse_network_service_ussd"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_hangup_ipc_in_auto_reject"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_display_voicemail_keypad"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_disable_block_reject_call"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_end_call_time_blink_extension"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "close_system_dialog_in_call"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "disable_sip_call_setting"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "video_call_disable"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "end_call_two_button"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_4
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "automatic_answering_machine"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "airplain_mode_jpn"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_6
    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_reject_message"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_fwim"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_awim"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "cnap_text_for_smc_test"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "kdi_show_separated_network_list"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_3lm"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "toddler_mode_jpn"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_conference_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_merge_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_list_dcm_lte"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_list_dcm_lte_3g"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "change_network_mode_ui"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "check_enable_block_apn_change"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "dcm_emergency_conflict"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "in_call_menu_memo_enable"

    const-string v0, ""

    const-string v7, "JS01LTEDCM"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_incomingcall_popup"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_caller_information"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_volte_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "video_call_disable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_call_two_button"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "video_call_downgrade_qcif"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "video_call_downgrade_qvga"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "dcm_video_call_settings"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ims_ps_barring"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "updated_calling_name_presentation"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "update_user_data_diff_name"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "no_alert_tone_signal"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "network_mode_list_kdi"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "network_mode_async_modem_kdi"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "network_mode_list_dcm_lte_3g"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_3

    :cond_c
    move v0, v1

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_6
.end method

.method public static makeFeatureForKor()V
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "SKT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKC"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKO"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v0, "KTT"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTO"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "LGT"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LUC"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LUO"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "ANY"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KOO"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_5
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_skt"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_ktt"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_lgt"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor_open"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_conference_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_busy_picture"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_merge_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_noise_reduction"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "stop_signal_info_tone"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "update_user_data_diff_name"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "early_service_binding"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "geo_description_disable"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "play_local_dtmf_tones"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "dtmf_smaller_hit_target"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "restore_spk_unplugged_dock"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "check_ringtone_repeat"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hide_FDN"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hide_call_barring"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_voicemail_category"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "voice_call_recording_easy_mode"

    const-string v9, "voice_call_recording"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_additional_call_setting_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_call_forwarding"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_sip_call_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "set_world_phone_option_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_alerting_title"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_logs_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "notify_audio_reset"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "implicit_network_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "custom_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_mm_audio"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_bluetooth"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_a2dp_suspend_bluetooth"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_bluetooth_dim"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "sec_korea_bluetooth_check_mono_stereo"

    const-string v0, "SHV-E110S"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "SHV-E120"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "SHV-E160"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_f
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "acquire_proximity_sensor_ui_showing"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "restrict_international_call"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "extended_restrict_international_call"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "international_call_service"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_reject_message_limit"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "rearrange_preset_image_setting"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "modify_reject_message"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mics_kor_common"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "restructure_call_settings"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "roaming_auto_dial"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_dialpad_digits"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "force_display_endcall_screen"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "force_display_incall_screen"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_listen_mwi_cfi"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "limited_service_state"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_lunar_birthday"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_korea_lunar"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "bt_menu_in_easy_mode"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "menu_message"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "optis_command_test"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sms_pattern_lock_message"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "separate_connect_tone"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "use_situation_gain_for_ringbacktones"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "remove_vt_call_setting_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "add_common_vt_call_setting_for_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_store_ns_pref"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "not_reset_spk_during_ps_call"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ota_mode_disable_expand"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "period_mark_animation"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_button_bt_touch_sound"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_one_touch_report"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_emergency_report_helper_app"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "audio_separate_dtmf_tone"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "change_order_of_endcall_buttons"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_redial_by_hardkey"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_10
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "answer_call_folder_opened"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_11
    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "end_call_folder_closed"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_12
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "activate_proximity_sensor_folder_opened"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_13
    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "answering_call_in_external_screen"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_14
    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "reject_call_folder_closed"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_15
    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "play_emergency_dialer_key_tone"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_16
    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_focused_button"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_17
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "turn_off_screen_folder_closed"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_18
    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_button_sound_effects_noise_reduction"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_button_sound_effects_extra_volume"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "data_popup_using_data_hotkey"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_19
    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "hold_key_end_call"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_1a
    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "enlarge_end_call_button_text"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_1b
    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "disable_call_in_external_screen"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks023g"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks02lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_1c
    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_direct_photo_share"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "disable_camera_in_call"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "mprojectlte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cnap_supplementary_service"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "display_hd_icon"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "popup_caller_info_wide_height"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "caller_info_large_text_size"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_cover_check_fragment"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_for_cyber_terror"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cdnip_supplementary_service"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "custom_waiting_tone"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "auto_call_test"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "waiting_call_end_tone"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_unhold"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_1d
    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_find_lost_phone"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "emergency_find_lost_phone_plus"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "klte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "kqlte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_1e
    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "alerting_occurs_twice"

    const-string v9, "m0skt"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cancel_timeout_pending_mmi_request"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_waiting_tone"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_kt_spider"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_KTSpider_UseSpiderFeature"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_lgt_multi_call"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "apn_setting_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "ks01lte"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v10, "meliusca"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    :cond_1f
    move v0, v2

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "sec_korea_lgu_bluetooth"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "network_mode_for_lte_kor_open"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "kor_qc_cs_vt"

    const-string v0, "jaguark"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "SHV-E120K"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "SHV-E160K"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "d2ktt"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "ks023gskt"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "ks023gktt"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_20
    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "kor_cs_vt"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_21
    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "kor_cs_vt_ui"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_22
    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "kor_cs_vt_network_operator"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_23
    move v0, v2

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "emergency_vtcall"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    :cond_24
    move v0, v2

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    :cond_25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_kor"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_vt"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte_vt_kor"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "single_lte"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_add_call_for_volte"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "service_mirrorcall"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_voice_ringforme"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "try_to_regi_ims"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v2

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "enable_volte_hold_tone"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hd_voice_network_prefer"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "interworking_hd_voice_by_intent"

    const-string v8, "hd_voice_network_prefer"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_ps_barring"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v2

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_voice_busy_tone_play"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v2

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_video_call_mediashare"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_ui_for_kor"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v2

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_auto_call_test"

    const-string v0, "eng"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "common_volte_vt_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v2

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_call_message"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    :cond_26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_folder_device"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "ks02lte"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_conference_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_voice_conference"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_handle_sip_error_code"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_video_settings_initial_speaker"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_27
    move v0, v2

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_uwa"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_resize_screen"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    move v0, v2

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_video_default_speaker_mode"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v2

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_video_end_call_screen"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v2

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_video_camera_effect"

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_28

    :cond_28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "block_data_during_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "rearrange_search_contact_image"

    const-string v0, "jaguars"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "jaguark"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "jaguarl"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_29
    move v0, v2

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "restricted_call_for_qc_issue"

    const-string v0, "SHV-E110S"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E120"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "SHV-E160"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_2a
    move v0, v2

    :goto_29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "delay_hangup_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "increase_dtmf_tone_headset_plugged"

    const-string v0, "baffinlteskt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "baffinltektt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "baffinltelgt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "superiorlteskt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_2b
    move v0, v2

    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "increase_dtmf_tone_headset_plugged_step1"

    const-string v0, "baffinlteskt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "superiorlteskt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_2c
    move v0, v2

    :goto_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "increase_dtmf_tone_headset_plugged_step2"

    const-string v8, "baffinltektt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "increase_dtmf_tone_headset_plugged_step3"

    const-string v8, "baffinltelgt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "use_situation_gain_for_emergency_dialer_tones"

    const-string v8, "superiorlteskt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "kor_infineon_chip"

    const-string v0, "m0skt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "p4noterfktt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "p4noterfskt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "SHW-M250S"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "SHW-M250K"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_2d
    move v0, v2

    :goto_2c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "kor_phone_via_chip"

    const-string v0, "c1lgt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "baffinltelgt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_2e
    move v0, v2

    :goto_2d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_cs_svc_prop"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_action_domestic_network"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "p4notelteskt"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_2f
    move v0, v2

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "mms_non_oma"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_30
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "SHW-M250"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "SHV-E110S"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "SHV-E120"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "SHV-E160"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_31
    move v0, v2

    :goto_2f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "audio_separate_deskdock_path"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "not_spk_auto_changed_in_dock"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "SHW-M250"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "SHV-E120"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v8, "SHV-E160"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "SHV-E110S"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_32
    move v0, v2

    :goto_30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_nsri_secure"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "align_right_voice_eq_btn"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_oem_message_for_kk"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_follow_on_req"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_skt_tphone"

    const-string v0, "klteskt"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "kqlteskt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "m2alteskt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_33
    move v0, v2

    :goto_31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "call_vibration_max_magnitude"

    const-string v6, "SHV-E110S"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "photoring_reject_setting"

    const-string v6, "kltelgt"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_photo_ring"

    const-string v6, "kltelgt"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "missing_phone_lock"

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "piezo_handset"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "default_incomingcall_popup"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_60

    :goto_32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_34
    move v0, v1

    goto/16 :goto_6

    :cond_35
    move v0, v1

    goto/16 :goto_7

    :cond_36
    move v0, v1

    goto/16 :goto_8

    :cond_37
    move v0, v1

    goto/16 :goto_9

    :cond_38
    move v0, v1

    goto/16 :goto_a

    :cond_39
    move v0, v1

    goto/16 :goto_b

    :cond_3a
    move v0, v1

    goto/16 :goto_c

    :cond_3b
    move v0, v1

    goto/16 :goto_d

    :cond_3c
    move v0, v1

    goto/16 :goto_e

    :cond_3d
    move v0, v1

    goto/16 :goto_f

    :cond_3e
    move v0, v1

    goto/16 :goto_10

    :cond_3f
    move v0, v1

    goto/16 :goto_11

    :cond_40
    move v0, v1

    goto/16 :goto_12

    :cond_41
    move v0, v1

    goto/16 :goto_13

    :cond_42
    move v0, v1

    goto/16 :goto_14

    :cond_43
    move v0, v1

    goto/16 :goto_15

    :cond_44
    move v0, v1

    goto/16 :goto_16

    :cond_45
    move v0, v1

    goto/16 :goto_17

    :cond_46
    move v0, v1

    goto/16 :goto_18

    :cond_47
    move v0, v1

    goto/16 :goto_19

    :cond_48
    move v0, v1

    goto/16 :goto_1a

    :cond_49
    move v0, v1

    goto/16 :goto_1b

    :cond_4a
    move v0, v1

    goto/16 :goto_1c

    :cond_4b
    move v0, v1

    goto/16 :goto_1d

    :cond_4c
    move v0, v1

    goto/16 :goto_1e

    :cond_4d
    move v0, v1

    goto/16 :goto_1f

    :cond_4e
    move v0, v1

    goto/16 :goto_20

    :cond_4f
    move v0, v1

    goto/16 :goto_21

    :cond_50
    move v0, v1

    goto/16 :goto_22

    :cond_51
    move v0, v1

    goto/16 :goto_23

    :cond_52
    move v0, v1

    goto/16 :goto_24

    :cond_53
    move v0, v1

    goto/16 :goto_25

    :cond_54
    move v0, v1

    goto/16 :goto_26

    :cond_55
    move v0, v1

    goto/16 :goto_27

    :cond_56
    move v0, v1

    goto/16 :goto_28

    :cond_57
    move v0, v1

    goto/16 :goto_29

    :cond_58
    move v0, v1

    goto/16 :goto_2a

    :cond_59
    move v0, v1

    goto/16 :goto_2b

    :cond_5a
    move v0, v1

    goto/16 :goto_2c

    :cond_5b
    move v0, v1

    goto/16 :goto_2d

    :cond_5c
    move v0, v1

    goto/16 :goto_2e

    :cond_5d
    move v0, v1

    goto/16 :goto_2f

    :cond_5e
    move v0, v1

    goto/16 :goto_30

    :cond_5f
    move v0, v1

    goto/16 :goto_31

    :cond_60
    move v2, v1

    goto/16 :goto_32
.end method

.method public static makeFeatureForLatin()V
    .locals 5

    const/4 v1, 0x1

    const-string v0, "BR"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MX"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AR"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UY"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CO"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CL"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PE"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VE"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PY"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SV"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HN"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NI"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PA"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EC"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PR"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DO"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JM"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CR"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TT"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BO"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DM"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_ltn_voicemail_number_setting"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "feature_ltn_notipopup_when_number_changed"

    const-string v3, "BR"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "enable_totalcalltime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_EnableTotalCallTime"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TFG"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ril.product_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "COB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "disable_popupmsg_when_deactivationcf"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "end_call_two_button"

    const-string v2, "klteum"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "video_call_disable"

    const-string v2, "klteum"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static makeFeatureForTablet()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_contacts_item"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_multi_window"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasMultiWindwoFeature()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "add_panel"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_device"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_split_settings"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_easy_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "powey_key_ends_call_during_screen_off"

    const-string v4, "hw_home_key"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_theme_feature_support"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_camera_effect_feature_support"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_post_dial_feature_support"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_white_theme"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_camera_firmware_update_check_popup"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vt_camera_init_noise_reduction"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "vt_dual_camera"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "viennalte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "vienna3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt033g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "no_receiver_in_call"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "v2lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "p4note"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "espresso10rf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "roma3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "santos103g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "romalte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "vienna3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "viennalte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "santos10lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03lte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt033g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volume_panel"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "santos73g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt013g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt01lte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "santos10"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "espressorf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "kona"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "vienna"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt02"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "lt03"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "tablet_without_actionbar"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "lt02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_3
.end method

.method public static makeFeatureForUsa()V
    .locals 27

    const-string v2, "XAS"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v2, "VZW"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v2, "VMU"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v2, "BST"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_2
    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v2, "d2spr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "d2vmu"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "t0ltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jfltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "kltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "kltesprsports"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_3
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v2, "USC"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v2, "MTR"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v2, "XAR"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ACG"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_4
    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v2, "CRI"

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v2, "TFN"

    sget-object v15, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v2, "CSP"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v2, "LRA"

    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_5
    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_6
    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_7
    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const-string v2, "ATT"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "AIO"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "d2uc"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "c1uc"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "comancheuc"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "expressuc"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "p10lteuc"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "t0lteatt"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "altiusqlteuc"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "SGH-I717"

    sget-object v19, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_8
    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const-string v2, "TMB"

    sget-object v20, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "d2tmo"

    sget-object v20, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "apexqtmo"

    sget-object v20, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "m3tmo"

    sget-object v20, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "t0ltetmo"

    sget-object v20, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_9
    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_a
    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_b
    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_c
    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    const-string v2, "msm"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "mdm"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_d
    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v23, "t0lte"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v23, "jflte"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v23, "hlte"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "jactivelteuc"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v23, "d2"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_e
    const/4 v2, 0x1

    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "tty_in_additional_setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1e

    :goto_f
    return-void

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_1c
    const/4 v2, 0x0

    goto :goto_d

    :cond_1d
    const/4 v2, 0x0

    goto :goto_e

    :cond_1e
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "feature_usa"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "vi_animation"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_48

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "tty_enable"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "samsung_screen_timeout_incall"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "feature_call_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "call_icon_display_in_call_screen"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "video_call_disable"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "end_call_two_button"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "play_local_dtmf_tones"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "usa_duplicate_disable"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "emergency_dialer_tones"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "number_format_with_country_iso"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "disable_sip_call_setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "stop_signal_info_tone"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "show_extra_volume_in_call_card"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "usa_geo_description_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "t0ltevzw"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "t0lteatt"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "t0lteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "d2uc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "c1uc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "expressuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "expressziglteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "p10lteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "jflteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "meliuslteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "jactivelteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "jflteaio"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "hlteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    :cond_1f
    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    :cond_20
    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "ecid_enable"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "jfltevzw"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "hltevzw"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "godivaltevzw"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "d2vzw"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "serranoltevzw"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "kltevzw"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "jaspervzw"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "klteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "klteattactive"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_22
    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "cityid_enable"

    const-string v2, "comancheuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "expressuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "zestlteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "serranolteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "meliuslteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "goldenlteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "SGH-I777"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "SGH-I727"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "SGH-I717"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "SGH-I577"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "jflteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_23
    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "incoming_call_widget_description_enable"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "incoming_call_widget_description_enlarge"

    const-string v25, "meliuslteuc"

    sget-object v26, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "change_message_icon_for_vzw"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, 0x1

    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v25, "change_message_icon_for_att"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4e

    const/4 v2, 0x1

    :goto_16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "hac_enable"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4f

    const/4 v2, 0x0

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "update_user_data_diff_name"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "support_easy_mode"

    const-string v2, "support_easy_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v25, "d2"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_50

    const/4 v2, 0x1

    :goto_18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "feature_cdma_us"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "dtmf_type_enable"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_cdma_emergency_concept"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_cdma_concept"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_cdma_smc_fac_req"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "cdma_subscription_enable"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_51

    const/4 v2, 0x1

    :goto_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "cdma_call_alert_enable"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "manage_conference_call_menu_disable"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "not_ota_ui_display"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "headset_highest_priority_for_call"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "reboot_after_ota_success"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, " disable_notification_in_waiting_call_ringing"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "signal_info_tone_generator_stop"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "disable_dun_menu"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "cdma_additional_setting_enable"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "reject_call_cnap_display"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "updated_calling_name_presentation"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "caller_name_reduced_font_size"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "p4notelteusc"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "not_ota_ui_display"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "emergency_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_25
    const/4 v2, 0x1

    :goto_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "international_dialing_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_26
    const/4 v2, 0x1

    :goto_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_otasp_calllog_disable_for_regional"

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_54

    :cond_27
    const/4 v2, 0x1

    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "usa_otasp_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "usa_otasp_calllog_disable_for_regional"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_28
    const/4 v2, 0x1

    :goto_1d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable"

    const-string v2, "kltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "viennaltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "hltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "serranoltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "meliusltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "jfltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "d2vzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "aegis2vzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "espresso10vzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "m3vzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "t0ltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "godivaltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "p4noteltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "kltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "kltesprsports"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "hltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "jfltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "jflterefreshspr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "t0ltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "meliusltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "p4noteltespr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    :cond_29
    const/4 v2, 0x1

    :goto_1e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable_for_spr"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_57

    const/4 v2, 0x1

    :goto_1f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable_for_spr_f"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v2, 0x1

    :goto_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable_for_spr_m"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    :goto_21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "global_network_cdma_gsm_enable_for_vzw"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5a

    const/4 v2, 0x1

    :goto_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "call_vibration_max_magnitude"

    const-string v2, "prevail2spr"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "iconvmu"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    :cond_2a
    const/4 v2, 0x1

    :goto_23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "emergency_tone_alert_always"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "emergency_tone_alert_master_vol"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5c

    :cond_2b
    const/4 v2, 0x1

    :goto_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "voice_privacy_enable"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5d

    const/4 v2, 0x1

    :goto_25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "cdma_apn_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "kltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "kltesprsports"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "jfltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "jflterefreshspr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_2c
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_2d
    const/4 v2, 0x1

    :goto_26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "voicemail_empty_number_retry"

    const-string v18, "global_network_cdma_gsm_enable"

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "calling_name_presentation"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "audio_path_changes_wired_hadset_connected_bluetooth"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_2e
    const/4 v2, 0x1

    :goto_27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "comancheuc"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "t0ltetmo"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "jfltetmo"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "jflteuc"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "jactivelteuc"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "jflteaio"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2f
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "hac_enable"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "network_mode_disable"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "usa_gsm_update_2nd_number"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "beep_vibration_for_ussd"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "support_call_transfer"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_60

    const/4 v2, 0x1

    :goto_28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "usa_gsm_network_setting"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "usa_gsm_support_femto_cell_network"

    const-string v2, "mprojectlteuc"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "serranolteuc"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "hlteuc"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "klteuc"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "klteattactive"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    :cond_31
    const/4 v2, 0x1

    :goto_29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "usa_gsm_local_dtmf"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "att_customer_proprietary_information"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "feature_enable_csp"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    :cond_32
    const/4 v2, 0x1

    :goto_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "tty_entries_reduction"

    const-string v18, "SGH-I777"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "network_mode_list_lte"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_63

    const-string v2, "network_mode_list_lte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v2, 0x1

    :goto_2b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "volte_settings_in_mobile_networks"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v2, 0x1

    :goto_2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "add_vt_hold_in_menu"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x1

    :goto_2d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "accept_vt_by_button"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_66

    :cond_33
    const/4 v2, 0x1

    :goto_2e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "enable_volte_hold_tone"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_67

    const/4 v2, 0x1

    :goto_2f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "remove_volte_call_setting"

    const-string v2, "hltetmo"

    sget-object v21, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "kltetmo"

    sget-object v21, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "klteMetroPCS"

    sget-object v21, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    :cond_34
    const/4 v2, 0x1

    :goto_30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "toggle_volte_setting"

    const-string v18, "gardaltetmo"

    sget-object v21, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "ss_via_ps"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, 0x1

    :goto_31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "ecbm_emergency_calls_only_enable"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "usa_spr_roaming_feature"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "preferred_network_mode_reboot_enable"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "emergency_callback_mode_exit_timer_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6a

    const/4 v2, 0x1

    :goto_32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "get_orig_dial_string_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6b

    :cond_35
    const/4 v2, 0x1

    :goto_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "visual_voicemail"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "visual_voicemail_enable"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVisualVoicemail()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "remove_voicemail_category"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVisualVoicemail()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "reject_call_with_message_drawer_while_in_secure_lock_disable"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "reject_call_with_message_drawer_while_in_secure_lock_pending"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v18, "system_select_home_only"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6c

    :cond_36
    const/4 v2, 0x1

    :goto_34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "system_select_home_only_entry"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_call_duration"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "safety_emergency_service"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "omadm_lte_forced_nv"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "csc_chameleon_enable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v18, "CscFeature_Common_UseChameleon"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "abbreviated_dialing_codes_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "csc_chameleon_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    :cond_37
    const/4 v2, 0x1

    :goto_35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "abbreviated_dialing_codes_table_sprint"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "abbreviated_dialing_codes_table_virgin"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "abbreviated_dialing_codes_table_boost"

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "powey_key_ends_call_during_screen_off"

    const-string v2, "goghspr"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "aegis2vzw"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "jaspervzw"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "iconvmu"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "prevail2spr"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "godivaltevzw"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const/4 v2, 0x1

    :goto_36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "noise_reduction_icon_no_display_always"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6f

    const/4 v2, 0x1

    :goto_37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "sprint_connections_optimizer"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_70

    const/4 v2, 0x0

    :goto_38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "call_block_ui"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_71

    const/4 v2, 0x1

    :goto_39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_automatic_cdma_lte_gsm"

    const-string v6, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_cdma_lte"

    const-string v6, "global_network_cdma_gsm_enable_for_spr_m"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "roaming_setting_guard_data_only"

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x111003c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_72

    const/4 v2, 0x1

    :goto_3a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "north_american_dialing_plan_for_voicemail"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "reset_network_mode_to_chameleon"

    const-string v6, "jflterefreshspr"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hdvoice_call_status"

    const-string v2, "kltespr"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "kltesprsports"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    :cond_38
    const/4 v2, 0x1

    :goto_3b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "sprint_mvno_mobile_network_feature"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ddtm_enable"

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "goghvmu"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_39
    const-string v2, "SPH-D710"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_74

    :cond_3a
    const/4 v2, 0x1

    :goto_3c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "thrway_active_disable"

    const-string v6, "iconvmu"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "audio_manager_pingring"

    const-string v2, "prevail2spr"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "iconvmu"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    :cond_3b
    const/4 v2, 0x1

    :goto_3d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "is_lo_res_disable"

    const-string v6, "prevail2spr"

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "reset_network_mode_to_default"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "auto_retry_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_76

    :cond_3c
    const/4 v2, 0x1

    :goto_3e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "eri_info_label_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "system_selection_automatic_ab_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_dialer_home_recent_block"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "reject_call_with_message_send_button_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_77

    const/4 v2, 0x1

    :goto_3f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "assisted_dialing_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "global_data_roaming_access_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wifi_diable_during_emergency_call"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_urgenct_voice_mail_notification"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "us_cdma_call_fowarding"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_call_button_msg_change_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ota_not_spport"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_78

    :cond_3d
    const/4 v2, 0x1

    :goto_40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "btn_cdma_swap_delay"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mute_menu_in_easy_mode"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_setting_soft_reset"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "auto_reject_notification"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "setting_search_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_cnap_in_call_card"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_low_battery_sound_during_call"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "calling_name_presentation_with_contacts"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "safety_emergency_contacts"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "jfltevzw"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_call_button_msg_change_vzw"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3f

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_easy_mode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vzw_volte_ui"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_79

    const/4 v2, 0x1

    :goto_41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "volte_cdma_ringback_tone"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7a

    const/4 v2, 0x1

    :goto_42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_manual_selection_when_bootup"

    const-string v6, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "recent_hw_key_disable_when_incoming"

    const-string v2, "jaspervzw"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "aegis2vzw"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "godivaltevzw"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    :cond_40
    const/4 v2, 0x1

    :goto_43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_duplicated_name_in_plmn_list"

    const-string v6, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_info_diable"

    const-string v2, "jaspervzw"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "godivaltevzw"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    :cond_41
    const/4 v2, 0x1

    :goto_44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "set_network_mode_when_no_sim_bootup"

    const-string v2, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const-string v2, "gsm.default.channel"

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7d

    const/4 v2, 0x1

    :goto_45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "accept_or_reject_calls_dialog"

    const-string v6, "godivaltevzw"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_usb30_in_call"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v2

    if-eqz v2, :cond_7e

    :cond_42
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v2, 0x1

    :goto_46
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_network_mode_display"

    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tracfone_network_mode_feature"

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer_default_on"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "voiceless_ota_provisioning_action"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "set_system_setting_for_auto_answer"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7f

    :cond_43
    const/4 v2, 0x1

    :goto_47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ota_show_listening_screen"

    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_att"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "hide_call_barring"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_call_button_msg_change_att"

    const-string v6, "goldenlteuc"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "att_volte_ui"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v2, 0x1

    :goto_48
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_tmo"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_ecn"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hardkeyboardhidden_no"

    const-string v2, "aegis2vzw"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "apexqtmo"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "zestlteuc"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    :cond_44
    const/4 v2, 0x1

    :goto_49
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "extra_ringer"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasIlluminanceSensor()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_icc_ndp"

    const-string v2, "biscottoltetmo"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    const/4 v2, 0x1

    :goto_4a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "tmo_volte_ui"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_83

    const/4 v2, 0x1

    :goto_4b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "allow_select_network_mode"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    const-string v2, "SPH-D710"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "in_call_menu_memo_enable"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, " emergency_call_back_mode_activity_relaunch"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emergency_call_cont_beeps"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "clear_data_roaming_icon"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "show_p_number"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "no_additional_setting"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "abbreviated_dialing_codes_table_sprint"

    const-string v8, "SPH-D710SPR"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "abbreviated_dialing_codes_table_virgin"

    const-string v8, "SPH-D710VMU"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "abbreviated_dialing_codes_table_boost"

    const-string v8, "SPH-D710BST"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_cnam"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_84

    :cond_47
    const/4 v2, 0x1

    :goto_4c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :cond_48
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_49
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_4a
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_4b
    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_4c
    const/4 v2, 0x0

    goto/16 :goto_14

    :cond_4d
    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_4e
    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_4f
    const/4 v2, 0x1

    goto/16 :goto_17

    :cond_50
    const/4 v2, 0x0

    goto/16 :goto_18

    :cond_51
    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_52
    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_53
    const/4 v2, 0x0

    goto/16 :goto_1b

    :cond_54
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_55
    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_56
    const/4 v2, 0x0

    goto/16 :goto_1e

    :cond_57
    const/4 v2, 0x0

    goto/16 :goto_1f

    :cond_58
    const/4 v2, 0x0

    goto/16 :goto_20

    :cond_59
    const/4 v2, 0x0

    goto/16 :goto_21

    :cond_5a
    const/4 v2, 0x0

    goto/16 :goto_22

    :cond_5b
    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_5c
    const/4 v2, 0x0

    goto/16 :goto_24

    :cond_5d
    const/4 v2, 0x0

    goto/16 :goto_25

    :cond_5e
    const/4 v2, 0x0

    goto/16 :goto_26

    :cond_5f
    const/4 v2, 0x0

    goto/16 :goto_27

    :cond_60
    const/4 v2, 0x0

    goto/16 :goto_28

    :cond_61
    const/4 v2, 0x0

    goto/16 :goto_29

    :cond_62
    const/4 v2, 0x0

    goto/16 :goto_2a

    :cond_63
    const/4 v2, 0x0

    goto/16 :goto_2b

    :cond_64
    const/4 v2, 0x0

    goto/16 :goto_2c

    :cond_65
    const/4 v2, 0x0

    goto/16 :goto_2d

    :cond_66
    const/4 v2, 0x0

    goto/16 :goto_2e

    :cond_67
    const/4 v2, 0x0

    goto/16 :goto_2f

    :cond_68
    const/4 v2, 0x0

    goto/16 :goto_30

    :cond_69
    const/4 v2, 0x0

    goto/16 :goto_31

    :cond_6a
    const/4 v2, 0x0

    goto/16 :goto_32

    :cond_6b
    const/4 v2, 0x0

    goto/16 :goto_33

    :cond_6c
    const/4 v2, 0x0

    goto/16 :goto_34

    :cond_6d
    const/4 v2, 0x0

    goto/16 :goto_35

    :cond_6e
    const/4 v2, 0x0

    goto/16 :goto_36

    :cond_6f
    const/4 v2, 0x0

    goto/16 :goto_37

    :cond_70
    const/4 v2, 0x1

    goto/16 :goto_38

    :cond_71
    const/4 v2, 0x0

    goto/16 :goto_39

    :cond_72
    const/4 v2, 0x0

    goto/16 :goto_3a

    :cond_73
    const/4 v2, 0x0

    goto/16 :goto_3b

    :cond_74
    const/4 v2, 0x0

    goto/16 :goto_3c

    :cond_75
    const/4 v2, 0x0

    goto/16 :goto_3d

    :cond_76
    const/4 v2, 0x0

    goto/16 :goto_3e

    :cond_77
    const/4 v2, 0x0

    goto/16 :goto_3f

    :cond_78
    const/4 v2, 0x0

    goto/16 :goto_40

    :cond_79
    const/4 v2, 0x0

    goto/16 :goto_41

    :cond_7a
    const/4 v2, 0x0

    goto/16 :goto_42

    :cond_7b
    const/4 v2, 0x0

    goto/16 :goto_43

    :cond_7c
    const/4 v2, 0x0

    goto/16 :goto_44

    :cond_7d
    const/4 v2, 0x0

    goto/16 :goto_45

    :cond_7e
    const/4 v2, 0x0

    goto/16 :goto_46

    :cond_7f
    const/4 v2, 0x0

    goto/16 :goto_47

    :cond_80
    const/4 v2, 0x0

    goto/16 :goto_48

    :cond_81
    const/4 v2, 0x0

    goto/16 :goto_49

    :cond_82
    const/4 v2, 0x0

    goto/16 :goto_4a

    :cond_83
    const/4 v2, 0x0

    goto/16 :goto_4b

    :cond_84
    const/4 v2, 0x0

    goto/16 :goto_4c
.end method

.method public static makePreconditionForFeature()V
    .locals 2

    const-string v0, ""

    const-string v1, "JPN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    const-string v1, "KLTEDCM"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "kltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    const-string v1, "KLTEKDI"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "kltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto :goto_0
.end method

.method public static putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/Boolean;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
