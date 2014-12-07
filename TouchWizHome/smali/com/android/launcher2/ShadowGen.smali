.class public Lcom/android/launcher2/ShadowGen;
.super Ljava/lang/Object;
.source "ShadowGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ShadowGen$1;,
        Lcom/android/launcher2/ShadowGen$GenThread;,
        Lcom/android/launcher2/ShadowGen$QueuedBitmap;,
        Lcom/android/launcher2/ShadowGen$CallbackEntry;,
        Lcom/android/launcher2/ShadowGen$GeneratedCallback;
    }
.end annotation


# static fields
.field private static fovydiff:F

.field private static iconSize:I

.field private static sInstance:Lcom/android/launcher2/ShadowGen;


# instance fields
.field private mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/launcher2/ShadowGen$QueuedBitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher2/ShadowGen;->iconSize:I

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/ShadowGen;->fovydiff:F

    new-instance v0, Lcom/android/launcher2/ShadowGen;

    invoke-direct {v0}, Lcom/android/launcher2/ShadowGen;-><init>()V

    sput-object v0, Lcom/android/launcher2/ShadowGen;->sInstance:Lcom/android/launcher2/ShadowGen;

    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/launcher2/ShadowGen;->iconSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher2/ShadowGen;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ShadowGen;->sInstance:Lcom/android/launcher2/ShadowGen;

    return-object v0
.end method

.method public static native nCompositeLayer(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Z
.end method

.method public static native nExtractLayers([Landroid/graphics/Bitmap;I)Z
.end method

.method private start()V
    .locals 2

    new-instance v0, Lcom/android/launcher2/ShadowGen$GenThread;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowGen$GenThread;-><init>(Lcom/android/launcher2/ShadowGen;)V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const-string v1, "ShadowGen"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;Landroid/content/res/Resources;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    :cond_0
    sget v2, Lcom/android/launcher2/ShadowGen;->iconSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const v2, 0x7f0d0064

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/ShadowGen;->iconSize:I

    :cond_1
    new-instance v1, Lcom/android/launcher2/ShadowGen$QueuedBitmap;

    invoke-direct {v1, v4}, Lcom/android/launcher2/ShadowGen$QueuedBitmap;-><init>(Lcom/android/launcher2/ShadowGen$1;)V

    invoke-virtual {v1, p1}, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;

    invoke-direct {v0, v4}, Lcom/android/launcher2/ShadowGen$CallbackEntry;-><init>(Lcom/android/launcher2/ShadowGen$1;)V

    iput-object p2, v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->callback:Lcom/android/launcher2/ShadowGen$GeneratedCallback;

    iput-object p3, v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen;->start()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public startInBackground(Landroid/content/res/Resources;)V
    .locals 2

    sget v0, Lcom/android/launcher2/ShadowGen;->iconSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d0064

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/launcher2/ShadowGen;->iconSize:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen;->start()V

    :cond_1
    return-void
.end method
