.class public Lcom/android/settings/smartscreen/SmartScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final mSmartRotationHelpFolderText:[I

.field private static final mSmartRotationHelpText:[I

.field private static final mSmartScreenHelpID:[I

.field private static final mSmartStayHelpFolderText:[I

.field private static final mSmartStayHelpText:[I


# instance fields
.field private dialogTitle:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationImage:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mEnableSmartRotationDialog:Landroid/app/AlertDialog;

.field private mGripRotationLock:Landroid/preference/CheckBoxPreference;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHelp:Landroid/view/MenuItem;

.field private mHelpBtnListener:Landroid/view/View$OnClickListener;

.field private mIsFromAutoRotation:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSmartHelpText:[I

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartRotation:Landroid/preference/CheckBoxPreference;

.field private mSmartScreenObserver:Landroid/database/ContentObserver;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/CheckBoxPreference;

.field private mSupportFolderType:Z

.field public pref_common_noti:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x5

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpFolderText:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpFolderText:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b04fb
        0x7f0b04fc
    .end array-data

    :array_1
    .array-data 4
        0x7f0911af
        0x7f0911b0
        0x7f0911b1
        0x7f0911b2
        0x7f0911b3
    .end array-data

    :array_2
    .array-data 4
        0x7f0911b7
        0x7f0911b4
        0x7f0911b1
        0x7f0911b2
        0x7f0911b3
    .end array-data

    :array_3
    .array-data 4
        0x7f0911af
        0x7f0911b0
        0x7f0911b1
        0x7f0911b2
        0x7f0911b3
        0x7f091890
    .end array-data

    :array_4
    .array-data 4
        0x7f0911b7
        0x7f0911b4
        0x7f0911b1
        0x7f0911b2
        0x7f0911b3
        0x7f091890
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mEnableSmartRotationDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$1;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelpBtnListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings$8;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$13;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/smartscreen/SmartScreenSettings;II)V
    .locals 0
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showEnableSmartRotationDialog(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/smartscreen/SmartScreenSettings;)Z
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-boolean v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGripRotationLock:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/smartscreen/SmartScreenSettings;IILjava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_stay_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0911ab

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091202

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907ee

    new-instance v2, Lcom/android/settings/smartscreen/SmartScreenSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$11;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/smartscreen/SmartScreenSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$10;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/smartscreen/SmartScreenSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$9;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_rotation_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0911ad

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0911b8

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0911ba

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    move-object v0, p3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/smartscreen/SmartScreenSettings$12;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings$12;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEnableSmartRotationDialog(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mEnableSmartRotationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mEnableSmartRotationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mEnableSmartRotationDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/smartscreen/SmartScreenSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$14;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ad

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mEnableSmartRotationDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mEnableSmartRotationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public createGuideDialog(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "pref_smart_scroll_noti"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialogForScroll()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialog()V

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll_adv_web"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll_adv_chrome"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll_adv_email_body"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_adv_gmail_body"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    or-int/2addr v2, v3

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    if-eqz v6, :cond_1

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v6, 0x7f0401f0

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0b01ac

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0b04f9

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const v6, 0x7f02053a

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    const v6, 0x7f0b04fa

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelpBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v1, v8, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/android/settings/smartscreen/SmartScreenSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$3;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1    # Landroid/os/Bundle;

    const/16 v10, 0x10

    const/4 v12, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "fromAccelerometer"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    :cond_0
    const v6, 0x7f0700d0

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v9, 0x7f0905ff

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setTitle(I)V

    :goto_0
    new-instance v6, Landroid/widget/Switch;

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v9}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0f0048

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v2, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/16 v11, 0x15

    invoke-direct {v10, v12, v12, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarLayout:Landroid/view/View;

    :cond_2
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v9, Lcom/android/settings/smartscreen/SmartScreenSettings$2;

    invoke-direct {v9, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$2;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v6, v9}, Landroid/widget/Switch;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_3
    const-string v6, "smartscreen_stay"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    const-string v6, "smartscreen_rotation"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    const-string v6, "smartscreen_pause"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    const-string v6, "smartscreen_scroll"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    const-string v6, "grip_rotation_lock"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGripRotationLock:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGripRotationLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    if-eqz v6, :cond_4

    const-string v6, "smartscreen_stay"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->removePreference(Ljava/lang/String;)V

    const-string v6, "smartscreen_pause"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->removePreference(Ljava/lang/String;)V

    const-string v6, "smartscreen_scroll"

    invoke-virtual {p0, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/settings/smartscreen/SmartScreenSettings;->setHasOptionsMenu(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_6

    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    if-ne v6, v7, :cond_8

    move v5, v7

    :goto_1
    const-string v6, "smartscreen_scroll"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_2
    iput-boolean v7, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    const v9, 0x7f0905fe

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    :cond_8
    move v5, v8

    goto :goto_1

    :cond_9
    move v7, v8

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f091371

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:section"

    const-string v2, "smart_screen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->startActivity(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :goto_0
    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "pref_smart_scroll_noti"

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const-string v4, "smartscreen_scroll"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "pref_smart_scroll_noti"

    iput-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    if-ne v1, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, v4, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    if-ne v1, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    if-ne v6, v4, :cond_4

    move v0, v4

    :goto_0
    move-object v1, p2

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    const-string v6, "smartscreen_stay"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    const-string v6, "pref_smart_stay_noti"

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_4
    move v0, v5

    goto :goto_0

    :cond_5
    const-string v6, "smartscreen_rotation"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    const-string v6, "pref_smart_rotation_noti"

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v6, "smartscreen_pause"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    const-string v6, "pref_smart_pause_noti"

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_sleep_mode"

    if-eqz v3, :cond_9

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    :goto_4
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move v4, v5

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_rotation_mode"

    if-eqz v3, :cond_b

    :goto_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_b
    move v4, v5

    goto :goto_5

    :cond_c
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "smart_pause"

    if-eqz v3, :cond_d

    :goto_6
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {p0, v4, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_d
    move v4, v5

    goto :goto_6

    :cond_e
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGripRotationLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "grip_rotation_lock"

    iget-object v8, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGripRotationLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_f

    :goto_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_f
    move v4, v5

    goto :goto_7
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SmartScreenSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setSoundEffectsEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGripRotationLock:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "grip_rotation_lock"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGripRotationLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_rotation_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "grip_rotation_lock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_4

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_6
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-nez v3, :cond_1

    const-string v1, "SmartScreenSettings"

    const-string v3, "mActionBarSwitc is null"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v3, "SmartScreenSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v0, :cond_5

    :goto_2
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    const-string v1, "SmartScreenSettings"

    const-string v3, "setRotationLockForAccessibility is called"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGripRotationLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v0, :cond_4

    :goto_4
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public showGuideDialog()V
    .locals 15

    const/4 v14, 0x0

    const/16 v13, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v14, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v9, 0x7f0401f1

    invoke-virtual {v4, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v9, 0x7f0b0170

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    array-length v9, v9

    new-array v8, v9, [Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const v9, 0x7f020532

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:I

    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpFolderText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    :goto_0
    const v9, 0x7f0911ab

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_2
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    aget-object v9, v8, v11

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    const-string v1, ""

    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_9

    const/4 v3, 0x1

    :goto_2
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_b

    if-eq v3, v12, :cond_3

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_8

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const v9, 0x7f02053a

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:I

    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpFolderText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    :goto_4
    const v9, 0x7f0911ad

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto/16 :goto_1

    :cond_6
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    goto :goto_4

    :cond_7
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const v9, 0x7f020539

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:I

    const v9, 0x7f0911b8

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto/16 :goto_1

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    :goto_5
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_b

    if-ne v3, v12, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    aget-object v9, v8, v12

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_7
    const v9, 0x7f0b0178

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    iget v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mIsFromAutoRotation:Z

    if-eqz v9, :cond_d

    aget-object v9, v8, v11

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/smartscreen/SmartScreenSettings$4;

    invoke-direct {v10, p0, v2, v7}, Lcom/android/settings/smartscreen/SmartScreenSettings$4;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/smartscreen/SmartScreenSettings$5;

    invoke-direct {v10, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$5;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_e
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    aget-object v9, v8, v11

    const v10, 0x7f0911d6

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0911d7

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f0911d8

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f0911d9

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f0911da

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f091890

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_f
    aget-object v9, v8, v12

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method public showGuideDialogForScroll()V
    .locals 14

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v12, 0x7f0401f2

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v12, 0x7f0b04fd

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0911de

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f0911df

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0911e0

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0911e1

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f0911e2

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0911e3

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f0b04fe

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/settings/HelpItem;

    invoke-direct {v2, v6}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    const v12, 0x7f0911ed

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    const v12, 0x7f0911e4

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    const v12, 0x7f02053c

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v11, Lcom/android/settings/HelpItem;

    invoke-direct {v11, v6}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    const v12, 0x7f0911ec

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    const v12, 0x7f0911e5

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    const v12, 0x7f02053b

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    invoke-virtual {v11}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v12, 0x7f0b04ff

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0911e6

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0911e7

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0911e8

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0911e9

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-boolean v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f091890

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f0b0500

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v12, 0x7f0911ba

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v12, 0x104000a

    new-instance v13, Lcom/android/settings/smartscreen/SmartScreenSettings$6;

    invoke-direct {v13, p0, v1, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings$6;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/settings/smartscreen/SmartScreenSettings$7;

    invoke-direct {v13, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$7;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public startTutorial()V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SmartRotation"

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sbrowsertry.GUIDE_SMART_ROTATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fromHelp"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
