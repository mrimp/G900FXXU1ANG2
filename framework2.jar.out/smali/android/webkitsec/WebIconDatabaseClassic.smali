.class Landroid/webkitsec/WebIconDatabaseClassic;
.super Landroid/webkitsec/WebIconDatabase;
.source "WebIconDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebIconDatabaseClassic$1;,
        Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebIconDatabase"

.field private static sIconDatabase:Landroid/webkitsec/WebIconDatabaseClassic;


# instance fields
.field private final mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/webkitsec/WebIconDatabase;-><init>()V

    new-instance v0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;-><init>(Landroid/webkitsec/WebIconDatabaseClassic$1;)V

    iput-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/webkitsec/WebIconDatabaseClassic;->nativeOpen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->nativeClose()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->nativeRemoveAllIcons()V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/webkitsec/WebIconDatabaseClassic;->nativeRetainIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/webkitsec/WebIconDatabaseClassic;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Landroid/webkitsec/WebIconDatabaseClassic;->nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/webkitsec/WebIconDatabaseClassic;
    .locals 1

    sget-object v0, Landroid/webkitsec/WebIconDatabaseClassic;->sIconDatabase:Landroid/webkitsec/WebIconDatabaseClassic;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkitsec/WebIconDatabaseClassic;

    invoke-direct {v0}, Landroid/webkitsec/WebIconDatabaseClassic;-><init>()V

    sput-object v0, Landroid/webkitsec/WebIconDatabaseClassic;->sIconDatabase:Landroid/webkitsec/WebIconDatabaseClassic;

    :cond_0
    sget-object v0, Landroid/webkitsec/WebIconDatabaseClassic;->sIconDatabase:Landroid/webkitsec/WebIconDatabaseClassic;

    return-object v0
.end method

.method private static native nativeClose()V
.end method

.method private static native nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeOpen(Ljava/lang/String;)V
.end method

.method private static native nativeReleaseIconForPageUrl(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveAllIcons()V
.end method

.method private static native nativeRetainIconForPageUrl(Ljava/lang/String;)V
.end method


# virtual methods
.method public bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V
    .locals 4

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->hasHandler()Z
    invoke-static {v2}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$1000(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "contentResolver"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "where"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "listener"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v2, v1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    return-void
.end method

.method createHandler()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->createHandler()V
    invoke-static {v0}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$1100(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;)V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public removeAllIcons()V
    .locals 3

    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V
    .locals 3

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic;->mEventHandler:Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->access$900(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
