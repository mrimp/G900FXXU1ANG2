.class Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;
.super Ljava/lang/Object;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShootingModeManager"
.end annotation


# instance fields
.field private mActionShotStarted:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFileSequence:I

.field private mCurrentShootingMode:I

.field private mDualCaptureModeAsyncFirstCapturing:Z

.field public mFlashMode:I

.field private mLocation:Landroid/location/Location;

.field private mPanoramaCapturing:Z

.field public mStorage:I

.field public mWhiteBalance:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    iput-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mStorage:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mWhiteBalance:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mFlashMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CommonEngine;Lcom/sec/android/app/camera/CommonEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;-><init>(Lcom/sec/android/app/camera/CommonEngine;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLandroid/location/Location;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->storeImage([BLandroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    return v0
.end method

.method static synthetic access$4902(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    return p1
.end method

.method static synthetic access$4910(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method private final startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager$1;-><init>(Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;[BLandroid/location/Location;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->access$2302(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2300(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "pictureSavingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2300(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private declared-synchronized storeImage([BLandroid/location/Location;)Z
    .locals 38

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v7, 0x22

    if-eq v2, v7, :cond_2

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v7, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v7}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v7, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v8, v8, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    mul-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v8, v8, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderWidth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v9, v9, Lcom/sec/android/app/camera/CommonEngine;->mOriginalViewFinderHeight:I

    mul-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v7}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xa

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x22

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x30

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/Camera;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    const/16 v18, 0x1

    :try_start_3
    new-instance v20, Ljava/util/GregorianCalendar;

    invoke-direct/range {v20 .. v20}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v35, Landroid/text/format/Time;

    invoke-direct/range {v35 .. v35}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual/range {v20 .. v20}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput-wide v5, v2, Lcom/sec/android/app/camera/CommonEngine;->mDateTaken:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v7, v2, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    invoke-static {v5, v6, v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JI)Ljava/lang/String;

    move-result-object v31

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, v31

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedTitle:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2802(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0xb

    if-ne v2, v7, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".gif"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-eq v2, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-eq v2, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x22

    if-ne v2, v7, :cond_e

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v8, v8, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v8

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/.BestPic"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2902(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$2900(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    move/from16 v28, v27

    :goto_4
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "CommonEngine"

    const-string v7, "Duplicated file name found"

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v27, v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2902(Lcom/sec/android/app/camera/CommonEngine;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "CommonEngine"

    const-string v7, "New file name created"

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$2900(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v28, v27

    goto :goto_4

    :catch_0
    move-exception v32

    :try_start_4
    const-string v2, "CommonEngine"

    const-string v7, "Out of memory while creating bitmap."

    invoke-static {v2, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0xe

    if-ne v2, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2600(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2602(Lcom/sec/android/app/camera/CommonEngine;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput-wide v5, v2, Lcom/sec/android/app/camera/CommonEngine;->mDateTakenForHDR:J

    :goto_5
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HDR] storeImage - mNumOfSavedImageInHDR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v8}, Lcom/sec/android/app/camera/CommonEngine;->access$2600(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # invokes: Lcom/sec/android/app/camera/CommonEngine;->getHDRFileName()Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$2700(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2600(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2602(Lcom/sec/android/app/camera/CommonEngine;I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v21

    :try_start_6
    const-string v2, "CommonEngine"

    const-string v7, "Exception while compressing image."

    move-object/from16 v0, v21

    invoke-static {v2, v7, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :goto_6
    move/from16 v19, v18

    :goto_7
    monitor-exit p0

    return v19

    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x17

    if-ne v2, v7, :cond_9

    const-string v2, "CommonEngine"

    const-string v7, "[LowLight] storeImage - add LLS tag "

    invoke-static {v2, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LLS"

    invoke-static {v5, v6, v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x11

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x18

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x19

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x22

    if-ne v2, v7, :cond_b

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "_bestshot"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x30

    if-ne v2, v7, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3DTour_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContinuousFileSequence:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1

    :cond_c
    invoke-static {v5, v6}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x30

    if-ne v2, v7, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    const-string v7, "/.3DTour"

    invoke-static {v2, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getCoverModeImageSavingDir(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v7

    invoke-static {v2, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CommonEngine;->getOrientationOnTake()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v33

    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage - orientationForPicture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v33 .. v33}, Lcom/sec/android/app/camera/Util;->convertToExifInterfaceOrientation(I)I

    move-result v10

    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage - ExifInterface Orientation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CaptureData;->setOrientation(I)V

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mWhiteBalance:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mFlashMode:I

    move-object/from16 v7, p2

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/camera/ImageSavingUtils;->addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z

    move-result v18

    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage bSuccess: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x30

    if-ne v2, v7, :cond_14

    move/from16 v19, v18

    goto/16 :goto_7

    :cond_14
    if-eqz v18, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-ne v2, v7, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$2600(Lcom/sec/android/app/camera/CommonEngine;)I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mSavedImageRichtoneCompleted:Z
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3002(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xa

    if-eq v2, v7, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-ne v2, v7, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x17

    if-ne v2, v7, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    move/from16 v12, v33

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v13

    new-instance v37, Landroid/content/ContentValues;

    const/16 v2, 0x9

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "title"

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "mime_type"

    const-string v7, "image/jpeg"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "orientation"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_data"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/camera/CommonEngine;->access$2900(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_18

    const-string v2, "height"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "width"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_18
    const/16 v22, 0x0

    :try_start_8
    new-instance v23, Landroid/media/ExifInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v22, v23

    :goto_9
    if-eqz v22, :cond_1a

    const/4 v2, 0x2

    :try_start_9
    new-array v0, v2, [F

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "latitude"

    const/4 v7, 0x0

    aget v7, v30, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v2, "longitude"

    const/4 v7, 0x1

    aget v7, v30, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1a

    const-string v2, "ImageLength"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const-string v2, "ImageWidth"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v2, "height"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "width"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-ne v2, v7, :cond_1c

    :cond_1b
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Burstshot/Bestshot groupID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CommonEngine;->getGroupID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "group_id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CommonEngine;->getGroupID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x23

    if-ne v2, v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1e

    :cond_1d
    const-string v2, "date_modified"

    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_1e
    const/4 v15, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v37

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "GATE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<GATE-M>PICTURE_TAKEN : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/camera/CommonEngine;->access$2900(Lcom/sec/android/app/camera/CommonEngine;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " </GATE-M>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v2, v15, v7, v8}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iput-object v15, v2, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingModeType()I

    move-result v16

    const/16 v2, 0x64

    move/from16 v0, v16

    if-eq v0, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/sec/android/app/camera/ContextProviderUtils;->getTakePhotoSet(Ljava/lang/String;IIILandroid/net/Uri;II)Landroid/os/Bundle;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-static {v2, v7, v0}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_20
    :goto_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x1

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mCaptureInitiated:Z
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3202(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraSettings;->addUriListInSecureMode(Landroid/net/Uri;)V

    goto/16 :goto_6

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_24

    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "panorama mode with bitmap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sec/android/app/camera/CommonEngine;->access$3100(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3100(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_22

    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updating thumbnail now "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sec/android/app/camera/CommonEngine;->access$3100(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with orientationForPicture "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3100(Lcom/sec/android/app/camera/CommonEngine;)Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    const/4 v7, 0x0

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CommonEngine;->access$3102(Lcom/sec/android/app/camera/CommonEngine;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_22
    :try_start_c
    new-instance v22, Landroid/media/ExifInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/camera/Util;->convertExifOrientationToMediaOrientation(I)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v12

    :try_start_d
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read new orientation from exif: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_8

    :catch_2
    move-exception v29

    :goto_b
    :try_start_e
    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read exif tags from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catch_3
    move-exception v21

    const-string v2, "CommonEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read exif tags from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catch_4
    move-exception v34

    const-string v2, "CommonEngine"

    const-string v7, "Not enough space in database"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v8, 0x7f0b018c

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/Camera;->showCoverModeDialog(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0b018c

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_a

    :catch_5
    move-exception v29

    move/from16 v12, v33

    goto :goto_b

    :cond_24
    move/from16 v12, v33

    goto/16 :goto_8

    :cond_25
    move/from16 v12, v33

    goto/16 :goto_6
.end method


# virtual methods
.method public DualCaptureModeAsyncReset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    return-void
.end method

.method public cancelCaptureForDrama()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelDramaShot()V

    return-void
.end method

.method public cancelCaptureForMagic()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelMagicShot()V

    return-void
.end method

.method public cancelCaptureForPanorama()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->cancelAutoFocus()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->startResetTouchFocusTimer()V

    goto :goto_0
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelSeriesActionShot()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    return-void
.end method

.method public chkActionShotStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    return v0
.end method

.method public handleShutterEvent()V
    .locals 9

    const/16 v8, 0x1a

    const/16 v7, 0x18

    const/16 v6, 0x11

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    :cond_0
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEvent - isCapturing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v6, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v7, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CommonEngine"

    const-string v2, "duplicate schedule burst shot"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->needToAEAWBLocked(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v8, v4}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v5, v4}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartBurstShot()V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v7, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x77

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_1
.end method

.method public handleShutterEventForBurstShot()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    :cond_0
    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEvent - isCapturing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEventForBurstShot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/Camera;->checkStorageLow(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CommonEngine"

    const-string v2, "duplicate schedule burst shot"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->needToAEAWBLocked(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartBurstShot()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x77

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_1
.end method

.method public handleShutterReleaseEvent()V
    .locals 8

    const/16 v7, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "CommonEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShutterReleaseEvent - mFocusState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget v6, v6, Lcom/sec/android/app/camera/CommonEngine;->mFocusState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isStartingPreview()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string v2, "CommonEngine"

    const-string v3, "handleShutterReleaseEvent returning.."

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    invoke-static {v4}, Lcom/sec/android/app/camera/CommonEngine;->access$2100(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong state for take picture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v2

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isSingleShotBurst()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopBurstShot()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    if-nez v4, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CommonEngine;->doSetDualCaptureModeSync(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->startDualModeAsyncShot(Z)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onDualModeAsyncFirstCapture()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuForDualCaptureModeAsyncShot()V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v4

    if-ne v4, v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->onDualModeAsyncCaptureCompleted()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "CommonEngine"

    const-string v3, "Burst shot is progressing..."

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    :pswitch_4
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isPanoramaCaptureAllowed()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v2, "CommonEngine"

    const-string v3, "Drop Panorama capture start, because it\'s not ready."

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-eqz v4, :cond_b

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureStart()Z

    move-result v2

    if-nez v2, :cond_c

    iput-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPanorama()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    :pswitch_6
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v4, :cond_f

    move v3, v2

    :cond_f
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    iget-boolean v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v3, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartActionShot()V

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleStopActionShot : STOP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopActionShot()V

    goto/16 :goto_0

    :cond_11
    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleStopActionShot: don\'t STOP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopBurstShot()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleShutterEvent()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->checkSaveDirectory()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->checkDramaDumpDir()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    :cond_12
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartDramaShot()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->checkSaveDirectory()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onGolfShotStarted()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getGolfDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->startGolfShot(I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->checkMagicDumpDir()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v0, 0x10

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getRemainCount()I

    move-result v3

    if-ge v3, v0, :cond_15

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->setStorageStatusLow()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x20

    goto :goto_2

    :cond_15
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartMagicShot()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onOutFocusStarted()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public handleSingleShutter()V
    .locals 4

    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-CaptureSequenceStart**Point["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$2200(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$AutoFocusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$900(Lcom/sec/android/app/camera/CommonEngine;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->needToAEAWBLocked(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->lockAEAWB()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoFocus()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->handleTimer()Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPreviewDummy()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->getAutoShotNightMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleAutoNight()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleTakePicture()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_6

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStartPreview()V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->needToAWBLocked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->lockAWB()V

    goto/16 :goto_0
.end method

.method public isDualCaptureModeAsyncFirstCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    return v0
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    return v0
.end method

.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->doNotResumeContinousAFOnPictureTaken()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->cancelAutoFocus()V

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v1

    if-ne v1, v5, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CommonEngine;->setFocusParameter(I)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->unlockAEAWB()V

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # setter for: Lcom/sec/android/app/camera/CommonEngine;->bIsHalfShutter:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/CommonEngine;->access$902(Lcom/sec/android/app/camera/CommonEngine;Z)Z

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mActionShotStarted:Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera;->update3DTourThumbnail([B)V

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CommonEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->startResetTouchFocusTimer()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public resetPanoramaCapturing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setShootingMode(I)V
    .locals 6

    const/16 v3, 0x22

    const/16 v2, 0x19

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    iput p1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$2100(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    :goto_1
    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x26

    if-ne p1, v0, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3300(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$2100(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/seccamera/SecCamera;->setDramaShotMode(I)V

    :goto_3
    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-ne v0, v5, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    :cond_3
    :goto_4
    packed-switch p1, :pswitch_data_0

    :goto_5
    :pswitch_0
    return-void

    :sswitch_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mDualCaptureModeAsyncFirstCapturing:Z

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mCurrentShootingMode:I

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->finishActionShot()V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "CommonEngine"

    const-string v1, "setLowLightShot : 0"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onMultiFrameShotReset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setLowLightShot(I)V

    goto/16 :goto_0

    :sswitch_5
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    const-string v1, "hdr-mode"

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    add-int/lit16 v1, v1, 0x190

    invoke-virtual {v0, p1, v1, v4}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(III)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setSingleEffectSync(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Camera;->setEffectMenuSelect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setDualEffectSync(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectLayerOrderForDualCamera()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->setOrientationForDual()V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setDualTrackingMode(Z)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mShutterCallback:Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;
    invoke-static {v1}, Lcom/sec/android/app/camera/CommonEngine;->access$3400(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$ShutterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;
    invoke-static {v2}, Lcom/sec/android/app/camera/CommonEngine;->access$3300(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$RawPictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;
    invoke-static {v3}, Lcom/sec/android/app/camera/CommonEngine;->access$2100(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/app/camera/CommonEngine$JpegPictureCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/seccamera/SecCamera;->setDramaShotMode(I)V

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CommonEngine;->setAutoLowLight(Z)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setLiveBeautyMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetFaceRetouchLevelSync(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setBeautyLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setRichtonePictureMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$800(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    const-string v1, "hdr-mode"

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_5

    :pswitch_7
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->mPanoramaCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_5

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->initializeActionShot()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    # getter for: Lcom/sec/android/app/camera/CommonEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CommonEngine;->access$700(Lcom/sec/android/app/camera/CommonEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setResolutionActionShot(II)V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    const-string v0, "CommonEngine"

    const-string v1, "setLowLightShot : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CommonEngine;->setLowLightShot(I)V

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x7 -> :sswitch_0
        0xa -> :sswitch_3
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x17 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1f -> :sswitch_0
        0x22 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
