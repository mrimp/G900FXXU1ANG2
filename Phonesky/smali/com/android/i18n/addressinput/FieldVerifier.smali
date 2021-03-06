.class public Lcom/android/i18n/addressinput/FieldVerifier;
.super Ljava/lang/Object;
.source "FieldVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/FieldVerifier$1;
    }
.end annotation


# instance fields
.field private mCandidateValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSource:Lcom/android/i18n/addressinput/DataSource;

.field private mFormat:Ljava/util/regex/Pattern;

.field private mId:Ljava/lang/String;

.field private mKeys:[Ljava/lang/String;

.field private mLatinNames:[Ljava/lang/String;

.field private mLocalNames:[Ljava/lang/String;

.field private mMatch:Ljava/util/regex/Pattern;

.field private mPossibleFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation
.end field

.field private mRequired:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/i18n/addressinput/DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mDataSource:Lcom/android/i18n/addressinput/DataSource;

    invoke-direct {p0}, Lcom/android/i18n/addressinput/FieldVerifier;->populateRootVerifier()V

    return-void
.end method

.method private constructor <init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressVerificationNodeData;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/i18n/addressinput/FieldVerifier;->mPossibleFields:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mPossibleFields:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/i18n/addressinput/FieldVerifier;->mRequired:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mRequired:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/i18n/addressinput/FieldVerifier;->mDataSource:Lcom/android/i18n/addressinput/DataSource;

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mDataSource:Lcom/android/i18n/addressinput/DataSource;

    iget-object v0, p1, Lcom/android/i18n/addressinput/FieldVerifier;->mFormat:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mFormat:Ljava/util/regex/Pattern;

    iget-object v0, p1, Lcom/android/i18n/addressinput/FieldVerifier;->mMatch:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mMatch:Ljava/util/regex/Pattern;

    invoke-direct {p0, p2}, Lcom/android/i18n/addressinput/FieldVerifier;->populate(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)V

    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLocalNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLatinNames:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/i18n/addressinput/Util;->buildNameToKeyMap([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mCandidateValues:Ljava/util/Map;

    return-void
.end method

.method private isCountryKey()Z
    .locals 2

    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mId:Ljava/lang/String;

    const-string v1, "Cannot use null as key"

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mId:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKnownInScript(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x1

    invoke-static {p2}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    if-nez p1, :cond_2

    iget-object v8, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mCandidateValues:Ljava/util/Map;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mCandidateValues:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    if-ne p1, v8, :cond_3

    iget-object v5, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLatinNames:[Ljava/lang/String;

    :goto_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v5, :cond_4

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLocalNames:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mKeys:[Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mKeys:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0
.end method

.method private static parseAddressFields(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-char v1, v0, v4

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/16 v7, 0x6e

    if-ne v1, v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressField;->of(C)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in format pattern: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-virtual {v6, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/16 v7, 0x25

    if-ne v1, v7, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    return-object v6
.end method

.method private static parseRequireString(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            ">;"
        }
    .end annotation

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressField;->of(C)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in require pattern: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {v5, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v5, v6}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    return-object v5
.end method

.method private populate(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)V
    .locals 3

    const/4 v2, 0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->ID:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->ID:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mId:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_KEYS:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_KEYS:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mKeys:[Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_LNAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_LNAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLatinNames:[Ljava/lang/String;

    :cond_4
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_NAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_NAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLocalNames:[Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/i18n/addressinput/FieldVerifier;->parseAddressFields(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mPossibleFields:Ljava/util/Set;

    :cond_6
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->REQUIRE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->REQUIRE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/i18n/addressinput/FieldVerifier;->parseRequireString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mRequired:Ljava/util/Set;

    :cond_7
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->XZIP:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->XZIP:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mFormat:Ljava/util/regex/Pattern;

    :cond_8
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/i18n/addressinput/FieldVerifier;->isCountryKey()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mFormat:Ljava/util/regex/Pattern;

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mKeys:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLocalNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLatinNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mKeys:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLatinNames:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mKeys:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLocalNames:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mMatch:Ljava/util/regex/Pattern;

    goto :goto_1
.end method

.method private populateRootVerifier()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "data"

    iput-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mDataSource:Lcom/android/i18n/addressinput/DataSource;

    const-string v3, "data"

    invoke-interface {v2, v3}, Lcom/android/i18n/addressinput/DataSource;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->COUNTRIES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->COUNTRIES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mKeys:[Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mKeys:[Ljava/lang/String;

    invoke-static {v2, v4, v4}, Lcom/android/i18n/addressinput/Util;->buildNameToKeyMap([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mCandidateValues:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mDataSource:Lcom/android/i18n/addressinput/DataSource;

    const-string v3, "data/ZZ"

    invoke-interface {v2, v3}, Lcom/android/i18n/addressinput/DataSource;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mPossibleFields:Ljava/util/Set;

    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v0, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->FMT:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v0, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/i18n/addressinput/FieldVerifier;->parseAddressFields(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mPossibleFields:Ljava/util/Set;

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mRequired:Ljava/util/Set;

    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->REQUIRE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v0, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->containsKey(Lcom/android/i18n/addressinput/AddressDataKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->REQUIRE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v0, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/i18n/addressinput/FieldVerifier;->parseRequireString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mRequired:Ljava/util/Set;

    :cond_2
    return-void
.end method


# virtual methods
.method protected check(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/AddressProblemType;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p4}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/i18n/addressinput/FieldVerifier$1;->$SwitchMap$com$android$i18n$addressinput$AddressProblemType:[I

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressProblemType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown problem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mPossibleFields:Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p5, p3, p2}, Lcom/android/i18n/addressinput/AddressProblems;->add(Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressProblemType;)V

    :cond_1
    if-nez v0, :cond_3

    :goto_1
    return v2

    :pswitch_1
    iget-object v4, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mRequired:Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/i18n/addressinput/FieldVerifier;->isKnownInScript(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    :pswitch_3
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mFormat:Ljava/util/regex/Pattern;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mFormat:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mMatch:Ljava/util/regex/Pattern;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mMatch:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method refineVerifier(Ljava/lang/String;)Lcom/android/i18n/addressinput/FieldVerifier;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/i18n/addressinput/FieldVerifier;

    invoke-direct {v3, p0, v5}, Lcom/android/i18n/addressinput/FieldVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressVerificationNodeData;)V

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mDataSource:Lcom/android/i18n/addressinput/DataSource;

    invoke-interface {v3, v2}, Lcom/android/i18n/addressinput/DataSource;->get(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Lcom/android/i18n/addressinput/FieldVerifier;

    invoke-direct {v3, p0, v1}, Lcom/android/i18n/addressinput/FieldVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressVerificationNodeData;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLatinNames:[Ljava/lang/String;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/i18n/addressinput/FieldVerifier;

    invoke-direct {v3, p0, v5}, Lcom/android/i18n/addressinput/FieldVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressVerificationNodeData;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLatinNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLatinNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mLocalNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mDataSource:Lcom/android/i18n/addressinput/DataSource;

    invoke-interface {v3, v2}, Lcom/android/i18n/addressinput/DataSource;->get(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v3, Lcom/android/i18n/addressinput/FieldVerifier;

    invoke-direct {v3, p0, v1}, Lcom/android/i18n/addressinput/FieldVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressVerificationNodeData;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/android/i18n/addressinput/FieldVerifier;

    invoke-direct {v3, p0, v5}, Lcom/android/i18n/addressinput/FieldVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressVerificationNodeData;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/i18n/addressinput/FieldVerifier;->mId:Ljava/lang/String;

    return-object v0
.end method
