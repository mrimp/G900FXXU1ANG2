.class public Lcom/android/mms/transaction/RetrieveTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final COLUMN_CONTENT_LOCATION:I = 0x0

.field static final COLUMN_LOCKED:I = 0x1

.field static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"


# instance fields
.field private final mContentLocation:Ljava/lang/String;

.field private mLocked:Z

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    const-string v0, "content://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RetrieveTransaction] X-Mms-Content-Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initializing from X-Mms-Content-Location is abandoned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iput-boolean v9, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    if-eqz v7, :cond_4

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v9

    if-eqz v9, :cond_3

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v4, "(m_id = ? AND m_type = ?)"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    aput-object v8, v5, v11

    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v11

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v10

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v11

    goto :goto_0
.end method

.method private sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x12

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getMmsReportAllowed(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v1, v5, v3, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[BI)V

    :goto_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/transaction/Transaction;->sendPdu([BLjava/lang/String;)[B

    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v1, v5, v3}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, "insert-address-token"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    goto :goto_2
.end method

.method private static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "locked"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getContentLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public process()V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 29

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/16 v6, 0x81

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->isMessageExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Mms:transaction"

    const-string v5, "RetrieveTransaction - Msg Not Exist"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/Transaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v26

    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/mms/util/AddressUtils;->checkUnknownAddress(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    if-nez v3, :cond_3

    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v27

    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "404"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] 404 Not Found exception"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v11, v4}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setTypeTransState(I)V

    :cond_1
    const-string v4, "resp_st"

    const/16 v5, 0xe4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "RetrieveConf"

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    :cond_4
    const/16 v28, -0x1

    const-wide/16 v21, -0x1

    const/4 v14, 0x0

    const/16 v25, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsAutoDownload4Spam()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "spammms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v25, 0x1

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/android/mms/transaction/Transaction;->updateMessageSize(Landroid/net/Uri;Landroid/net/Uri;)V

    :cond_6
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0, v6, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_c

    const-wide/16 v4, -0x1

    cmp-long v4, v21, v4

    if-eqz v4, :cond_7

    const-string v4, "WAP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction]  update the date in thread"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "date"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v4, Lcom/android/mms/util/DummyFramework$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    move/from16 v0, v28

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_9

    :cond_8
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "thread_id"

    aput-object v5, v15, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v19

    const/16 v20, -0x1

    if-eqz v19, :cond_a

    :try_start_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v20

    :cond_a
    if-eqz v19, :cond_b

    :try_start_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_b
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move/from16 v0, v20

    int-to-long v8, v0

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    :cond_c
    if-eqz v14, :cond_d

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v14}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    if-nez v25, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v4, v14, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-static {v4, v14, v5, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateMmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;I)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z

    move-result v25

    goto/16 :goto_2

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)Z

    move-result v25

    goto/16 :goto_2

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-nez v4, :cond_11

    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_11
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    if-eqz v25, :cond_18

    sget-object v4, Lcom/android/mms/util/DummyFramework$SpamMms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v25

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v14

    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_13

    :cond_12
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_17

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "thread_id"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v19

    if-eqz v19, :cond_14

    :try_start_9
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction] Thread Id is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_14
    if-eqz v19, :cond_15

    :try_start_a
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_15
    const/4 v4, -0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_17

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const-string v5, "\'sms\' as type"

    aput-object v5, v7, v4

    const/4 v4, 0x2

    const-string v5, "date"

    aput-object v5, v7, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thread_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") UNION  select DISTINCT _id,\'mms\' as type, date * 1000 AS date from pdu where (thread_id= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "date DESC LIMIT 2"

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v19

    if-eqz v19, :cond_16

    :try_start_b
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-string v4, "WAP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction]  date last is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-string v4, "WAP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction]  date last is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_16
    if-eqz v19, :cond_17

    :try_start_c
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/mms/transaction/TransactionState;->setIsSpam(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4, v14}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    invoke-static {v4, v14, v5, v6}, Lcom/android/mms/transaction/RetrieveTransaction;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] Retrieval failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    throw v4

    :catch_1
    move-exception v23

    :try_start_d
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RetrieveTransaction] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v23 .. v23}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_18
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_5

    :catchall_1
    move-exception v4

    if-eqz v19, :cond_19

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_19
    throw v4

    :catchall_2
    move-exception v4

    if-eqz v19, :cond_1a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v4

    :catchall_3
    move-exception v4

    if-eqz v19, :cond_1b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_1b
    throw v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_1c
    :try_start_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "410"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] 410 Gone exception"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setTypeTransState(I)V

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    const v5, 0x7f0c01b8

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    new-instance v11, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v11, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "resp_st"

    const/16 v5, 0xe0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    :cond_1d
    const-string v5, "Mms:transaction"

    const-string v6, "[RetrieveTransaction] Retrieval succeeded."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1e
    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] Retrieval succeeded."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] Retrieval succeeded."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    const-string v4, "Mms:transaction"

    const-string v5, "[RetrieveTransaction] Retrieval succeeded."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
