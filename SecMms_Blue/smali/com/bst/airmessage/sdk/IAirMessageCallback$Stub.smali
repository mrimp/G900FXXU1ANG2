.class public abstract Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub;
.super Landroid/os/Binder;
.source "IAirMessageCallback.java"

# interfaces
.implements Lcom/bst/airmessage/sdk/IAirMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bst/airmessage/sdk/IAirMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.bst.airmessage.sdk.IAirMessageCallback"

.field static final TRANSACTION_onReadMessage:I = 0x3

.field static final TRANSACTION_onReplyAirMessage:I = 0x2

.field static final TRANSACTION_updateReplyAirMessageStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.bst.airmessage.sdk.IAirMessageCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bst/airmessage/sdk/IAirMessageCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.bst.airmessage.sdk.IAirMessageCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/bst/airmessage/sdk/IAirMessageCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bst/airmessage/sdk/IAirMessageCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.bst.airmessage.sdk.IAirMessageCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :sswitch_1
    const-string v0, "com.bst.airmessage.sdk.IAirMessageCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub;->updateReplyAirMessageStatus(Ljava/lang/String;JJ)V

    move v0, v8

    goto :goto_0

    :sswitch_2
    const-string v0, "com.bst.airmessage.sdk.IAirMessageCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bst/airmessage/sdk/AirMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bst/airmessage/sdk/AirMessage;

    :goto_1
    invoke-virtual {p0, v6, v7, v2}, Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub;->onReplyAirMessage(JLcom/bst/airmessage/sdk/AirMessage;)V

    move v0, v8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "com.bst.airmessage.sdk.IAirMessageCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bst/airmessage/sdk/IAirMessageCallback$Stub;->onReadMessage()V

    move v0, v8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
