.class public Lcom/google/android/gms/auth/RecoveryDecision;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/b;


# instance fields
.field final f:I

.field public isRecoveryInfoNeeded:Z

.field public isRecoveryInterstitialAllowed:Z

.field public recoveryIntent:Landroid/app/PendingIntent;

.field public recoveryIntentWithoutIntro:Landroid/app/PendingIntent;

.field public showRecoveryInterstitial:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/b;

    invoke-direct {v0}, Lcom/google/android/gms/auth/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryDecision;->CREATOR:Lcom/google/android/gms/auth/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryDecision;->f:I

    return-void
.end method

.method constructor <init>(ILandroid/app/PendingIntent;ZZZLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryDecision;->f:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryDecision;->recoveryIntent:Landroid/app/PendingIntent;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/RecoveryDecision;->showRecoveryInterstitial:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/RecoveryDecision;->isRecoveryInfoNeeded:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/RecoveryDecision;->isRecoveryInterstitialAllowed:Z

    iput-object p6, p0, Lcom/google/android/gms/auth/RecoveryDecision;->recoveryIntentWithoutIntro:Landroid/app/PendingIntent;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/b;->a(Lcom/google/android/gms/auth/RecoveryDecision;Landroid/os/Parcel;I)V

    return-void
.end method
