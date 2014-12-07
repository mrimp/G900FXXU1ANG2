.class Lcom/android/settings/wifi/WifiVzwDialog;
.super Landroid/app/AlertDialog;
.source "WifiVzwDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;
    }
.end annotation


# static fields
.field public static ConnectedCorrectPassword:Ljava/lang/String;

.field public static ConnectedPassword:Ljava/lang/String;

.field private static final DBG:Z

.field public static Remembered:I

.field public static bEdit:I

.field public static changedssid:Ljava/lang/String;

.field public static previousssid:Ljava/lang/String;


# instance fields
.field private PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final details:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field public mAccessPointSecurity:I

.field private mAutoGenFirstTime:Z

.field private mConnectedAPEdit:I

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/EditText;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field final mEdit:Z

.field private mGatewayView:Landroid/widget/EditText;

.field private mIpAddressView:Landroid/widget/EditText;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field public mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field public mVzwEditFlag:Z

.field public mVzwViewFlag:Z

.field final manageNetwork:Z

.field private pToast:Landroid/widget/Toast;

.field passwordWatcher:Landroid/text/TextWatcher;

.field private sToast:Landroid/widget/Toast;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$1;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$2;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    iput-object p2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const-string v0, "WifiVzwDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiVzwDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempPassworld:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$1;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$2;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    iput-object p2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    if-nez p3, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const-string v0, "WifiVzwDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiVzwDialog: edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )  details ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p3, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->pToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04024e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private generateBlankFields(Ljava/net/InetAddress;)V
    .locals 4

    const/16 v1, 0x18

    const-string v0, "WifiVzwDialog"

    const-string v2, "generateBlankFields"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09043e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1, v1}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090438

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-ltz v0, :cond_3

    const/16 v2, 0x20

    if-le v0, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    :goto_3
    if-nez v0, :cond_4

    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v1

    :goto_4
    const v3, 0x7f09016a

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 10

    const/16 v6, 0x3f2

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    aput-object v2, v0, v1

    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, v4, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    :cond_1
    const-string v0, "USRPKEY_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v2, "USRCERT_"

    invoke-virtual {v0, v2, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    move v0, v1

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_4

    move v2, v1

    :goto_2
    array-length v7, v6

    if-ge v2, v7, :cond_3

    aget-object v7, v3, v0

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v3, v0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_3
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    aput-object v3, v2, v1

    array-length v3, v0

    invoke-static {v0, v1, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b061d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b061a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b061c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0620

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0621

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0619

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b061b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 6

    const v5, 0x7f0b061d

    const v4, 0x7f0b0617

    const v3, 0x7f0b0619

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0616

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b061c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b061a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0620

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0621

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b061b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPasswordInvisible()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPhase2Invisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setCaCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setIdentityInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setPasswordInvisible()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setUserCertInvisible()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->setAnonymousIdentInvisible()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 6

    const v3, 0x7f0b0610

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b060e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0611

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0612

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0613

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0614

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0615

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    if-eqz v1, :cond_5

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_a
    return-void

    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showKeyMgmtFields()V
    .locals 8

    const v7, 0x7f0b062b

    const v6, 0x7f0b062c

    const/16 v5, 0x8

    const v4, 0x7f0b062d

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string v0, "WifiVzwDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showProxyFields()V
    .locals 8

    const v7, 0x7f0b060a

    const v6, 0x7f0b0609

    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0606

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b060b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b060c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b060d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 10

    const/16 v4, 0x8

    const/4 v7, 0x6

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b05fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b05fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b056e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b05cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b05cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b05ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0620

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0621

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b05ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "security.mdpp"

    const-string v1, "None"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "Enforcing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_8
    move v1, v3

    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0600

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "PEAP"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TLS"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "TTLS"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "PWD"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "SIM"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "AKA"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_9

    const-string v0, "FAST"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v1, :cond_a

    const-string v0, "LEAP"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x1090008

    invoke-direct {v0, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0618

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0601

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0602

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0603

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0604

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    const v4, 0x7f0b0605

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sget-object v5, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-eq v0, v5, :cond_1b

    if-eqz v1, :cond_1a

    if-le v4, v7, :cond_1a

    add-int/lit8 v0, v4, -0x1

    :goto_3
    if-eqz v1, :cond_b

    const/4 v1, 0x7

    if-le v4, v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    :cond_b
    :goto_4
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v7, "fast_provisioning="

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_c
    sparse-switch v4, :sswitch_data_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    :sswitch_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v0, "WifiVzwDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid phase 2 method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PEAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_13
    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_14
    const-string v1, "TTLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_15
    const-string v1, "PWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_16
    const-string v1, "SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_17
    const-string v1, "AKA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_18
    const-string v1, "FAST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_19
    const-string v1, "LEAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->showEapFieldsByMethod(I)V

    goto/16 :goto_6

    :cond_1a
    move v0, v4

    goto/16 :goto_3

    :cond_1b
    move v0, v4

    goto/16 :goto_4

    :cond_1c
    move v1, v2

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 9

    const v3, 0x7f090434

    const v1, 0x7f090433

    const v2, 0x7f090436

    const v4, 0x7f090435

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiVzwDialog;->generateBlankFields(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAutoGenFirstTime:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09043e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    const/16 v6, 0x20

    if-le v1, v6, :cond_7

    :cond_5
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    :try_start_1
    new-instance v6, Landroid/net/LinkAddress;

    invoke-direct {v6, v5, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_8
    :try_start_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_4
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move v0, v4

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1

    :catch_4
    move-exception v0

    move v0, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$3;-><init>(Lcom/android/settings/wifi/WifiVzwDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public enableSubmitIfAppropriate()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget-boolean v8, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "WifiVzwDialog"

    const-string v9, "enableSubmitIfAppropriate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, -0x3

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-nez v6, :cond_2

    if-nez v1, :cond_2

    const-string v8, "WifiVzwDialog"

    const-string v9, "submit button is not set"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v3

    iget v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v8, v10, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    iget v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v8, v14, :cond_16

    if-ge v3, v12, :cond_16

    :cond_4
    sget-boolean v8, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "WifiVzwDialog"

    const-string v9, "password invalid"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v4, 0x1

    :cond_6
    :goto_1
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-nez v8, :cond_7

    const/4 v5, 0x1

    const/4 v2, 0x0

    :cond_7
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    :cond_8
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-lez v8, :cond_a

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    iput-boolean v13, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v8, v0}, Lcom/android/settings/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_a
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-nez v8, :cond_b

    iget v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    iget-object v9, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v8, v9, :cond_b

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v5, :cond_b

    const/4 v4, 0x1

    :cond_b
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v8, v11, :cond_e

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    iget-object v9, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v8, v9, :cond_1b

    if-nez v5, :cond_1b

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const v9, 0x7f0903d6

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setHint(I)V

    if-eqz v0, :cond_c

    iput-boolean v13, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :cond_c
    :goto_3
    if-eqz v0, :cond_d

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v8, v0}, Lcom/android/settings/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_d
    iget v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-lt v8, v12, :cond_e

    const/4 v4, 0x0

    :cond_e
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->ipAndProxyFieldsAreValid()Z

    move-result v8

    if-nez v8, :cond_f

    const/4 v2, 0x0

    :cond_f
    sget-boolean v8, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v8, :cond_10

    const-string v8, "WifiVzwDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "password invalid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v8, v11, :cond_12

    :cond_11
    if-eqz v4, :cond_12

    const/4 v2, 0x0

    :cond_12
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v8, :cond_13

    if-nez v7, :cond_13

    const/4 v2, 0x0

    :cond_13
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v8, :cond_14

    if-eqz v4, :cond_14

    const/4 v2, 0x0

    :cond_14
    if-eqz v6, :cond_15

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_15
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_16
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v8, v8, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v8, v11, :cond_6

    iget v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    if-ne v8, v14, :cond_6

    if-eqz v3, :cond_17

    if-lez v3, :cond_6

    if-ge v3, v12, :cond_6

    :cond_17
    sget-boolean v8, Lcom/android/settings/wifi/WifiVzwDialog;->DBG:Z

    if-eqz v8, :cond_18

    const-string v8, "WifiVzwDialog"

    const-string v9, "password invalid (saved ap)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_19
    const-string v8, "WifiVzwDialog"

    const-string v9, "mPasswordView is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1a
    const/4 v5, 0x1

    if-eqz v0, :cond_9

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_2

    :cond_1b
    iget-object v8, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_c

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_3
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    const/4 v7, 0x3

    const/4 v3, -0x1

    const/16 v4, 0x22

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "WifiVzwDialog"

    const-string v1, "getConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :pswitch_0
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_7

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_7

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_8

    :cond_7
    const-string v0, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v0, v5

    goto/16 :goto_2

    :cond_8
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto/16 :goto_2

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiVzwDialog;->ConnectedPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_d

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :goto_4
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    sparse-switch v0, :sswitch_data_0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, ""

    :cond_b
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, ""

    :cond_c
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    if-eqz v0, :cond_e

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    :cond_e
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    :sswitch_0
    packed-switch v3, :pswitch_data_1

    const-string v0, "WifiVzwDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown phase2 method"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    :sswitch_1
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    packed-switch v3, :pswitch_data_2

    const-string v0, "WifiVzwDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown phase2 method"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    :pswitch_8
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    :cond_f
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 6

    const v5, 0x7f0b062d

    const v4, 0x7f0b062c

    const v3, 0x7f0b0627

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->playSoundEffect(I)V

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0b05cd

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const-string v0, "WifiVzwDialog"

    const-string v1, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x80

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0b0626

    if-ne v0, v1, :cond_6

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    if-ne v0, v4, :cond_7

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    if-ne v0, v5, :cond_1

    check-cast p1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedCckm:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mIsCheckedFt:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27

    const-string v23, "WifiVzwDialog"

    const-string v24, "onCreate()"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v23, "enterprise_policy"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, 0x7f04024b

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setView(Landroid/view/View;)V

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setInverseBackgroundForced(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b05c9

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v23, 0x1090008

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a003d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v4, v10, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v23, 0x1090009

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v23, Landroid/widget/ArrayAdapter;

    const v24, 0x1090008

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a005d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v10, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v23, v0

    const v24, 0x1090009

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v23, Landroid/widget/ArrayAdapter;

    const v24, 0x1090008

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a005e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v10, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v23, v0

    const v24, 0x1090009

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v23, 0x7f0903d7

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b060f

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b0608

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b0087

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    const-string v23, "WifiVzwDialog"

    const-string v24, "onCreate: mAccessPoint == null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v23, 0x7f090387

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b031f

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b05c7

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/EditText;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b0625

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b0626

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    const/16 v23, -0x1

    const v24, 0x7f0904fa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v23, -0x3

    const v24, 0x7f0904fe

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, 0x14

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v23, v0

    if-nez v23, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v23, v0

    if-eqz v23, :cond_22

    const/16 v23, -0x3

    const v24, 0x7f0903aa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mVzwEditFlag:Z

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mVzwEditFlag:Z

    sget v23, Lcom/android/settings/wifi/WifiVzwDialog;->Remembered:I

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v23, -0x1

    const v24, 0x7f0903aa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    const/16 v23, 0x1

    sput v23, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    sget v23, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v23, :cond_29

    const/16 v23, -0x2

    const v24, 0x7f0903ad

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v23, 0x1

    sput v23, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    :goto_3
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mConnectedAPEdit:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    sget v23, Lcom/android/settings/wifi/WifiVzwDialog;->Remembered:I

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    if-eqz v7, :cond_2a

    const-string v23, "WifiVzwDialog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "In manage networks, state = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " don\'t display connect button."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/16 v23, -0x3

    const v24, 0x7f0903aa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v23, -0x2

    const v24, 0x7f0903ab

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/16 v23, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v23

    if-eqz v23, :cond_4

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v23

    if-eqz v23, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, 0x10

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b05c6

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    const-string v23, "WifiVzwDialog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onCreate: details "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v21

    if-eqz v21, :cond_6

    const v23, 0x7f0903c3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_6
    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_7

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_7

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_7

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    :cond_7
    const/4 v7, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v16

    const/16 v23, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const v23, 0x7f0a004e

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    const-string v23, "WifiVzwDialog"

    const-string v24, "Force level of wifi signal"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v16, v23, -0x1

    :cond_9
    const v23, 0x7f0903c2

    aget-object v24, v20, v16

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    const v23, 0x7f0903c4

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Mbps"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    if-eqz v5, :cond_b

    const v23, 0x7f0903c5

    invoke-static {v5}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_b
    const v23, 0x7f0903c1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    const v23, 0x7f090349

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_c
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    const v23, 0x7f09034a

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_d
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    const-string v23, "WifiVzwDialog"

    const-string v24, "network id is valid"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    sget-object v23, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_12

    const v23, 0x7f090429

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_13

    const-string v23, "WifiVzwDialog"

    const-string v24, "ip assignment static"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v19, 0x1

    :goto_6
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14

    const-string v23, "WifiVzwDialog"

    const-string v24, "proxy static"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v19, 0x1

    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b0625

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b0626

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b0626

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b0627

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b031f

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b05c7

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/EditText;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/text/Editable;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b05c9

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b05c9

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mVzwViewFlag:Z

    const-string v23, "WifiVzwDialog"

    const-string v24, "vzwViewFlag sets to false - onCreate, mEdit is true"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, -0x1

    const v24, 0x7f0904fa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v23, -0x3

    const v24, 0x7f0904fe

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v23, "WifiVzwDialog"

    const-string v24, "EDIT true connect and submit btn set "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    sput-object v23, Lcom/android/settings/wifi/WifiVzwDialog;->previousssid:Ljava/lang/String;

    const/16 v23, 0x1

    sput v23, Lcom/android/settings/wifi/WifiVzwDialog;->bEdit:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_12
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    :cond_14
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v23, v0

    sget-object v24, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b062a

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const v24, 0x7f09016c

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x1

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    :cond_16
    const/16 v23, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_17

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    :cond_17
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    :cond_18
    const/4 v6, 0x0

    const-string v23, "security.mdpp"

    const-string v24, "None"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v23, "WifiVzwDialog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mdpp"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v23, "Enabled"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_19

    const-string v23, "Enforcing"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    if-eqz v23, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v12, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v12, :cond_1b

    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v11

    const/16 v23, 0x6

    move/from16 v0, v23

    if-eq v11, v0, :cond_1a

    const/16 v23, 0x7

    move/from16 v0, v23

    if-ne v11, v0, :cond_1b

    :cond_1a
    const/4 v6, 0x1

    :cond_1b
    if-nez v21, :cond_21

    const/16 v23, -0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v23, v0

    if-nez v23, :cond_20

    const v23, 0x7f090505

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    :goto_9
    if-nez v6, :cond_1d

    const/16 v23, -0x1

    const v24, 0x7f0904fa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1d
    const-string v23, "WifiVzwDialog"

    const-string v24, "EDIT false state null set connect button "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->manageNetwork:Z

    move/from16 v23, v0

    if-nez v23, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->details:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    :cond_1e
    if-eqz v6, :cond_0

    :cond_1f
    const/16 v23, -0x1

    const v24, 0x7f0904fb

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1c

    const v23, 0x7f0903ac

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b060e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_22
    const/16 v23, -0x3

    const v24, 0x7f0903a9

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mVzwViewFlag:Z

    const-string v23, "WifiVzwDialog"

    const-string v24, "vzwViewFlag sets to true"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, -0x2

    const v24, 0x7f0903aa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v23, 0x0

    sput v23, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_1

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    if-eqz v23, :cond_28

    if-nez v7, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    if-nez v23, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_28

    :cond_25
    if-eqz v7, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b05c6

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mEdit:Z

    move/from16 v23, v0

    if-nez v23, :cond_27

    const/16 v23, -0x3

    const v24, 0x7f0903aa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v23, -0x2

    const v24, 0x7f0903ab

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :cond_27
    const/16 v23, -0x2

    const v24, 0x7f0904ff

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :cond_28
    const/16 v23, -0x2

    const v24, 0x7f0904ff

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    :cond_29
    const/16 v23, -0x2

    const v24, 0x7f0903ab

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/16 v23, 0x1

    sput v23, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_3

    :cond_2a
    const/16 v23, -0x1

    const v24, 0x7f0904fa

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiVzwDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b05c6

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiVzwDialog;->setInverseBackgroundForced(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v23, v0

    if-nez v23, :cond_2b

    const v23, 0x7f090505

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_2b
    const v23, 0x7f0903ac

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    iput p3, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mAccessPointSecurity:I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showKeyMgmtFields()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showSecurityFields()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showProxyFields()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiVzwDialog;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v2, -0x1

    const-string v0, "WifiVzwDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiVzwDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_2
    return-void
.end method
