.class public Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ad;


# instance fields
.field final f:I

.field public final fl:Ljava/lang/String;

.field public final fm:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ac;->CREATOR:Lcom/google/android/gms/internal/ad;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ac;->f:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ac;->fl:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ac;->fm:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/ac;Landroid/os/Parcel;I)V

    return-void
.end method
