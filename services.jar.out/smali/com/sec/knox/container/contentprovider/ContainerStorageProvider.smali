.class public Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;
.super Ljava/lang/Object;
.source "ContainerStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/ContainerStorageProvider$ContainerDbErrorHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "ContainerStorageProvider"

.field private static mQuotesPreferencesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

.field mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->$assertionsDisabled:Z

    sput-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sput-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    sput-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/knox/container/contentprovider/DBConstants;->AUTHORITY:Ljava/lang/String;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containerid"

    const-string v2, "containerid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "admin_uid"

    const-string v2, "admin_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "packages"

    const-string v2, "packages"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_signature"

    const-string v2, "original_signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "installation_source"

    const-string v2, "installation_source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "app_uid"

    const-string v2, "app_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->AUTHORITY:Ljava/lang/String;

    sget-object v2, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_TABLE_ACTIVESTATUS_NAME:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "activestatus"

    const-string v2, "activestatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "password"

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "passwordstatus"

    const-string v2, "passwordstatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "email"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "securitytext"

    const-string v2, "securitytext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "securityicon"

    const-string v2, "securityicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "androidid"

    const-string v2, "androidid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "failedpasswordattempts"

    const-string v2, "failedpasswordattempts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "locktype"

    const-string v2, "locktype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containertype"

    const-string v2, "containertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containerLockOnScreenLock"

    const-string v2, "containerLockOnScreenLock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containerPwdVerfyOnModeChange"

    const-string v2, "containerPwdVerfyOnModeChange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deviceFirmwareVersion"

    const-string v2, "deviceFirmwareVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "new_signature_creationtime"

    const-string v2, "new_signature_creationtime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "orig_signature"

    const-string v2, "orig_signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->AUTHORITY:Ljava/lang/String;

    sget-object v2, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mDbHelper:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider$ContainerDbErrorHandler;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider$ContainerDbErrorHandler;-><init>(Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;)V

    invoke-static {p1, v0}, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mDbHelper:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mDbHelper:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private checkIfNullUriMatcher(Landroid/net/Uri;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v0, :cond_2

    :cond_0
    const-string v3, "ContainerStorageProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri is null? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " uri matcher is null? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in query method"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private getCursorForQuery(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v9

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "ContainerStorageProvider"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    const-string v1, "ContainerStorageProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSQLiteDataBaseObj is null? true  mSQLiteQueryBuilderObj is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSQLiteDataBaseObj is open? null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v0, "ContainerStorageProvider"

    const-string v1, "returning null cursor"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "ContainerStorageProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSQLiteDataBaseObj is null false  mSQLiteQueryBuilderObj is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSQLiteDataBaseObj is open? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;
    .locals 1

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    :cond_0
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    return-object v0
.end method

.method private getSQLiteQueryBuilderObj(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .locals 2

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->updateBuilderObj(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "ContainerStorageProvider"

    const-string v1, "container database"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_TABLE_NAME:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "ContainerStorageProvider"

    const-string v1, "active status database"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_TABLE_ACTIVESTATUS_NAME:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "ContainerStorageProvider"

    const-string v1, "certificate manager database table"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_TABLE_NAME:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateBuilderObj(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "ContainerStorageProvider"

    const-string/jumbo v1, "updatebuilderobj"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x1

    sget-boolean v3, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->checkIfNullUriMatcher(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "ContainerStorageProvider"

    const-string v3, "deleting database"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    const-string v3, "ContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db is null ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->checkIfNullUriMatcher(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-object v1

    :cond_0
    if-eqz p2, :cond_2

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    :goto_1
    const-wide/16 v2, 0x0

    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v6, "ContainerStorageProvider"

    const-string v7, "inserting database"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    const/4 v1, 0x0

    :try_start_0
    sget-object v6, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v6, "ContainerStorageProvider"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v6, Landroid/database/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert row into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    goto :goto_1

    :pswitch_0
    :try_start_1
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    :pswitch_2
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->checkIfNullUriMatcher(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    :goto_0
    monitor-exit p0

    return-object v7

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getSQLiteQueryBuilderObj(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getCursorForQuery(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_0
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->checkIfNullUriMatcher(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "ContainerStorageProvider"

    const-string/jumbo v3, "updating database"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_3
    const-string v3, "ContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db is null ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_4

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    const-string v2, "ContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db is open ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method
