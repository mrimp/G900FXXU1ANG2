.class Lcom/android/phone/callsettings/IpCall$13;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    const-string v1, "Fragment finished. We ignore updateRejectMessage."

    # invokes: Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$13;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$100(Lcom/android/phone/callsettings/IpCall;)V

    goto :goto_0
.end method
