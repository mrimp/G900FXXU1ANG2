.class Lcom/sec/android/app/camera/Camera$40;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$filePaths:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$40;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$40;->val$filePaths:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$40;->val$filePaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$40;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ShareShot;->getShareShotService()Lcom/samsung/shareshot/IShareShotService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/shareshot/IShareShotService;->shareFile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
