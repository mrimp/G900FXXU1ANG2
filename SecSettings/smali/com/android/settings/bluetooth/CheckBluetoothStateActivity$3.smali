.class Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;
.super Ljava/lang/Object;
.source "CheckBluetoothStateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->showEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$3;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    # invokes: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->processEnableResult()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$300(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    return-void
.end method
