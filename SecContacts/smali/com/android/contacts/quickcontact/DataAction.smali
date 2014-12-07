.class public Lcom/android/contacts/quickcontact/DataAction;
.super Ljava/lang/Object;
.source "DataAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# static fields
.field private static mHasPhone:Z

.field private static mHasSms:Z

.field private static mHasVideo:Z

.field private static mIsEasyMode:Z


# instance fields
.field private mAlternateIconDescriptionRes:I

.field private mAlternateIconRes:I

.field private mAlternateIntent:Landroid/content/Intent;

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataId:J

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private final mMimeType:Ljava/lang/String;

.field private mPresence:I

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mThirdIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V
    .locals 37
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/contacts/model/dataitem/DataItem;
    .param p3    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p4    # Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v33, -0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-nez p4, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    :goto_0
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    const-string v33, ""

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p3}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v33

    if-eqz v33, :cond_1

    invoke-virtual/range {p2 .. p3}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v27

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v33, v0

    if-nez v33, :cond_7

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->labelRes:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    move-wide/from16 v34, v0

    invoke-static/range {v33 .. v35}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v33

    sput-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v33

    sput-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    new-instance v30, Lcom/samsung/contacts/util/ContactVideoCallManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/contacts/util/ContactVideoCallManager;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v30 .. v30}, Lcom/samsung/contacts/util/ContactVideoCallManager;->isVideoCallButtonShow()Z

    move-result v33

    sput-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasVideo:Z

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    move/from16 v33, v0

    if-eqz v33, :cond_16

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getDisablePhoneNumberFormatting()Z

    move-result v33

    if-eqz v33, :cond_2

    move-object/from16 v19, p2

    check-cast v19, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_3

    move-object/from16 v19, p2

    check-cast v19, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3

    const-string v33, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/ContactsUtils;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v33, v0

    if-nez v33, :cond_4

    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.VIEW"

    invoke-direct/range {v33 .. v34}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    if-nez v33, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v33, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Intent;->getFlags()I

    move-result v34

    const/high16 v35, 0x10000000

    or-int v34, v34, v35

    const/high16 v35, 0x4000000

    or-int v34, v34, v35

    invoke-virtual/range {v33 .. v34}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    move-object/from16 v33, v0

    if-eqz v33, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Intent;->getFlags()I

    move-result v34

    const/high16 v35, 0x10000000

    or-int v34, v34, v35

    const/high16 v35, 0x4000000

    or-int v34, v34, v35

    invoke-virtual/range {v33 .. v34}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_5
    return-void

    :cond_6
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v33

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_8
    const-string v33, "vnd.android.cursor.item/ip-call"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/ContactsUtils;->getIpCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_9
    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v33, :cond_e

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v20

    :goto_4
    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v33, :cond_f

    new-instance v25, Landroid/content/Intent;

    const-string v33, "android.intent.action.SENDTO"

    const-string v34, "smsto"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_5
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v33

    if-nez v33, :cond_a

    if-eqz v25, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v33

    const-string v34, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_a

    const-string v33, "com.android.mms"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    if-eqz v20, :cond_c

    const-string v33, "SKT"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogsOpStyleVariation()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_10

    const-string v33, "call_from_sec"

    const/16 v34, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    :goto_6
    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v33, :cond_11

    const-string v33, "vnd.sec.contact.sim"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_11

    const-string v33, "simSlot"

    const/16 v34, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_c
    :goto_7
    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v33, :cond_13

    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v33, :cond_13

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mIsEasyMode:Z

    if-eqz v33, :cond_12

    const v33, 0x7f0200f4

    :goto_8
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltDescriptionRes:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    :cond_d
    :goto_9
    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasVideo:Z

    if-eqz v33, :cond_3

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/ContactsUtils;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mThirdIntent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_5

    :cond_10
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableAssistDialing()Z

    move-result v33

    if-eqz v33, :cond_b

    const-string v33, "origin"

    const-string v34, "from_contact"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    :cond_11
    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v33, :cond_c

    const-string v33, "vnd.sec.contact.sim2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_c

    const-string v33, "simSlot"

    const/16 v34, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    :cond_12
    const v33, 0x7f0200b9

    goto :goto_8

    :cond_13
    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v33, :cond_14

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_9

    :cond_14
    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v33, :cond_d

    sget-boolean v33, Lcom/android/contacts/quickcontact/DataAction;->mIsEasyMode:Z

    if-eqz v33, :cond_15

    const v33, 0x7f0200f4

    :goto_a
    move/from16 v0, v33

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->iconRes:I

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_9

    :cond_15
    const v33, 0x7f0200b9

    goto :goto_a

    :cond_16
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    move/from16 v33, v0

    if-eqz v33, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_3

    move-object/from16 v24, p2

    check-cast v24, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    invoke-virtual/range {v24 .. v24}, Lcom/android/contacts/model/dataitem/SipAddressDataItem;->getSipAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3

    const-string v33, "sip"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/EmailDataItem;

    move/from16 v33, v0

    if-eqz v33, :cond_18

    move-object/from16 v8, p2

    check-cast v8, Lcom/android/contacts/model/dataitem/EmailDataItem;

    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3

    const-string v33, "mailto"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.SENDTO"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    move/from16 v33, v0

    if-eqz v33, :cond_19

    move-object/from16 v32, p2

    check-cast v32, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    invoke-virtual/range {v32 .. v32}, Lcom/android/contacts/model/dataitem/WebsiteDataItem;->getUrl()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3

    new-instance v31, Landroid/net/WebAddress;

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.VIEW"

    invoke-virtual/range {v31 .. v31}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/ImDataItem;

    move/from16 v33, v0

    if-eqz v33, :cond_22

    move-object/from16 v11, p2

    check-cast v11, Lcom/android/contacts/model/dataitem/ImDataItem;

    invoke-virtual {v11}, Lcom/android/contacts/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v15

    if-nez v15, :cond_1a

    invoke-virtual {v11}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v33

    if-eqz v33, :cond_3

    :cond_1a
    if-eqz v15, :cond_1e

    const/16 v23, 0x5

    :goto_b
    if-eqz v15, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const/16 v34, 0x5

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    :cond_1b
    invoke-virtual {v11}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v7

    const/16 v33, -0x1

    move/from16 v0, v23

    move/from16 v1, v33

    if-eq v0, v1, :cond_1c

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v9

    :cond_1c
    if-eqz v9, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    new-instance v33, Landroid/net/Uri$Builder;

    invoke-direct/range {v33 .. v33}, Landroid/net/Uri$Builder;-><init>()V

    const-string v34, "imto"

    invoke-virtual/range {v33 .. v34}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.SENDTO"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Lcom/android/contacts/model/dataitem/ImDataItem;->getChatCapability()I

    move-result v6

    and-int/lit8 v33, v6, 0x4

    if-eqz v33, :cond_1f

    const/16 v16, 0x1

    :goto_c
    and-int/lit8 v33, v6, 0x1

    if-eqz v33, :cond_20

    const/4 v14, 0x1

    :goto_d
    if-nez v16, :cond_1d

    if-eqz v14, :cond_3

    :cond_1d
    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.SENDTO"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "xmpp:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "?call"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    if-eqz v16, :cond_21

    const v33, 0x7f0201e4

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    const v33, 0x7f0e007c

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_2

    :cond_1e
    invoke-virtual {v11}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v23

    goto/16 :goto_b

    :cond_1f
    const/16 v16, 0x0

    goto :goto_c

    :cond_20
    const/4 v14, 0x0

    goto :goto_d

    :cond_21
    const v33, 0x7f0201e3

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    const v33, 0x7f0e007b

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_2

    :cond_22
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    move/from16 v33, v0

    if-eqz v33, :cond_3

    move-object/from16 v21, p2

    check-cast v21, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v34, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V
    .locals 15
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p4    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    const-string v10, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0141

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    :goto_0
    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v10, v10, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    if-eqz v10, :cond_0

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    :cond_0
    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v10

    sput-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v10

    sput-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    new-instance v9, Lcom/samsung/contacts/util/ContactVideoCallManager;

    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/samsung/contacts/util/ContactVideoCallManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/samsung/contacts/util/ContactVideoCallManager;->isVideoCallButtonShow()Z

    move-result v10

    sput-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasVideo:Z

    const-string v10, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.sec.contact.sim"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "vnd.sec.contact.sim2"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_1
    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-nez v10, :cond_2

    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v10, :cond_6

    :cond_2
    move-object/from16 v4, p4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v10, :cond_a

    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    const-string v11, "tel"

    const/4 v12, 0x0

    invoke-static {v11, v4, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v10, :cond_b

    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string v11, "smsto"

    const-string v12, ","

    const-string v13, "P"

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ";"

    const-string v14, "W"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_2
    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "com.android.mms"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v10, :cond_c

    const-string v10, "vnd.sec.contact.sim"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "simSlot"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    :goto_3
    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v10, :cond_d

    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v10, :cond_d

    iput-object v5, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const v10, 0x7f0200b9

    iput v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const/high16 v11, 0x4000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_5
    :goto_4
    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasVideo:Z

    if-eqz v10, :cond_6

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mThirdIntent:Landroid/content/Intent;

    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    if-nez v10, :cond_7

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    :goto_6
    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const/high16 v11, 0x14000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void

    :cond_8
    const-string v10, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0139

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e01c0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_c
    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v10, :cond_4

    const-string v10, "vnd.sec.contact.sim2"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "simSlot"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_d
    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    if-eqz v10, :cond_e

    iput-object v5, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_4

    :cond_e
    sget-boolean v10, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    if-eqz v10, :cond_5

    iput-object v7, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_4

    :cond_f
    const-string v10, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "mailto"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-static {v10, v0, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.SENDTO"

    invoke-direct {v10, v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_5

    :cond_10
    const-string v10, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    move-object/from16 v1, p4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "sip"

    const/4 v11, 0x0

    invoke-static {v10, v1, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v10, v11, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_5

    :cond_11
    const-string v10, "vnd.android.cursor.item/video-call"

    iget-object v11, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static/range {p4 .. p4}, Lcom/android/contacts/ContactsUtils;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_5

    :cond_12
    const-string v10, "vnd.android.cursor.item/ip-call"

    iget-object v11, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static/range {p4 .. p4}, Lcom/android/contacts/ContactsUtils;->getIpCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_5

    :cond_13
    iget-object v10, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    iput-object p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string v0, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const-string v0, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const-string v1, "com.sds.vapp.voipcall"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const-string v1, "user_account"

    const-string v2, "user_account"

    invoke-virtual {p5, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    const-string v1, "video_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x7f0200d5

    iput v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    :cond_0
    return-void

    :cond_1
    const-string v0, "vnd.chaton.item/vnd.com.chaton.profile"

    iput-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setIsEasyMode(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/contacts/quickcontact/DataAction;->mIsEasyMode:Z

    return-void
.end method

.method public static setPhoneAvailable(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/contacts/quickcontact/DataAction;->mHasPhone:Z

    return-void
.end method

.method public static setSmsAvailable(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/contacts/quickcontact/DataAction;->mHasSms:Z

    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)V
    .locals 1
    .param p1    # Lcom/android/contacts/quickcontact/Action;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)V

    return-void
.end method

.method public getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const-string v3, "vnd.vapp.item/vnd.com.app.account"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sds.vapp.voipcall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v1, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->resourcePackageName:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlternateIconDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlternateIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThirdIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mThirdIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setPresence(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 6
    .param p1    # Lcom/android/contacts/quickcontact/Action;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/contacts/quickcontact/DataAction;

    if-nez v2, :cond_2

    const-string v2, "DataAction"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/DataAction;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
