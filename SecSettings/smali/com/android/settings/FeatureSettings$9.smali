.class Lcom/android/settings/FeatureSettings$9;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettings;

.field final synthetic val$setting_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iput-object p2, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "air_motion"

    iget-object v1, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "air_view"

    iget-object v1, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const-string v0, "smart_stay"

    iget-object v1, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-string v0, "smart_pause"

    iget-object v1, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    const-string v0, "smart_scroll"

    iget-object v1, p0, Lcom/android/settings/FeatureSettings$9;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FeatureSettings$9;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
