.class Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSecurityViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;->this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;->this$0:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    # invokes: Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setCameraVisible()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->access$000(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    :cond_0
    return-void
.end method
