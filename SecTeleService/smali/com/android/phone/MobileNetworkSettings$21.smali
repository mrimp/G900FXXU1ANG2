.class Lcom/android/phone/MobileNetworkSettings$21;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;

.field final synthetic val$buttonDataRoamingMode:I


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$21;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iput p2, p0, Lcom/android/phone/MobileNetworkSettings$21;->val$buttonDataRoamingMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$21;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget v1, p0, Lcom/android/phone/MobileNetworkSettings$21;->val$buttonDataRoamingMode:I

    # invokes: Lcom/android/phone/MobileNetworkSettings;->setSelectedDataRoamingMode(I)V
    invoke-static {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->access$2300(Lcom/android/phone/MobileNetworkSettings;I)V

    return-void
.end method
