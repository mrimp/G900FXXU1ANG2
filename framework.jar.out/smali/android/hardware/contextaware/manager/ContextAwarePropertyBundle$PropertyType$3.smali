.class final enum Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$3;
.super Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    # getter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longVal:J
    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$300()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    # setter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longVal:J
    invoke-static {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$302(J)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    # setter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longVal:J
    invoke-static {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$302(J)J

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    # setter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longVal:J
    invoke-static {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$302(J)J

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    # setter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longVal:J
    invoke-static {v0, v1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$302(J)J

    goto :goto_0
.end method
