.class final Lcom/android/server/cepproxyks/ScepKeystoreProxyService$2;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field volatile mConnectedAtLeastOnce:Z

.field final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$2;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$2;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$2;->mConnectedAtLeastOnce:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$2;->mConnectedAtLeastOnce:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Bind to keychain service happened"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$2;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
