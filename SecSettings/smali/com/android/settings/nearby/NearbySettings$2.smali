.class Lcom/android/settings/nearby/NearbySettings$2;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/NearbySettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$2;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "NearbySettings"

    const-string v1, "onOptionsItemSelected"

    const-string v2, "MENU_DEVICE_NAME : Negative"

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
