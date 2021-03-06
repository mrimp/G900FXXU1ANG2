.class public Lcom/google/android/finsky/download/DownloadQueueImpl;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueue;
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/download/DownloadQueueImpl$8;,
        Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;,
        Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;,
        Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;,
        Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

.field private mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

.field private mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueueListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxConcurrent:I

.field private mPendingQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousContentUri:Landroid/net/Uri;

.field private mPreviousProgressStatus:I

.field private mRunningMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/finsky/download/DownloadManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousProgressStatus:I

    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setupQueue()V

    iput p2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/download/DownloadManager;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl;-><init>(Landroid/content/Context;ILcom/google/android/finsky/download/DownloadManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/download/DownloadQueueImpl;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadProgressManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadProgressManager;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/finsky/download/DownloadQueueImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    return-object v0
.end method

.method private enqueueDownload(Lcom/google/android/finsky/download/InternalDownload;)V
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/google/android/finsky/download/InternalDownload;->createDownloadRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$7;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl$7;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/InternalDownload;Landroid/content/Context;)V

    invoke-interface {v2, v1, v3}, Lcom/google/android/finsky/download/DownloadManager;->enqueue(Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    return-void
.end method

.method private remove(Lcom/google/android/finsky/download/InternalDownload;)V
    .locals 5

    const-string v1, "Download %s removed from DownloadQueue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->startNextDownload()V

    goto :goto_0
.end method

.method private removeFromDownloadManager(Lcom/google/android/finsky/download/InternalDownload;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private setupQueue()V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    return-void
.end method

.method private startNextDownload()V
    .locals 9

    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    iget v7, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I

    if-lt v6, v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getMaximumSize()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$1;)V

    invoke-static {v6, v2, v3, v7}, Lcom/google/android/finsky/utils/PackageManagerUtils;->freeStorageAndNotify(Landroid/content/Context;JLcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/download/InternalDownload;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getExisting(Ljava/lang/String;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Tried to add invalid download to DownloadQueue."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string v0, "Download %s added to DownloadQueue"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/download/DownloadProgressManager;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    :cond_2
    sget-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->startNextDownload()V

    return-void
.end method

.method public addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download queue recovering download %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/download/DownloadProgressManager;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    :cond_0
    return-void
.end method

.method public cancel(Lcom/google/android/finsky/download/Download;)V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    :cond_2
    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    goto :goto_0
.end method

.method public getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;
    .locals 7

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "empty packageName"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    return-object v1

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v3}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDownloadByContentUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/Download;
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v0

    goto :goto_1
.end method

.method public getDownloadManager()Lcom/google/android/finsky/download/DownloadManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    return-object v0
.end method

.method getExisting(Ljava/lang/String;)Lcom/google/android/finsky/download/InternalDownload;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRunningUris()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, -0x1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    const/4 v3, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v7}, Lcom/google/android/finsky/download/DownloadManager;->queryAllDownloads()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    :try_start_1
    const-string v7, "_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v7, "status"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v8, :cond_3

    if-ne v1, v8, :cond_4

    :cond_3
    const-string v7, "Missing column(s) in download mgr cursor"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v5

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    new-instance v7, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;

    invoke-direct {v7, v2, v6}, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v7

    :cond_6
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public notifyClicked(Lcom/google/android/finsky/download/InternalDownload;)V
    .locals 4

    const-string v0, "%s: onNotificationClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->NOTIFICATION_CLICKED:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    return-void
.end method

.method notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V
    .locals 6

    move-object v2, p2

    check-cast v2, Lcom/google/android/finsky/download/InternalDownload;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-nez p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    sget-object v4, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Bad listener type."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-interface {v2}, Lcom/google/android/finsky/download/InternalDownload;->getProgress()Lcom/google/android/finsky/download/DownloadProgress;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/google/android/finsky/download/InternalDownload;->getHttpStatus()I

    move-result v0

    goto :goto_1

    :pswitch_0
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$1;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    :goto_2
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$2;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_2

    :pswitch_2
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$3;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V

    goto :goto_2

    :pswitch_3
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$4;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_2

    :pswitch_4
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$5;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl$5;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;I)V

    goto :goto_2

    :pswitch_5
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$6;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public notifyProgress(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/DownloadProgress;)V
    .locals 5

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getProgress()Lcom/google/android/finsky/download/DownloadProgress;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/download/DownloadProgress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/finsky/download/InternalDownload;->setProgress(Lcom/google/android/finsky/download/DownloadProgress;)V

    const/4 v0, 0x0

    iget v1, p2, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    iget v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousProgressStatus:I

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "%s: onProgress %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/google/android/finsky/download/DownloadProgress;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    iget v1, p2, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    iput v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousProgressStatus:I

    :cond_2
    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->PROGRESS:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v1, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    const-string v1, "%s: onCancel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->removeFromDownloadManager(Lcom/google/android/finsky/download/InternalDownload;)V

    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .locals 4

    const-string v0, "%s: onComplete"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Lcom/google/android/finsky/download/InternalDownload;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V

    return-void
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    const-string v1, "%s: onError %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x193

    if-eq p2, v1, :cond_0

    const/16 v1, 0x191

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/api/VendingApi;->getApiContext()Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/vending/remoting/api/VendingApiContext;->scheduleReauthentication(Z)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->removeFromDownloadManager(Lcom/google/android/finsky/download/InternalDownload;)V

    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .locals 4

    const-string v0, "%s: onStart"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public release(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    return-void
.end method

.method public setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V
    .locals 3

    invoke-interface {p1, p2}, Lcom/google/android/finsky/download/InternalDownload;->setState(Lcom/google/android/finsky/download/Download$DownloadState;)V

    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "enum %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->START:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->CANCEL:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ERROR:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->COMPLETE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method startDownload(Lcom/google/android/finsky/download/InternalDownload;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Download %s starting"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->enqueueDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    goto :goto_0
.end method
