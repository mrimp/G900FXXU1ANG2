.class final Lcom/android/contacts/model/RawContactDelta$3;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/RawContactDelta;
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
        "Lcom/android/contacts/model/RawContactDelta;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDelta;
    .locals 1

    new-instance v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDelta;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDelta;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta$3;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/model/RawContactDelta;
    .locals 1

    new-array v0, p1, [Lcom/android/contacts/model/RawContactDelta;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDelta$3;->newArray(I)[Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    return-object v0
.end method
