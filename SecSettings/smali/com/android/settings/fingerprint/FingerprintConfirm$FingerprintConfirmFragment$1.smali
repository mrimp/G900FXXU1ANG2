.class Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 5

    move-object v1, p1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->access$002(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->access$000(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->access$000(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ChooseLockSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFingerprintEvent: Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
