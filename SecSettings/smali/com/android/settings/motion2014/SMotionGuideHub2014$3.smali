.class Lcom/android/settings/motion2014/SMotionGuideHub2014$3;
.super Ljava/lang/Object;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;->showTalkBackDisableDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

.field final synthetic val$motion_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    iput-object p2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->val$motion_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;

    const/4 v0, 0x0

    const-string v1, "air_motion_turn"

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$100(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$3;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # invokes: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$1200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    return-void
.end method
