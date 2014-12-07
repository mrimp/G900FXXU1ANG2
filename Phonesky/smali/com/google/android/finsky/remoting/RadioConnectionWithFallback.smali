.class public Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;
.super Ljava/lang/Object;
.source "RadioConnectionWithFallback.java"

# interfaces
.implements Lcom/google/android/finsky/remoting/RadioConnection;


# instance fields
.field private final mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

.field private final mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

.field private mUseFallback:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/RadioConnection;Lcom/google/android/finsky/remoting/RadioConnection;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/remoting/RadioConnection;
    .param p2    # Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

    iput-object p2, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mUseFallback:Z

    return-void
.end method


# virtual methods
.method public ensureRouteToHost(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mUseFallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/remoting/RadioConnection;->ensureRouteToHost(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/remoting/RadioConnection;->ensureRouteToHost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v1}, Lcom/google/android/finsky/remoting/RadioConnection;->start()V
    :try_end_0
    .catch Lcom/google/android/finsky/remoting/RadioConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mUseFallback:Z

    iget-object v1, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v1}, Lcom/google/android/finsky/remoting/RadioConnection;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/finsky/remoting/RadioConnectionException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mUseFallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mFallback:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v0}, Lcom/google/android/finsky/remoting/RadioConnection;->stop()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;->mPrimary:Lcom/google/android/finsky/remoting/RadioConnection;

    invoke-interface {v0}, Lcom/google/android/finsky/remoting/RadioConnection;->stop()V

    goto :goto_0
.end method