.class Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;
.super Ljava/lang/Object;
.source "GlobalNetworkSelectAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GlobalNetworkSelectAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    # getter for: Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->access$200(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iget-object v1, v1, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
