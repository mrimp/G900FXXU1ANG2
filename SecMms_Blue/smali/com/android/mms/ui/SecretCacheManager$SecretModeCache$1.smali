.class final Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$1;
.super Ljava/lang/Object;
.source "SecretCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Mms/SecretCacheManager"

    const-string v1, "init start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->fill()V

    const-string v0, "Mms/SecretCacheManager"

    const-string v1, "init end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
