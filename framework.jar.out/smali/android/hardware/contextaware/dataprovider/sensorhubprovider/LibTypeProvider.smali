.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "LibTypeProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Looper;
    .param p4    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method protected final getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1
    .param p1    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method protected final getInstructionForDisable()B
    .locals 1

    const/16 v0, -0x4e

    return v0
.end method

.method protected final getInstructionForEnable()B
    .locals 1

    const/16 v0, -0x4f

    return v0
.end method
