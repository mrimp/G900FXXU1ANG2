.class public Landroid/hardware/scontext/SContextEnvironment;
.super Landroid/hardware/scontext/SContextProvider;
.source "SContextEnvironment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEnvironment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextEnvironment$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEnvironment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private getTemperatureHumidityData(I)[D
    .locals 2
    .param p1    # I

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "Temperature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "Humidity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    invoke-super {p0}, Landroid/hardware/scontext/SContextProvider;->describeContents()I

    move-result v0

    return v0
.end method

.method public getData(I)[D
    .locals 2
    .param p1    # I

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->getTemperatureHumidityData(I)[D

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSensorType()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    const-string v1, "EnvSensorType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    iput-object p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
