.class Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "UltraPowerSavingQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method
