.class Lcom/android/phone/TPhoneService$2;
.super Ljava/lang/Object;
.source "TPhoneService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/bluetooth/BluetoothProfile;

    iget-object v0, p0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    # setter for: Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/android/phone/TPhoneService;->access$402(Lcom/android/phone/TPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v0, p0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Got BluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Lcom/android/phone/TPhoneService;->access$400(Lcom/android/phone/TPhoneService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Lcom/android/phone/TPhoneService;->access$402(Lcom/android/phone/TPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
