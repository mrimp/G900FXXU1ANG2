.class final Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList$1;
.super Ljava/lang/Object;
.source "ConsumptionAppDocList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/services/ConsumptionAppDoc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    new-instance v2, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v2, v0, v1}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;-><init>(ILjava/util/List;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .locals 1

    new-array v0, p1, [Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList$1;->newArray(I)[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    move-result-object v0

    return-object v0
.end method
