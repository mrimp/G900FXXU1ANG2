.class public Landroid/media/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFocusControl$DisplayInfoForServer;,
        Landroid/media/MediaFocusControl$RemoteControlStackEntry;,
        Landroid/media/MediaFocusControl$RccPlaybackState;,
        Landroid/media/MediaFocusControl$RemotePlaybackState;,
        Landroid/media/MediaFocusControl$RcClientDeathHandler;,
        Landroid/media/MediaFocusControl$PackageIntentsReceiver;,
        Landroid/media/MediaFocusControl$AudioFocusDeathHandler;,
        Landroid/media/MediaFocusControl$MediaEventHandler;,
        Landroid/media/MediaFocusControl$NotificationListenerObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field protected static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0x0

.field private static final MSG_PROMOTE_RCC:I = 0x6

.field private static final MSG_RCC_COMMAND_SET:I = 0xc

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x7

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x8

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x9

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0xa

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xb

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;

.field private static sLastRccId:I


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Landroid/media/AudioService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private final mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsRinging:Z

.field private mIsRinging_2:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener_2:Landroid/telephony/PhoneStateListener;

.field private final mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/MediaFocusControl$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Landroid/media/VolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Landroid/media/MediaFocusControl;->sLastRccId:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/VolumeController;Landroid/media/AudioService;)V
    .locals 10
    .param p1    # Landroid/os/Looper;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/media/VolumeController;
    .param p4    # Landroid/media/AudioService;

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mIsRinging_2:Z

    new-instance v0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/MediaFocusControl$PackageIntentsReceiver;-><init>(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$1;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/media/MediaFocusControl$1;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$1;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Landroid/media/MediaFocusControl$2;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$2;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener_2:Landroid/telephony/PhoneStateListener;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/MediaFocusControl$3;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$3;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    iput-object v5, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iput-object v5, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    iput v9, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    iput-object v5, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    new-instance v0, Landroid/media/MediaFocusControl$MediaEventHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaFocusControl$MediaEventHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iput-object p2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    iput-object p4, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    const-string v0, "handleMediaEvent"

    invoke-virtual {v7, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Landroid/media/MediaFocusControl$RemotePlaybackState;

    const/4 v2, -0x1

    invoke-static {v4}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v3

    invoke-static {v4}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaFocusControl$RemotePlaybackState;-><init>(Landroid/media/MediaFocusControl;IIILandroid/media/MediaFocusControl$1;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x21

    invoke-virtual {v8, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v0, Landroid/media/MediaFocusControl$NotificationListenerObserver;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$NotificationListenerObserver;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/MediaFocusControl;Landroid/content/ComponentName;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRcDisplayUpdate(Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/MediaFocusControl;III)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onNewPlaybackInfoForRcc(III)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # I
    .param p2    # Landroid/media/IRemoteVolumeObserver;

    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/MediaFocusControl;IILandroid/media/MediaFocusControl$RccPlaybackState;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onNewPlaybackStateForRcc(IILandroid/media/MediaFocusControl$RccPlaybackState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/MediaFocusControl;IJ)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # I
    .param p2    # J

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onSetRemoteControlClientPlaybackPosition(IJ)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/MediaFocusControl;IILandroid/media/Rating;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/media/Rating;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onUpdateRemoteControlClientMetadata(IILandroid/media/Rating;)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$MediaEventHandler;
    .locals 1
    .param p0    # Landroid/media/MediaFocusControl;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaFocusControl;I)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->onPromoteRcc(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # Landroid/media/IRemoteControlDisplay;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$2300(Landroid/media/MediaFocusControl;III)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onSetRemoteControlClientSetCommand(III)V

    return-void
.end method

.method static synthetic access$2400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/media/MediaFocusControl;Z)Z
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$2602(Landroid/media/MediaFocusControl;Z)Z
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/media/MediaFocusControl;->mIsRinging_2:Z

    return p1
.end method

.method static synthetic access$2700()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # Landroid/os/IBinder;

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/media/MediaFocusControl;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaFocusControl;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Landroid/media/MediaFocusControl;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/media/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0    # Landroid/media/MediaFocusControl;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    return-void
.end method

.method static synthetic access$3204()I
    .locals 1

    sget v0, Landroid/media/MediaFocusControl;->sLastRccId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/MediaFocusControl;->sLastRccId:I

    return v0
.end method

.method static synthetic access$3500(Landroid/media/MediaFocusControl;)Ljava/util/Stack;
    .locals 1
    .param p0    # Landroid/media/MediaFocusControl;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/MediaFocusControl;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Landroid/media/MediaFocusControl;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0    # Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemoteControlDisplays()V

    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 2

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .locals 9
    .param p1    # Landroid/content/ComponentName;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_notification_listeners"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_2

    aget-object v7, v1, v4

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .locals 7
    .param p1    # I

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_1
    if-ltz v3, :cond_3

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/FocusRequester;

    invoke-virtual {v2}, Landroid/media/FocusRequester;->getStreamType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/media/FocusRequester;->getGainRequest()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_2
    if-nez v0, :cond_5

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "MediaFocusControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong index accessing audio focus stack when updating RCD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v4, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/media/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v4, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v0, v4}, Landroid/media/FocusRequester;->hasSameUid(I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_0
.end method

.method private cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V
    .locals 12
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-eqz v5, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    if-eqz p2, :cond_2

    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v3}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    :try_start_2
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v3}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->destroy()V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_2
    monitor-exit v6

    goto :goto_0

    :cond_5
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_4

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .locals 3

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 16
    .param p1    # Landroid/view/KeyEvent;
    .param p2    # Z

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v1, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const/16 v3, 0x7bc

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v15

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v12

    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending pending intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    if-eqz p2, :cond_3

    :try_start_3
    const-string v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v13

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 11
    .param p1    # Landroid/view/KeyEvent;
    .param p2    # Z

    const/4 v2, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1    # Ljava/io/PrintWriter;

    const-string v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1    # Ljava/io/PrintWriter;

    const-string v2, "\nRemote Control Client stack entries (last is top of stack):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volMax: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volObs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nCurrent remote control generation ID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v3

    :try_start_4
    const-string v2, "\nRemote Volume State:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  has remote: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  is remote active: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  rccId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v4, v4, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v2, v2, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_1

    const-string v2, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v4, v4, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume steps: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v4, v4, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :try_start_7
    const-string v2, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1    # Ljava/io/PrintWriter;

    const-string v2, "\nRemote Control Display list entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  IRCD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- w:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- h:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- wantsPosSync:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$3400(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    const-string v2, "disabled"

    goto :goto_1

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1    # Ljava/io/PrintWriter;

    const-string v2, "\nRemote Control stack entries (last is top of stack):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1    # Landroid/media/IRemoteControlDisplay;
    .param p2    # Z

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to client: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1    # Landroid/view/KeyEvent;
    .param p2    # Z

    invoke-static {p1}, Landroid/media/MediaFocusControl;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaFocusControl;->mIsRinging_2:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1    # Landroid/view/KeyEvent;
    .param p2    # Z

    const/4 v2, 0x1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    :cond_0
    :goto_0
    monitor-exit v3

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :cond_2
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_1
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Landroid/media/MediaFocusControl;->startVoiceBasedInteractions(Z)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .locals 4
    .param p1    # Landroid/content/ComponentName;
    .param p2    # [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1    # Landroid/app/PendingIntent;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected static isMediaKeyCode(I)Z
    .locals 1
    .param p0    # I

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method private static isPlaystateActive(I)Z
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0    # Landroid/view/KeyEvent;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isMediaKeyCode(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .param p0    # I

    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusGain(I)V

    :cond_0
    return-void
.end method

.method private onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .param p1    # Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "media_button_receiver"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onNewPlaybackInfoForRcc(III)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v3, p1, :cond_4

    packed-switch p2, :pswitch_data_0

    const-string v3, "MediaFocusControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unhandled key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for RCC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    return-void

    :pswitch_0
    :try_start_2
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index mRCStack on onNewPlaybackInfoForRcc, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :pswitch_1
    :try_start_4
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iput p3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3}, Landroid/media/VolumeController;->postHasNewRemotePlaybackInfo()V

    :cond_1
    monitor-exit v5

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    :pswitch_2
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iput p3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3}, Landroid/media/VolumeController;->postHasNewRemotePlaybackInfo()V

    :cond_2
    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3

    :pswitch_3
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iput p3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3}, Landroid/media/VolumeController;->postHasNewRemotePlaybackInfo()V

    :cond_3
    monitor-exit v5

    goto :goto_1

    :catchall_3
    move-exception v3

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v3

    :pswitch_4
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackStream:I
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onNewPlaybackStateForRcc(IILandroid/media/MediaFocusControl$RccPlaybackState;)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/media/MediaFocusControl$RccPlaybackState;

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v3, p1, :cond_1

    iput-object p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_0

    invoke-static {p2}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p2}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->postPromoteRcc(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index on mRCStack in onNewPlaybackStateForRcc, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    monitor-exit v4

    return-void

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method private onPromoteRcc(I)V
    .locals 8
    .param p1    # I

    sget-object v5, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v4, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, -0x1

    :try_start_3
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v4, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_3

    move v2, v1

    :cond_1
    if-ltz v2, :cond_2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xf

    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v4, "MediaFocusControl"

    const-string v7, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private onRcDisplayClear()V
    .locals 5

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .param p1    # Landroid/media/IRemoteControlDisplay;
    .param p2    # I
    .param p3    # I

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    const-string v1, "MediaFocusControl"

    const-string v4, "Dead display in onRcDisplayInitInfo()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method private onRcDisplayUpdate(Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V
    .locals 6
    .param p1    # Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .param p2    # I

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, v1, v4}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v0, 0x1

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v4

    :try_start_1
    iget-boolean v3, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    if-eq v3, v0, :cond_2

    iput-boolean v0, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3, v0}, Landroid/media/VolumeController;->postRemoteSliderVisibility(Z)V

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private onReevaluateRemoteControlDisplays()V
    .locals 17

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v13, :cond_1

    const/4 v12, 0x0

    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v14

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Landroid/media/MediaFocusControl;->isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    move-result v1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9, v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eq v14, v1, :cond_0

    :try_start_2
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaFocusControl;->enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0xa

    const/4 v3, 0x2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v11

    :try_start_3
    const-string v1, "MediaFocusControl"

    const-string v2, "Error en/disabling RCD: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_1
    :try_start_5
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_2
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 6
    .param p1    # I
    .param p2    # Landroid/media/IRemoteVolumeObserver;

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v3, p1, :cond_1

    iput-object p2, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v4

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onSetRemoteControlClientPlaybackPosition(IJ)V
    .locals 6
    .param p1    # I
    .param p2    # J

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p1, :cond_0

    :try_start_2
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->seekTo(IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onSetRemoteControlClientSetCommand(III)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p1, :cond_0

    :try_start_2
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setCommand(III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onUpdateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/media/Rating;

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    :try_start_2
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unhandled metadata key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " update for RCC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :pswitch_0
    :try_start_5
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->updateMetadata(IILandroid/media/Rating;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0x10000001
        :pswitch_0
    .end packed-switch
.end method

.method private plugRemoteControlDisplaysIntoClient_syncRcStack(Landroid/media/IRemoteControlClient;)V
    .locals 6
    .param p1    # Landroid/media/IRemoteControlClient;

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    :try_start_0
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$3400(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to RCC in RCC registration"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private postPromoteRcc(I)V
    .locals 7
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x6

    const/4 v5, 0x0

    move v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private postReevaluateRemote()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pushMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 10
    .param p1    # Landroid/app/PendingIntent;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Landroid/os/IBinder;

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v5, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_2

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    move-object v3, v0

    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    :cond_2
    :goto_2
    if-nez v4, :cond_3

    new-instance v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;-><init>(Landroid/media/MediaFocusControl;Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_3
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    invoke-virtual {v7, v6, v6, v6, p2}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .locals 4
    .param p1    # Landroid/media/IRemoteControlDisplay;

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .locals 17
    .param p1    # Landroid/media/IRemoteControlDisplay;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/content/ComponentName;

    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaFocusControl;->rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_1
    :try_start_3
    new-instance v11, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;-><init>(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    const/4 v4, 0x1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v11, v4}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    move-object/from16 v0, p4

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v11, v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$602(Landroid/media/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->init()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v15

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v4, v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_3

    :try_start_6
    iget-object v4, v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v5}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v12

    :try_start_7
    const-string v4, "MediaFocusControl"

    const-string v5, "Error connecting RCD to client: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    if-eqz v13, :cond_5

    iget-object v4, v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v5}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :goto_2
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v10, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v10}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v12

    :try_start_c
    const-string v4, "MediaFocusControl"

    const-string v5, "Error updating focussed RCC to RCD "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/FocusRequester;

    invoke-virtual {v2, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    const/16 v2, 0xf

    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    monitor-exit v3

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .param p1    # Landroid/os/IBinder;

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    invoke-virtual {v3, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    const/16 v3, 0xf

    :try_start_0
    invoke-direct {p0, v3}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    monitor-exit v4

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;)V
    .locals 10
    .param p1    # Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_2
    monitor-exit v4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_3

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 3
    .param p0    # Landroid/os/Handler;
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/Object;
    .param p6    # I

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .param p1    # Landroid/view/KeyEvent;
    .param p2    # Z

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 7
    .param p1    # I
    .param p2    # I

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v4, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_3

    iget-object v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    const/4 v4, -0x1

    :try_start_2
    invoke-interface {v3, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "MediaFocusControl"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing media button stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 5
    .param p1    # I

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "MediaFocusControl"

    const-string v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 6
    .param p1    # I
    .param p2    # Landroid/app/PendingIntent;
    .param p3    # Z

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "MediaFocusControl"

    const-string v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/app/PendingIntent;
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 12
    .param p1    # Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    iget-object v10, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iget-object v10, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v10}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v10

    if-eqz v10, :cond_3

    move v4, v8

    :goto_0
    if-nez v4, :cond_5

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v8, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.sec.action.SVOICE"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "MediaFocusControl"

    const-string v9, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz p1, :cond_0

    iget-object v8, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz v7, :cond_1

    const/high16 v8, 0x10800000

    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p1, :cond_2

    iget-object v8, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_2
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void

    :cond_3
    move v4, v9

    goto :goto_0

    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.action.SVOICE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "MediaFocusControl"

    const-string v9, "voice-based interactions: about to use SVOICE"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.speech.extras.EXTRA_SECURE"

    if-eqz v4, :cond_6

    iget-object v11, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v11

    if-eqz v11, :cond_6

    :goto_3
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "MediaFocusControl"

    const-string v9, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move v8, v9

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No activity for search: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p1, :cond_2

    iget-object v8, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p1, :cond_7

    iget-object v9, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7
    throw v8
.end method

.method private updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V
    .locals 6
    .param p1    # Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .param p2    # Z
    .param p3    # Z

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    iget-object v4, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2, v1}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    const-string v2, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updating focussed RCC change to RCD: CallingPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFocussed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAvailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    const-string v2, "MediaFocusControl"

    const-string v4, "Error while updating focussed RCC change"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .locals 6
    .param p1    # I

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    move v0, p1

    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0xf

    :cond_1
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 5
    .param p1    # Landroid/media/IAudioFocusDispatcher;
    .param p2    # Ljava/lang/String;

    const/4 v4, 0x1

    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    monitor-exit v2

    :goto_0
    return v4

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method protected adjustRemoteVolume(III)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v2, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v2, v2, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->sendVolumeUpdateToRemote(II)V

    :cond_1
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v2, p1, p3}, Landroid/media/VolumeController;->postRemoteVolumeChanged(II)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .locals 9
    .param p1    # I

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v6, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    if-ne v6, v3, :cond_1

    iget-object v6, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    iget v6, v6, Landroid/media/MediaFocusControl$RccPlaybackState;->mState:I

    invoke-static {v6}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackStream:I

    if-ne v6, p1, :cond_1

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    return v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v3, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5

    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .locals 4

    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusLoss(I)V

    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1    # Ljava/io/PrintWriter;

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCStack(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCCStack(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCDList(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFocusOwner()Landroid/media/FocusRequester;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    goto :goto_0
.end method

.method protected getRemoteStreamMaxVolume()I
    .locals 3

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .locals 3

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/app/PendingIntent;
    .param p2    # Landroid/content/Intent;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/os/Bundle;

    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1    # Landroid/app/PendingIntent;
    .param p2    # Landroid/content/ComponentName;
    .param p3    # Landroid/os/IBinder;

    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->pushMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 11
    .param p1    # Landroid/app/PendingIntent;
    .param p2    # Landroid/media/IRemoteControlClient;
    .param p3    # Ljava/lang/String;

    const/4 v3, -0x1

    sget-object v7, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    :cond_0
    iput-object p2, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object p3, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    if-nez p2, :cond_3

    invoke-virtual {v5}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->resetPlaybackInfo()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0xf

    invoke-direct {p0, v6}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    :cond_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v3

    :cond_3
    :try_start_4
    iget v3, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-direct {p0, v6}, Landroid/media/MediaFocusControl;->plugRemoteControlDisplaysIntoClient_syncRcStack(Landroid/media/IRemoteControlClient;)V

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v5, v6, v9}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V

    :cond_4
    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v4, Landroid/media/MediaFocusControl$RcClientDeathHandler;

    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v4, p0, v0, v6}, Landroid/media/MediaFocusControl$RcClientDeathHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x0

    :try_start_5
    invoke-interface {v0, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    iput-object v4, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_7
    const-string v6, "MediaFocusControl"

    const-string v9, "Wrong index accessing RC stack, lock error? "

    invoke-static {v6, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    :catch_1
    move-exception v1

    :try_start_9
    const-string v6, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 4
    .param p1    # Landroid/media/IRemoteControlDisplay;
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register IRemoteControlDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 4
    .param p1    # Landroid/media/IRemoteControlDisplay;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/content/ComponentName;

    invoke-direct {p0, p4}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or be an enabled NotificationListenerService for registerRemoteController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 7
    .param p1    # I
    .param p2    # Landroid/media/IRemoteVolumeObserver;

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 9
    .param p1    # Landroid/media/IRemoteControlDisplay;
    .param p2    # I
    .param p3    # I

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-ne v6, p2, :cond_1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-eq v6, p3, :cond_0

    :cond_1
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$902(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1, p3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1002(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    :try_start_1
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting bitmap size for RCD on RCC: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 9
    .param p1    # Landroid/media/IRemoteControlDisplay;
    .param p2    # Z

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v7

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$3402(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    monitor-exit v7

    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    :try_start_1
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting position sync flag for RCD on RCC: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/os/IBinder;
    .param p4    # Landroid/media/IAudioFocusDispatcher;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MediaFocusControl"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v13, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    new-instance v7, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x1

    monitor-exit v13

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v13

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/FocusRequester;

    invoke-virtual {v11}, Landroid/media/FocusRequester;->release()V

    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const v2, 0x186a0

    div-int v12, v1, v2

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1}, Landroid/media/FocusRequester;->getUserId()I

    move-result v1

    if-eq v1, v12, :cond_5

    const/16 v1, 0x64

    if-lt v12, v1, :cond_5

    invoke-virtual {p0}, Landroid/media/MediaFocusControl;->discardAudioFocusOwner()V

    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_6

    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    :cond_6
    iget-object v14, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/FocusRequester;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v14, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v1, 0xf

    :try_start_4
    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method protected restoreMediaButtonReceiver()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "media_button_receiver"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v4}, Landroid/media/MediaFocusControl;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected setPlaybackInfoForRcc(III)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method protected setPlaybackStateForRcc(IIJF)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # J
    .param p5    # F

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    new-instance v5, Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/media/MediaFocusControl$RccPlaybackState;-><init>(IJF)V

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method protected setRemoteControlClientCommand(III)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    if-eq v0, p1, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-void

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xc

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    move v3, p1

    move v4, p2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method protected setRemoteControlClientPlaybackPosition(IJ)V
    .locals 7
    .param p1    # I
    .param p2    # J

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    if-eq v0, p1, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-void

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0x8

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method protected setRemoteStreamVolume(I)V
    .locals 8
    .param p1    # I

    const/4 v2, -0x1

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v5, v5, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    monitor-exit v6

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v2, v5, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v5, v2, :cond_3

    iget-object v4, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v4, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "MediaFocusControl"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1    # Landroid/app/PendingIntent;

    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;)V

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 9
    .param p1    # Landroid/app/PendingIntent;
    .param p2    # Landroid/media/IRemoteControlClient;

    const/4 v4, 0x0

    sget-object v5, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v7, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v7, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v2, v7, v8}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V

    const/4 v7, 0x0

    iput-object v7, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    const/4 v7, 0x0

    iput-object v7, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_2

    const/4 v3, 0x1

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    const/16 v4, 0xf

    :try_start_2
    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v4, "MediaFocusControl"

    const-string v7, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 9
    .param p1    # Landroid/media/IRemoteControlDisplay;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v7

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    if-eqz v2, :cond_4

    :try_start_1
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    :try_start_2
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    const-string v6, "MediaFocusControl"

    const-string v8, "Error disconnecting remote control display to client: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected updateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/media/Rating;

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method