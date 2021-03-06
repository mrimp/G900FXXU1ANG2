.class public Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;
.super Ljava/lang/Object;
.source "AppIconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/AppIconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIconLoader"
.end annotation


# static fields
.field private static sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;


# instance fields
.field private mAppPackage:Ljava/lang/String;

.field private mIconFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AppIconLoader must be initialized before use."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p2, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mAppPackage:Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/32 v3, 0xa4cb80

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    sget-object v1, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    iget-object v2, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    invoke-virtual {v1, p2, v2}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->destroy(Ljava/lang/String;Ljava/io/File;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mAppPackage:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->fileNameFromPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    :cond_2
    return-void
.end method

.method public static fileNameFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thmb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initialize([Ljava/io/File;)V
    .locals 8

    const-class v6, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    if-nez v5, :cond_1

    new-instance v5, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    const/16 v7, 0x14

    invoke-direct {v5, v7}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;-><init>(I)V

    sput-object v5, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->isTempFileName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    invoke-static {v2}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->packageNameFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static isTempFileName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "thmb_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static packageNameFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIconFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    return-object v0
.end method

.method public loadToFileFromBlob(Ljava/lang/String;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V
    .locals 4

    sget-object v2, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    iget-object v3, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mAppPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->callOnComplete()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->callOnComplete()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write icon blob to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->callOnComplete()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->callOnComplete()V

    throw v2
.end method

.method public loadToFileFromUrl(Ljava/lang/String;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V
    .locals 5

    sget-object v2, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->sIconCache:Lcom/google/android/finsky/providers/AppIconProvider$IconCache;

    iget-object v3, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mAppPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/providers/AppIconProvider$IconCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->callOnComplete()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;

    iget-object v2, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->mIconFile:Ljava/io/File;

    new-instance v3, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$1;

    invoke-direct {v3, p0, p2}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$1;-><init>(Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V

    new-instance v4, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$2;

    invoke-direct {v4, p0, p2}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$2;-><init>(Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
