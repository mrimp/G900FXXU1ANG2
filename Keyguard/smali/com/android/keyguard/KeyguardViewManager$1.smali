.class Lcom/android/keyguard/KeyguardViewManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v4

    if-eqz p1, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    if-nez p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardViewManager;->updateShowWallpaper(Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v4, "onSetBackground()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$300(Lcom/android/keyguard/KeyguardViewManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bmp == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # setter for: Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z
    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardViewManager;->access$302(Lcom/android/keyguard/KeyguardViewManager;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->update()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_0

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bmp != null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # setter for: Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardViewManager;->access$302(Lcom/android/keyguard/KeyguardViewManager;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_6

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bmp == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->update()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setLayerAndBitmapForParticleEffect()V

    goto/16 :goto_2

    :cond_6
    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bmp != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setLayerAndBitmapForParticleEffect()V

    goto/16 :goto_2
.end method
