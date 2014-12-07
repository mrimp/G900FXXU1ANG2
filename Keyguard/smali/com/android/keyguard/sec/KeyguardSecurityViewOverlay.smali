.class public Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityViewOverlay.java"


# static fields
.field private static mBootOnCameraShortCut:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

.field private mCameraCircle:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field private mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

.field private mGuestCicle:Landroid/view/View;

.field private mGusetUnlockHelpText:Landroid/widget/TextView;

.field private mHandledCameraShortCut:Z

.field private mHandledEAC:Z

.field private mHandledGuestIcon:Z

.field private mIconContaniner:Landroid/view/View;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsCircleEffect:Z

.field private mIsKidsMode:Z

.field private mIsLiveWallPaper:Z

.field private mIsSecure:Z

.field private mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecCameraArrow:Landroid/widget/ImageView;

.field private mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

.field private mSecEmergencyArrow:Landroid/widget/ImageView;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewECA:Landroid/widget/LinearLayout;

.field private mShortcutSetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBootOnCameraShortCut:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$1;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay$2;-><init>(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setCameraVisible()V

    return-void
.end method

.method private alignECA(IZ)V
    .locals 5
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private handleVisibility(Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledEAC:Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledEAC:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledEAC:Z

    goto :goto_0

    :sswitch_1
    if-ne p2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledGuestIcon:Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledGuestIcon:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledGuestIcon:Z

    goto :goto_0

    :sswitch_2
    if-ne p2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledCameraShortCut:Z

    goto :goto_0

    :cond_3
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledCameraShortCut:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledCameraShortCut:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b0028 -> :sswitch_2
        0x7f0b006d -> :sswitch_1
        0x7f0b00be -> :sswitch_0
    .end sparse-switch
.end method

.method private setCameraVisible()V
    .locals 13

    const/4 v8, 0x1

    const/16 v12, 0x8

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isExclusivePatentFamily()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v9

    or-int/2addr v4, v9

    :cond_0
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10405a0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_7

    move v1, v7

    :goto_0
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "set_shortcuts_mode"

    const/4 v11, -0x2

    invoke-static {v9, v10, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v6

    if-eqz v4, :cond_1

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    if-nez v4, :cond_6

    if-ne v5, v8, :cond_6

    iget-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v9, :cond_6

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v9, :cond_4

    if-eqz v2, :cond_8

    sget-boolean v9, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBootOnCameraShortCut:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    sput-boolean v8, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBootOnCameraShortCut:Z

    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isExclusivePatentFamily()Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v8, :cond_9

    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    move v1, v8

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setEmergencyArrowPosition()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/high16 v10, 0x40400000

    const/4 v9, 0x3

    const/4 v8, -0x1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    mul-float v7, v10, v0

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAusFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    mul-float v7, v10, v0

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v9, v12}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-direct {p0, v9, v3}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v9, v12}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x11

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0046

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardGuestSelectorView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLRAFeature()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsSecure:Z

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "set_shortcuts_mode"

    const/4 v5, -0x2

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "kids_home_mode"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_8

    :goto_2
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isExclusivePatentFamily()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setCameraVisible()V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v3, v1

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1    # Landroid/view/MotionEvent;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v13, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v13, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getCurrentEffecType()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsCircleEffect:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lockscreen_wallpaper"

    const/4 v15, 0x1

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsLiveWallPaper:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_4
    :pswitch_0
    const/4 v13, 0x0

    :goto_5
    return v13

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    const/4 v13, 0x1

    goto :goto_3

    :pswitch_1
    if-nez v5, :cond_5

    if-eqz v4, :cond_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    if-eqz v5, :cond_7

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v4, :cond_8

    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsCircleEffect:Z

    if-nez v13, :cond_9

    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->hideSecurityView(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v13}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->userActivity()V

    :cond_6
    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v14, "user"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    if-nez v10, :cond_a

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    const/4 v13, 0x0

    goto :goto_5

    :cond_7
    const/16 v13, 0x8

    goto :goto_6

    :cond_8
    const/16 v13, 0x8

    goto :goto_7

    :cond_9
    const/16 v13, 0x8

    goto :goto_8

    :cond_a
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_b

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_b
    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_d

    const/4 v13, 0x1

    :goto_9
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v14, 0x7f060129

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_d
    const/4 v13, 0x0

    goto :goto_9

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v13}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->showSecurityView()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLRAFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setEmergencyArrowPosition()V

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->onScreenTurnedOff()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const v1, 0x7f040004

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->onScreenTurnedOn()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    return-void
.end method
