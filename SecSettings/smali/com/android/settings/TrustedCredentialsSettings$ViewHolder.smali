.class Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSubjectPrimaryView:Landroid/widget/TextView;

.field private mSubjectSecondaryView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 0
    .param p0    # Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;
    .param p1    # Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object p1
.end method
