.class Lcom/android/settings/AirButtonHelp$3;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirButtonHelp;->showAirCommandEnabledPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirButtonHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/AirButtonHelp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$3;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirButtonHelp$3;->this$0:Lcom/android/settings/AirButtonHelp;

    # invokes: Lcom/android/settings/AirButtonHelp;->turnOnPenInfoPreview()V
    invoke-static {v0}, Lcom/android/settings/AirButtonHelp;->access$200(Lcom/android/settings/AirButtonHelp;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirButtonHelp$3;->this$0:Lcom/android/settings/AirButtonHelp;

    # getter for: Lcom/android/settings/AirButtonHelp;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/AirButtonHelp;->access$000(Lcom/android/settings/AirButtonHelp;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/AirButtonHelp$3;->this$0:Lcom/android/settings/AirButtonHelp;

    # getter for: Lcom/android/settings/AirButtonHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AirButtonHelp;->access$100(Lcom/android/settings/AirButtonHelp;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
