.class Lcom/android/mms/cover/MissedMsgActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "MissedMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/cover/MissedMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$9;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "screenOffReceiver onReceive : Screen is off. Missed event finished"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z
    invoke-static {v3}, Lcom/android/mms/cover/MissedMsgActivity;->access$802(Z)Z

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z
    invoke-static {}, Lcom/android/mms/cover/MissedMsgActivity;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$9;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$200(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$9;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$9$1;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$9$1;-><init>(Lcom/android/mms/cover/MissedMsgActivity$9;)V

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity$9;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I
    invoke-static {v2}, Lcom/android/mms/cover/MissedMsgActivity;->access$1000(Lcom/android/mms/cover/MissedMsgActivity;)I

    move-result v2

    # invokes: Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/cover/MissedMsgActivity;->access$1100(Lcom/android/mms/cover/MissedMsgActivity;Ljava/lang/Runnable;IZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$9;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v0, v0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$9$2;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$9$2;-><init>(Lcom/android/mms/cover/MissedMsgActivity$9;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$9;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method