.class public Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;
.super Ljava/lang/Object;
.source "DcbApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;,
        Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;,
        Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;
    }
.end annotation


# static fields
.field private static final DCB_TIMEOUT_MS:I


# instance fields
.field private final mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->purchaseStatusTimeoutMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->DCB_TIMEOUT_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static buildCredentials(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v5, "version"

    invoke-static {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "credentialexpirationtime"

    invoke-static {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "isprovisioned"

    invoke-static {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "passwordinvalid"

    invoke-static {p0, v5}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    invoke-direct {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_0
    invoke-virtual {v7, v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v5

    const-string v7, "credential"

    invoke-static {p0, v7}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setCredentials(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_1
    invoke-virtual {v5, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setExpirationTime(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v7

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_2
    invoke-virtual {v7, v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v7

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_3
    invoke-virtual {v7, v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setInvalidPassword(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_4
    return-object v5

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v6

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v5, "JSON Exception while building credentials"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_4
.end method

.method private static buildEncryptedSubscriberInfo(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "googlekeyversion"

    invoke-static {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "carrierkeyversion"

    invoke-static {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    invoke-direct {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;-><init>()V

    const-string v4, "message"

    invoke-static {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    const-string v4, "encryptedkey"

    invoke-static {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setEncryptedKey(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    const-string v4, "signature"

    invoke-static {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    const-string v4, "initvector"

    invoke-static {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setInitVector(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    invoke-virtual {v4, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setGoogleKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setCarrierKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method static buildProvisioning(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    .locals 10

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v6, "isprovisioned"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const-string v6, "transactionlimit"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "passwordrequired"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "subscribername"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "subscriberidentifier"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "subscriberaddress"

    invoke-static {p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->buildSubscriberInfo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v4

    const-string v6, "encryptedsubscriberinfo"

    invoke-static {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->buildEncryptedSubscriberInfo(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v0

    new-instance v6, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    invoke-direct {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;-><init>()V

    const-string v8, "version"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v8

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_0
    invoke-virtual {v8, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "provisioningid"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setProvisioningId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "tosurl"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "tosversion"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosVersion(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "subscribercurrency"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberCurrency(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_1
    invoke-virtual {v6, v8, v9}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTransactionLimit(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "accounttype"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->buildCredentials(Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v8

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_2
    invoke-virtual {v8, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "passwordprompt"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordPrompt(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "passwordforgoturl"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordForgotUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setEncryptedSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "addresssnippet"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAddressSnippet(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    const-string v8, "country"

    invoke-static {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_3
    return-object v6

    :cond_0
    move v6, v7

    goto/16 :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v6, "JSON Exception while building provisioning"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto :goto_3
.end method

.method private static buildSubscriberInfo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "address1"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "address2"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "city"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "state"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "postalcode"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "country"

    invoke-static {p2, v1}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getBaseParametersAsJsonObject()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getCarrierBillingParameters()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "format"

    const-string v6, "json"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierApiVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    const-string v5, "version"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->sendSubscriberInfoWithCarrierRequests()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "line1Number"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "subscriberId"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object v1
.end method

.method public getCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getCarrierBillingParameters()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getCredentialsParametersAsJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetCredentialsUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;

    invoke-direct {v4, p0, p3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$CredentialsJsonConverter;-><init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$Listener;)V

    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;

    invoke-direct {v5, p0, p4}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v3, Lcom/android/volley/DefaultRetryPolicy;

    sget v4, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->DCB_TIMEOUT_MS:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3}, Lcom/android/volley/RequestQueue;->start()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v3

    return-object v3
.end method

.method getCredentialsParametersAsJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getBaseParametersAsJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v2, "provisioningId"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "password"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "JSONException while creating credentials request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mDcbContext:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->getCarrierBillingParameters()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v1

    sget-object v3, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningUseTosVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetProvisioningUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;

    invoke-direct {v4, p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$ProvisioningJsonConverter;-><init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$Listener;)V

    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;

    invoke-direct {v5, p0, p3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;-><init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$ErrorListener;)V

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v3, Lcom/android/volley/DefaultRetryPolicy;

    sget v4, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->DCB_TIMEOUT_MS:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3}, Lcom/android/volley/RequestQueue;->start()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getBaseParametersAsJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v2, "acceptedTosVersion"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "JSONException while creating provisioning request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
