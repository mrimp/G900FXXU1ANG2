.class Lcom/samsung/dialer/calllog/DirectCallingManager$4;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/calllog/DirectCallingManager;->registerAccelerometer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/DirectCallingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
    .param p2    # I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1    # Landroid/hardware/SensorEvent;

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$400(Lcom/samsung/dialer/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mLastTime:J
    invoke-static {v5}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1600(Lcom/samsung/dialer/calllog/DirectCallingManager;)J

    move-result-wide v5

    sub-long v2, v0, v5

    const-wide/16 v5, 0x12c

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # setter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mLastTime:J
    invoke-static {v5, v0, v1}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1602(Lcom/samsung/dialer/calllog/DirectCallingManager;J)J

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    # setter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->x:F
    invoke-static {v5, v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1702(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    # setter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->y:F
    invoke-static {v5, v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1802(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    # setter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->z:F
    invoke-static {v5, v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1902(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->x:F
    invoke-static {v5}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1700(Lcom/samsung/dialer/calllog/DirectCallingManager;)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->y:F
    invoke-static {v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1800(Lcom/samsung/dialer/calllog/DirectCallingManager;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->z:F
    invoke-static {v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$1900(Lcom/samsung/dialer/calllog/DirectCallingManager;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->lastX:F
    invoke-static {v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$2000(Lcom/samsung/dialer/calllog/DirectCallingManager;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->lastY:F
    invoke-static {v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$2100(Lcom/samsung/dialer/calllog/DirectCallingManager;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->lastZ:F
    invoke-static {v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$2200(Lcom/samsung/dialer/calllog/DirectCallingManager;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    long-to-float v6, v2

    div-float/2addr v5, v6

    const v6, 0x461c4000

    mul-float v4, v5, v6

    const-string v5, "Logs/DirectCallingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Accelerometer Sensor : speed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x42700000

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z
    invoke-static {}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$200()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    # getter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$400(Lcom/samsung/dialer/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x60

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    # setter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->lastX:F
    invoke-static {v5, v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$2002(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    # setter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->lastY:F
    invoke-static {v5, v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$2102(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F

    iget-object v5, p0, Lcom/samsung/dialer/calllog/DirectCallingManager$4;->this$0:Lcom/samsung/dialer/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    # setter for: Lcom/samsung/dialer/calllog/DirectCallingManager;->lastZ:F
    invoke-static {v5, v6}, Lcom/samsung/dialer/calllog/DirectCallingManager;->access$2202(Lcom/samsung/dialer/calllog/DirectCallingManager;F)F

    goto/16 :goto_0
.end method
