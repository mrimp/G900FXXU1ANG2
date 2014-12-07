.class public Lcom/android/phone/CallGatewayManager;
.super Ljava/lang/Object;
.source "CallGatewayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    }
.end annotation


# static fields
.field public static final EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/phone/CallGatewayManager$RawGatewayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/phone/CallGatewayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallGatewayManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    invoke-direct {v0, v1, v1, v1}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallGatewayManager;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method public static checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p0    # Landroid/content/Intent;
    .param p1    # Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/phone/CallGatewayManager;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/phone/CallGatewayManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkAndCopyPhoneProviderExtras: some or all extras are missing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/net/Uri;

    if-eqz p0, :cond_1

    const-string v0, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2
    .param p0    # Landroid/content/Intent;

    const-string v1, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRawGatewayInfo(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    .locals 3
    .param p0    # Landroid/content/Intent;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/CallGatewayManager;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    const-string v1, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/phone/CallGatewayManager;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    goto :goto_0
.end method

.method public static hasPhoneProviderExtras(Landroid/content/Intent;)Z
    .locals 4
    .param p0    # Landroid/content/Intent;

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearGatewayData(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1    # Lcom/android/internal/telephony/Connection;

    sget-object v0, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/CallGatewayManager;->setGatewayInfoForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)V

    return-void
.end method

.method public getGatewayInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    .locals 2
    .param p1    # Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/phone/CallGatewayManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    goto :goto_0
.end method

.method public setGatewayInfoForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)V
    .locals 1
    .param p1    # Lcom/android/internal/telephony/Connection;
    .param p2    # Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    invoke-virtual {p2}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallGatewayManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallGatewayManager;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
