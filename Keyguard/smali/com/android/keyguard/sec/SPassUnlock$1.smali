.class Lcom/android/keyguard/sec/SPassUnlock$1;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "SPassUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SPassUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SPassUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SPassUnlock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SPassUnlock$1;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SPassUnlock$1;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/SPassUnlock;->access$000(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SPassUnlock$1;->this$0:Lcom/android/keyguard/sec/SPassUnlock;

    # getter for: Lcom/android/keyguard/sec/SPassUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/sec/SPassUnlock;->access$000(Lcom/android/keyguard/sec/SPassUnlock;)Landroid/os/Handler;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "SPassUnlock"

    const-string v2, "Invalid Event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
