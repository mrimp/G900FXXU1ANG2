.class final Lcom/google/android/finsky/api/model/DfeBrowse$1;
.super Ljava/lang/Object;
.source "DfeBrowse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/DfeBrowse;
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
        "Lcom/google/android/finsky/api/model/DfeBrowse;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeBrowse;
    .locals 2
    .param p1    # Landroid/os/Parcel;

    const-class v1, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Browse$BrowseResponse;

    new-instance v1, Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-direct {v1, v0}, Lcom/google/android/finsky/api/model/DfeBrowse;-><init>(Lcom/google/android/finsky/protos/Browse$BrowseResponse;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBrowse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeBrowse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/api/model/DfeBrowse;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/google/android/finsky/api/model/DfeBrowse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBrowse$1;->newArray(I)[Lcom/google/android/finsky/api/model/DfeBrowse;

    move-result-object v0

    return-object v0
.end method