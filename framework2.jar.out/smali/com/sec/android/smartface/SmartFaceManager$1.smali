.class Lcom/sec/android/smartface/SmartFaceManager$1;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/smartface/SmartFaceManager;->checkForSmartStay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/smartface/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/sec/android/smartface/SmartFaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/smartface/SmartFaceManager$1;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 3

    const-string v0, "SmartFaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForSmartStay onInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$1;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$000(Lcom/sec/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$1;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    iget v1, p1, Lcom/sec/android/smartface/FaceInfo;->needToStay:I

    # setter for: Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I
    invoke-static {v0, v1}, Lcom/sec/android/smartface/SmartFaceManager;->access$102(Lcom/sec/android/smartface/SmartFaceManager;I)I

    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$1;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$200(Lcom/sec/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager$1;->this$0:Lcom/sec/android/smartface/SmartFaceManager;

    # getter for: Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lcom/sec/android/smartface/SmartFaceManager;->access$000(Lcom/sec/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-void
.end method
