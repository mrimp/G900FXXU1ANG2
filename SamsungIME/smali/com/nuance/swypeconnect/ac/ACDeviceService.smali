.class public final Lcom/nuance/swypeconnect/ac/ACDeviceService;
.super Lcom/nuance/swypeconnect/ac/ACService;
.source "ACDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;
    }
.end annotation


# instance fields
.field private configService:Lcom/nuance/connect/api/ConfigService;

.field private deviceCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private deviceIdFilter:Lcom/nuance/connect/util/ActionFilter;

.field private infoCallback:Lcom/nuance/connect/util/ActionDelegateCallback;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private managerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACManager;",
            ">;"
        }
    .end annotation
.end field

.field private swyperIdFilter:Lcom/nuance/connect/util/ActionFilter;


# direct methods
.method protected constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/connect/api/ConfigService;)V
    .locals 3
    .param p1    # Lcom/nuance/swypeconnect/ac/ACManager;
    .param p2    # Lcom/nuance/connect/api/ConfigService;

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/nuance/connect/util/ActionFilter;

    const-string v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string v2, "com.nuance.connect.TYPE_SWYPER_ID"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/ActionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->swyperIdFilter:Lcom/nuance/connect/util/ActionFilter;

    new-instance v0, Lcom/nuance/connect/util/ActionFilter;

    const-string v1, "com.nuance.connect.DATA_AVAILABLE"

    const-string v2, "com.nuance.connect.TYPE_DEVICE_ID"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/ActionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceIdFilter:Lcom/nuance/connect/util/ActionFilter;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACDeviceService$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACDeviceService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACDeviceService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->infoCallback:Lcom/nuance/connect/util/ActionDelegateCallback;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->managerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACDeviceService;)Lcom/nuance/connect/util/ActionFilter;
    .locals 1
    .param p0    # Lcom/nuance/swypeconnect/ac/ACDeviceService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->swyperIdFilter:Lcom/nuance/connect/util/ActionFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACDeviceService;)V
    .locals 0
    .param p0    # Lcom/nuance/swypeconnect/ac/ACDeviceService;

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->notifyCallbacksOfSwyperId()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACDeviceService;)Lcom/nuance/connect/util/ActionFilter;
    .locals 1
    .param p0    # Lcom/nuance/swypeconnect/ac/ACDeviceService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceIdFilter:Lcom/nuance/connect/util/ActionFilter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACDeviceService;)V
    .locals 0
    .param p0    # Lcom/nuance/swypeconnect/ac/ACDeviceService;

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->notifyCallbacksOfDeviceId()V

    return-void
.end method

.method private notifyCallbacksOfDeviceId()V
    .locals 3

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;->deviceRegistered(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyCallbacksOfSwyperId()V
    .locals 3

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v2}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;->swyperId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string v0, "DEVICE"

    return-object v0
.end method

.method public getSwyperId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->configService:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getSwyperId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;)V
    .locals 4
    .param p1    # Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->swyperIdFilter:Lcom/nuance/connect/util/ActionFilter;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceIdFilter:Lcom/nuance/connect/util/ActionFilter;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->infoCallback:Lcom/nuance/connect/util/ActionDelegateCallback;

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->registerActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;Ljava/util/List;)V

    :cond_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDeviceService;->unregisterCallbacks()V

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;)V
    .locals 3
    .param p1    # Lcom/nuance/swypeconnect/ac/ACDeviceService$ACDeviceCallback;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->infoCallback:Lcom/nuance/connect/util/ActionDelegateCallback;

    invoke-interface {v1, v2}, Lcom/nuance/connect/api/ConnectServiceManager;->unregisterActionCallback(Lcom/nuance/connect/util/ActionDelegateCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDeviceService;->deviceCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
