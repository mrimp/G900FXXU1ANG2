.class public abstract Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub;
.super Landroid/os/Binder;
.source "ISnsFacebookForAuthToken.java"

# interfaces
.implements Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.app.sns3.svc.sp.facebook.auth.api.ISnsFacebookForAuthToken"

.field static final TRANSACTION_getAuthTokenNExpires:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.app.sns3.svc.sp.facebook.auth.api.ISnsFacebookForAuthToken"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;
    .locals 2
    .param p0    # Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.sec.android.app.sns3.svc.sp.facebook.auth.api.ISnsFacebookForAuthToken"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/os/Parcel;
    .param p3    # Landroid/os/Parcel;
    .param p4    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v2, "com.sec.android.app.sns3.svc.sp.facebook.auth.api.ISnsFacebookForAuthToken"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "com.sec.android.app.sns3.svc.sp.facebook.auth.api.ISnsFacebookForAuthToken"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sns3/svc/sp/facebook/auth/api/ISnsFacebookForAuthToken$Stub;->getAuthTokenNExpires()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
