.class Lcom/android/keyguard/FaceVoiceUnlock$2;
.super Ljava/lang/Object;
.source "FaceVoiceUnlock.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FaceVoiceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/FaceVoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FaceVoiceUnlock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/FaceVoiceUnlock$2;->this$0:Lcom/android/keyguard/FaceVoiceUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    const-string v0, "FULLockscreen"

    const-string v1, "Connected to Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock$2;->this$0:Lcom/android/keyguard/FaceVoiceUnlock;

    invoke-static {p2}, Lcom/android/internal/policy/IFaceLockInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IFaceLockInterface;

    move-result-object v1

    # setter for: Lcom/android/keyguard/FaceVoiceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;
    invoke-static {v0, v1}, Lcom/android/keyguard/FaceVoiceUnlock;->access$302(Lcom/android/keyguard/FaceVoiceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock$2;->this$0:Lcom/android/keyguard/FaceVoiceUnlock;

    # getter for: Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FaceVoiceUnlock;->access$400(Lcom/android/keyguard/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    const-string v0, "FULLockscreen"

    const-string v1, "Unexpected disconnect from Face Unlock service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceVoiceUnlock$2;->this$0:Lcom/android/keyguard/FaceVoiceUnlock;

    # getter for: Lcom/android/keyguard/FaceVoiceUnlock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/FaceVoiceUnlock;->access$400(Lcom/android/keyguard/FaceVoiceUnlock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
