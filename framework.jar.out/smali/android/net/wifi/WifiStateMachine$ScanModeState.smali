.class Landroid/net/wifi/WifiStateMachine$ScanModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanModeState"
.end annotation


# instance fields
.field private mLastOperationMode:I

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "WifiNative.WIFI_NATIVE_CMD_NOTIFY_STATE_SCANONLY : enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    const/16 v1, 0x35

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->disconnect()Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v0

    const v1, 0x20070

    invoke-virtual {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    iget v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyDisabledCaptivePortalStatus(ILjava/lang/String;Z)V
    invoke-static {v0, v2, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$14600(Landroid/net/wifi/WifiStateMachine;ILjava/lang/String;Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$14700(Landroid/net/wifi/WifiStateMachine;Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z
    invoke-static {v0, v2}, Landroid/net/wifi/WifiStateMachine;->access$1602(Landroid/net/wifi/WifiStateMachine;Z)Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    :cond_1
    return-void
.end method

.method public exit()V
    .locals 3

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "WifiNative.WIFI_NATIVE_CMD_NOTIFY_STATE_SCANONLY : exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1    # Landroid/os/Message;

    const/16 v6, 0x15

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;Z)V

    goto :goto_0

    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_3

    iget v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x20083

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v1}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot20_enable"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    const-string v4, "ON"

    invoke-virtual {v3, v6, v4}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->reconnect()Z

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateMachine;->access$12402(Landroid/net/wifi/WifiStateMachine;I)I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;Z)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v1, v5}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;I)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$18000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$22500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    const-string v4, "OFF"

    invoke-virtual {v3, v6, v4}, Landroid/net/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_1

    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;I)V

    move v1, v2

    goto/16 :goto_0

    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/WorkSource;

    # invokes: Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static {v3, v4, v1}, Landroid/net/wifi/WifiStateMachine;->access$18500(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ScanModeState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$18600(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20047 -> :sswitch_2
        0x20048 -> :sswitch_1
    .end sparse-switch
.end method
