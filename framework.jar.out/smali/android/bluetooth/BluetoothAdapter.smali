.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_FM_RADIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.FM_RADIO_STATE_CHANGED"

.field public static final ACTION_LE_TESE_END_COMPLETED:Ljava/lang/String; = "android.bluetooth.adapter.action.ACTION_LE_TESE_END_COMPLETED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_RADIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.RADIO_STATE_CHANGED"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final DBG:Z = true

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LE_PACKET_COUNTS:Ljava/lang/String; = "android.bluetooth.adapter.extra.EXTRA_LE_PACKET_COUNTS"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_RADIO_OFF:I = 0xf

.field public static final STATE_RADIO_ON:I = 0xe

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static final VDBG:Z

.field private static avStreamingFlag:Z

.field private static avStreamingPending:Z

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;


# instance fields
.field private final BLUETOOTH_SHUTDOWN:I

.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/bluetooth/BluetoothAdapter;->avStreamingPending:Z

    sput-boolean v0, Landroid/bluetooth/BluetoothAdapter;->avStreamingFlag:Z

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xee

    iput v1, p0, Landroid/bluetooth/BluetoothAdapter;->BLUETOOTH_SHUTDOWN:I

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bluetooth manager service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x11

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    rem-int/lit8 v3, v1, 0x3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_0
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_3
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x46

    if-gt v0, v3, :cond_0

    goto :goto_2

    :pswitch_1
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-direct {v1, v2, p3, p4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 5

    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    new-instance v2, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    :goto_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_1
    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v4, "Bluetooth binder is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    if-gez v0, :cond_0

    :cond_0
    return-object v1
.end method

.method private startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;IIZZ)Z
    .locals 12

    if-nez p2, :cond_0

    const-string v1, "BluetoothAdapter"

    const-string v2, "startLeScan: null callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v11, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v11

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BluetoothAdapter"

    const-string v2, "LE Scan has already started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    if-nez v9, :cond_2

    const/4 v1, 0x0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    new-instance v0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;IIZZ)V

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v9, v1, v0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->scanStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    :try_start_4
    monitor-exit v11

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :cond_0
    return v0
.end method

.method public clearAutoConnDevice()V
    .locals 3

    const-string v1, "BluetoothAdapter"

    const-string v2, "clearAutoConnDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->clearAutoConnDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 8

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object v3, p2

    check-cast v3, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->close()V

    goto :goto_0

    :pswitch_2
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    goto :goto_0

    :pswitch_3
    move-object v5, p2

    check-cast v5, Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothInputDevice;->close()V

    goto :goto_0

    :pswitch_4
    move-object v7, p2

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->close()V

    goto :goto_0

    :pswitch_5
    move-object v4, p2

    check-cast v4, Landroid/bluetooth/BluetoothHealth;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHealth;->close()V

    goto :goto_0

    :pswitch_6
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    :pswitch_7
    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattServer;->close()V

    goto :goto_0

    :pswitch_8
    move-object v6, p2

    check-cast v6, Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothMap;->close()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public configHciSnoopLog(Z)Z
    .locals 3

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public createVendorHciSocket(IIII)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x4

    const/4 v2, -0x1

    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    shl-int/lit8 v4, p1, 0x10

    shl-int/lit8 v6, p3, 0x8

    or-int/2addr v4, v6

    or-int v6, v4, p2

    const/4 v7, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public disable()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disable(Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dumpInFile()V
    .locals 3

    const-string v1, "BluetoothAdapter"

    const-string v2, "dumpInFile in BluetoothAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-nez v1, :cond_0

    const-string v1, "BluetoothAdapter"

    const-string v2, "mManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dutModeConfigure(Z)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->dutModeConfigure(Z)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enable()Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v2, "BluetoothAdapter"

    const-string v3, "enable(): BT is already enabled..!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNoAutoConnect()Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v2, "BluetoothAdapter"

    const-string v3, "enableNoAutoConnect(): BT is already enabled..!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    const-string v0, "BluetoothAdapter"

    const-string v2, "getBluetoothService() called with no BluetoothManagerCallback"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    new-array v1, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    :try_start_4
    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, "getConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileConnectionState(I)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, "getProfileConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    return v6

    :cond_1
    if-ne p3, v6, :cond_2

    new-instance v1, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    if-ne p3, v8, :cond_3

    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x4

    if-ne p3, v8, :cond_4

    new-instance v3, Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {v3, p1, p2}, Landroid/bluetooth/BluetoothInputDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    goto :goto_0

    :cond_4
    const/4 v8, 0x5

    if-ne p3, v8, :cond_5

    new-instance v5, Landroid/bluetooth/BluetoothPan;

    invoke-direct {v5, p1, p2}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    goto :goto_0

    :cond_5
    const/4 v8, 0x3

    if-ne p3, v8, :cond_6

    new-instance v2, Landroid/bluetooth/BluetoothHealth;

    invoke-direct {v2, p1, p2}, Landroid/bluetooth/BluetoothHealth;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    goto :goto_0

    :cond_6
    const/16 v8, 0x9

    if-ne p3, v8, :cond_7

    new-instance v4, Landroid/bluetooth/BluetoothMap;

    invoke-direct {v4, p1, p2}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    goto :goto_0

    :cond_7
    move v6, v7

    goto :goto_0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth address must have 6 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    aget-byte v4, p1, v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    aget-byte v4, p1, v7

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v7

    aget-byte v4, p1, v8

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v8

    aget-byte v4, p1, v9

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScanMode()I
    .locals 4

    const/16 v1, 0x14

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getScanMode()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState()I
    .locals 5

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    monitor-exit v3

    :goto_0
    return v1

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": getState() :  mService = null. Returning STATE_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    move-result v1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isHeadsetScmstSupported()I
    .locals 2

    const-string v0, "BluetoothAdapter"

    const-string v1, "isHeadsetScmstSupported : GlobalConfig:false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public leTestMode(III)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetooth;->leTestMode(III)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v1, v2, v2, v2, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public putLogs(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-nez v1, :cond_0

    const-string v1, "BluetoothAdapter"

    const-string v2, "mManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothManager;->putLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    :cond_0
    return-object v2
.end method

.method removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 2

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAvStreaming(Z)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvStreaming :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GlobalConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public setBleAdvEvtType(I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->setBleAdvEvtType(I)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDiscoverableTimeout(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanMode(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getDiscoverableTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setScanMode(II)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanParams(IIZ)Z
    .locals 6

    const/4 v2, 0x0

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScanParams() - scanInt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", scanWin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", activeScan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le p2, p1, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1, p2, p3}, Landroid/bluetooth/IBluetoothGatt;->setScanParams(IIIZ)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "BluetoothAdapter"

    const-string v4, "setScanParams, iGatt null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSdpRecord(ZI)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setSdpRecord(ZI)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shutdown()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    const/16 v2, 0xee

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->disableRadio(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sspDebugConfigure(Z)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->sspDebugConfigure(Z)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v3, "BluetoothAdapter"

    const-string v4, "startDiscovery"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->updateDiscoveryState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z

    move-result v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    goto :goto_0

    :cond_1
    :try_start_3
    const-string v3, "BluetoothAdapter"

    const-string v4, "UpdateDiscoveryState, iGatt null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    :try_start_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startLeScan(IIZLandroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 7

    if-le p2, p1, :cond_0

    const-string v0, "BluetoothAdapter"

    const-string v1, "startLeScan: wrong values (scan_window > scan_interval) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;IIZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    return v0
.end method

.method public startLeScan([Ljava/util/UUID;IIZLandroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 7

    if-le p3, p2, :cond_0

    const-string v0, "BluetoothAdapter"

    const-string v1, "startLeScan: wrong values (scan_window > scan_interval) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;IIZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 7

    const/4 v3, 0x0

    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLeScan(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;IIZZ)Z

    move-result v0

    return v0
.end method

.method public stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 3

    const-string v1, "BluetoothAdapter"

    const-string v2, "stopLeScan()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    if-nez v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->stopLeScan()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
