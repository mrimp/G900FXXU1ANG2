.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;
.super Landroid/database/ContentObserver;
.source "QuickConnectQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickConnectObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    const-string v0, "STATUSBAR-QuickConnectQuickSettingButton"

    const-string v1, "QuickConnectObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$QuickConnectObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->showHideQConnectLayout()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;)V

    return-void
.end method
