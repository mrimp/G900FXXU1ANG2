.class Lcom/android/i18n/addressinput/FormController;
.super Ljava/lang/Object;
.source "FormController.java"


# static fields
.field private static final ADDRESS_HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

.field private static final ROOT_KEY:Lcom/android/i18n/addressinput/LookupKey;


# instance fields
.field private mCurrentCountry:Ljava/lang/String;

.field private mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

.field private mLanguageCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/i18n/addressinput/FormController;->getDataKeyForRoot()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/addressinput/FormController;->ROOT_KEY:Lcom/android/i18n/addressinput/LookupKey;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/i18n/addressinput/AddressField;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/i18n/addressinput/FormController;->ADDRESS_HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

    return-void
.end method

.method constructor <init>(Lcom/android/i18n/addressinput/ClientData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "null data not allowed"

    invoke-static {p1, v3}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/i18n/addressinput/FormController;->mCurrentCountry:Ljava/lang/String;

    new-instance v3, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    const-string v4, "ZZ"

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/addressinput/FormController;->getDataKeyFor(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/i18n/addressinput/ClientData;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "require data for default country key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    return-void
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/i18n/addressinput/FormController;->buildDataLookupKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/i18n/addressinput/FormController;->requestDataRecursively(Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V

    return-void
.end method

.method private buildDataLookupKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;
    .locals 5

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/i18n/addressinput/FormController;->isDefaultLanguage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-direct {v3, v0}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/i18n/addressinput/Util;->getLanguageSubtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDataKeyForRoot()Lcom/android/i18n/addressinput/LookupKey;
    .locals 3

    new-instance v1, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    new-instance v1, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v2, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v1, v2}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v1, v0}, Lcom/android/i18n/addressinput/LookupKey$Builder;->setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v1

    return-object v1
.end method

.method private getScriptType()Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto :goto_0
.end method

.method private getSubKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/i18n/addressinput/FormController;->getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/RegionData;

    invoke-virtual {v1, p2}, Lcom/android/i18n/addressinput/RegionData;->isValidName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/RegionData;->getKey()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private normalizeLookupKey(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->getKeyType()Lcom/android/i18n/addressinput/LookupKey$KeyType;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Only DATA keyType is supported"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    :goto_0
    return-object p1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v6, v5, v8

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_5

    const/4 v1, 0x0

    if-ne v0, v9, :cond_2

    aget-object v6, v5, v0

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v5, v0

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v6, v3, v8

    aput-object v6, v5, v0

    aget-object v1, v3, v9

    :cond_2
    new-instance v6, Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-direct {p0, v6, v7}, Lcom/android/i18n/addressinput/FormController;->getSubKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_5

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v6, "--"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v6, Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object p1

    goto :goto_0
.end method

.method private requestDataRecursively(Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/LookupKey;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/i18n/addressinput/DataLoadListener;",
            ")V"
        }
    .end annotation

    const-string v0, "Null key not allowed"

    invoke-static {p1, v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Null subkeys not allowed"

    invoke-static {p2, v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    new-instance v1, Lcom/android/i18n/addressinput/FormController$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/i18n/addressinput/FormController$1;-><init>(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/DataLoadListener;Ljava/util/Queue;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/i18n/addressinput/ClientData;->requestData(Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/DataLoadListener;)V

    return-void
.end method

.method private splitData(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getDataKeyFor(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey;
    .locals 2

    new-instance v0, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/LookupKey$Builder;->setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v0

    return-object v0
.end method

.method getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/LookupKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->getKeyType()Lcom/android/i18n/addressinput/LookupKey$KeyType;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    if-ne v8, v9, :cond_0

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "example key not allowed for getting region data"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const-string v8, "null regionKey not allowed"

    invoke-static {p1, v8}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/FormController;->normalizeLookupKey(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/android/i18n/addressinput/FormController;->ROOT_KEY:Lcom/android/i18n/addressinput/LookupKey;

    invoke-virtual {v5, v8}, Lcom/android/i18n/addressinput/LookupKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/ClientData;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    sget-object v8, Lcom/android/i18n/addressinput/AddressDataKey;->COUNTRIES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v8}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/i18n/addressinput/FormController;->splitData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v8, v0

    if-ge v2, v8, :cond_4

    new-instance v8, Lcom/android/i18n/addressinput/RegionData$Builder;

    invoke-direct {v8}, Lcom/android/i18n/addressinput/RegionData$Builder;-><init>()V

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/RegionData$Builder;->setKey(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v8

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/RegionData$Builder;->setName(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/i18n/addressinput/RegionData$Builder;->build()Lcom/android/i18n/addressinput/RegionData;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/ClientData;->get(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v8, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_KEYS:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v8}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/i18n/addressinput/FormController;->splitData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/i18n/addressinput/FormController;->getScriptType()Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_NAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v8}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/i18n/addressinput/FormController;->splitData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v2, 0x0

    :goto_2
    array-length v8, v3

    if-ge v2, v8, :cond_4

    new-instance v8, Lcom/android/i18n/addressinput/RegionData$Builder;

    invoke-direct {v8}, Lcom/android/i18n/addressinput/RegionData$Builder;-><init>()V

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/RegionData$Builder;->setKey(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v9

    array-length v8, v4

    if-ge v2, v8, :cond_3

    aget-object v8, v4, v2

    :goto_3
    invoke-virtual {v9, v8}, Lcom/android/i18n/addressinput/RegionData$Builder;->setName(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/i18n/addressinput/RegionData$Builder;->build()Lcom/android/i18n/addressinput/RegionData;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_LNAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v8}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/i18n/addressinput/FormController;->splitData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    aget-object v8, v3, v2

    goto :goto_3

    :cond_4
    return-object v7
.end method

.method isDefaultLanguage(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v5, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v5}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    iget-object v6, p0, Lcom/android/i18n/addressinput/FormController;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/addressinput/FormController;->getDataKeyFor(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    iget-object v5, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/i18n/addressinput/ClientData;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    sget-object v5, Lcom/android/i18n/addressinput/AddressDataKey;->LANG:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v5}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->getLanguageSubtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->getLanguageSubtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method requestDataForAddress(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "null country not allowed"

    invoke-static {v6, v7}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/android/i18n/addressinput/FormController;->ADDRESS_HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/i18n/addressinput/AddressData;->getFieldValue(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Need at least country level info"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/i18n/addressinput/DataLoadListener;->dataLoadingBegin()V

    :cond_3
    sget-object v6, Lcom/android/i18n/addressinput/FormController;->ROOT_KEY:Lcom/android/i18n/addressinput/LookupKey;

    invoke-direct {p0, v6, v4, p2}, Lcom/android/i18n/addressinput/FormController;->requestDataRecursively(Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V

    return-void
.end method

.method setCurrentCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/i18n/addressinput/FormController;->mCurrentCountry:Ljava/lang/String;

    return-void
.end method

.method setLanguageCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    return-void
.end method
