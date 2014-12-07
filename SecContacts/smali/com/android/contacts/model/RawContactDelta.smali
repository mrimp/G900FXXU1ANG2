.class public Lcom/android/contacts/model/RawContactDelta;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/RawContactDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContactsQueryUri:Landroid/net/Uri;

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/common/model/ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/model/RawContactDelta$3;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta$3;-><init>()V

    sput-object v0, Lcom/android/contacts/model/RawContactDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/model/RawContactDelta;Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/model/RawContactDelta;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    return-object v0
.end method

.method private containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 5

    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static fromBefore(Lcom/android/contacts/model/RawContact;)Lcom/android/contacts/model/RawContactDelta;
    .locals 5

    new-instance v1, Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {v1}, Lcom/android/contacts/model/RawContactDelta;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v3, v1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-static {v2}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/model/RawContactDelta;
    .locals 10

    iget-object v7, p1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    if-nez p0, :cond_2

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->isTransient()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0

    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDelta;-><init>()V

    :cond_3
    iget-object v8, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v9, p1, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-static {v8, v9}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v8, p1, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 2

    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const-string v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildDiff(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v11, :cond_2

    if-nez v10, :cond_2

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v15, "aggregation_mode"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v15, "account_type"

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSimAccount(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->isSim2Account(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v14

    new-instance v15, Lcom/android/contacts/model/RawContactDelta$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/contacts/model/RawContactDelta$1;-><init>(Lcom/android/contacts/model/RawContactDelta;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v15, v0, v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->buildDiffForSim2(Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;Ljava/util/ArrayList;Landroid/content/Context;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/contacts/sim/editor/EditSim;->getOperation()Lcom/samsung/contacts/sim/editor/EditSimOperation;

    move-result-object v14

    new-instance v15, Lcom/android/contacts/model/RawContactDelta$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/contacts/model/RawContactDelta$2;-><init>(Lcom/android/contacts/model/RawContactDelta;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v15, v0, v1}, Lcom/samsung/contacts/sim/editor/EditSimOperation;->buildDiffForSim(Lcom/samsung/contacts/sim/editor/EditSimOperation$BuildDiffForSimInterface;Ljava/util/ArrayList;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/ValuesDelta;

    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v15, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    sget-object v14, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v15, "data"

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    :cond_7
    :goto_3
    if-eqz v5, :cond_6

    const-string v14, "vnd.android.cursor.item/ringtone"

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "vnd.android.cursor.item/vibration"

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "vnd.android.cursor.item/alerttone"

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v11, :cond_a

    const-string v14, "raw_contact_id"

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto :goto_2

    :cond_9
    const-string v14, "vnd.android.cursor.item/ringtone"

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "vnd.android.cursor.item/vibration"

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "vnd.android.cursor.item/alerttone"

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v14}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    goto :goto_3

    :cond_a
    const-string v14, "raw_contact_id"

    invoke-virtual {v5, v14, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    :cond_b
    if-eqz v11, :cond_8

    if-eqz v5, :cond_8

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "When parent insert, child must be also"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v7, :cond_d

    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_e

    if-eqz v12, :cond_e

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/contacts/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    :cond_e
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v14, "aggregation_mode"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x0

    instance-of v6, p1, Lcom/android/contacts/model/RawContactDelta;

    if-eqz v6, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    iget-object v6, v4, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v7, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-direct {v4, v0}, Lcom/android/contacts/model/RawContactDelta;->containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method

.method public getEntryCount(Z)I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    const-string v3, "account_type"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    return-object v3
.end method

.method public getRawContactId()Ljava/lang/Long;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_0

    if-eqz v3, :cond_5

    move-object v4, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public getValues()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPrimaryNumber(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isContactInsert()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    iget-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Uri="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Values="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Entries={"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    const-string v5, "null"

    goto :goto_0

    :cond_2
    const-string v5, "\n})\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/RawContactDelta;->getEntryCount(Z)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v5, p0, Lcom/android/contacts/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
