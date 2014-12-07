.class public Lcom/nuance/connect/system/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
    }
.end annotation


# static fields
.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DISCONNECTED:I = -0x1

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIMAX:I = 0x6


# instance fields
.field private final connectionType:I

.field private final connectionTypeName:Ljava/lang/String;

.field private final hasConnectivity:Z

.field private final isFailover:Z

.field private final isRoaming:Z

.field private final lastConnectionChange:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    iput-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;J)V
    .locals 1
    .param p1    # Landroid/net/NetworkInfo;
    .param p2    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    iput-wide p2, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    return-void
.end method

.method private static isValidConnection(IZLcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z
    .locals 2
    .param p0    # I
    .param p1    # Z
    .param p2    # Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isWifiEnabled()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isCellularEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isCellularEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->isRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isValidConnection(Landroid/net/NetworkInfo;Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z
    .locals 3
    .param p0    # Landroid/net/NetworkInfo;
    .param p1    # Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/nuance/connect/system/NetworkState;->isValidConnection(IZLcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public getConnectionType()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    return v0
.end method

.method public getConnectionTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConnectionChange()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    return-wide v0
.end method

.method public hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z
    .locals 2
    .param p1    # Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    invoke-static {v0, v1, p1}, Lcom/nuance/connect/system/NetworkState;->isValidConnection(IZLcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    return v0
.end method

.method public isRoaming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    return v0
.end method

.method public isSame(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/nuance/connect/system/NetworkState;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/nuance/connect/system/NetworkState;

    iget-boolean v2, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    iget-boolean v3, v0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    iget-boolean v3, v0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    iget v3, v0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    iget-object v3, v0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-boolean v2, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    iget-boolean v3, v0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isStableConnection(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z
    .locals 5
    .param p1    # Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/system/NetworkState;->hasConnectivity(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->getConnectionStableRequirement()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    sub-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;->getConnectionStableRequirement()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isWifi()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasConnectivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/system/NetworkState;->hasConnectivity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isFailover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/system/NetworkState;->isFailover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connectionType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/connect/system/NetworkState;->connectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connectionTypeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/system/NetworkState;->connectionTypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isRoaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/system/NetworkState;->isRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastConnectionChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/nuance/connect/system/NetworkState;->lastConnectionChange:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
