.class abstract Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;
.super Lcom/google/android/play/IUserContentService$Stub;
.source "AppsUsageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/AppsUsageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StatsBinder"
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mHasPermission:Z

.field private mTriedGettingMethod:Z

.field private mUsageMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/google/android/finsky/services/AppsUsageService;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/services/AppsUsageService;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    invoke-direct {p0}, Lcom/google/android/play/IUserContentService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mTriedGettingMethod:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mHasPermission:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/services/AppsUsageService;Lcom/google/android/finsky/services/AppsUsageService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;-><init>(Lcom/google/android/finsky/services/AppsUsageService;)V

    return-void
.end method

.method private getMethod()V
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/services/AppsUsageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getAllPackageUsageStats"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mUsageMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    invoke-virtual {v3}, Lcom/google/android/finsky/services/AppsUsageService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    iget-object v6, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->this$0:Lcom/google/android/finsky/services/AppsUsageService;

    invoke-virtual {v6}, Lcom/google/android/finsky/services/AppsUsageService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mHasPermission:Z

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Unable to get package usage stats method"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected getData()[Lcom/android/internal/os/PkgUsageStats;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mUsageMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mTriedGettingMethod:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mHasPermission:Z

    if-nez v1, :cond_1

    :cond_0
    new-array v1, v4, [Lcom/android/internal/os/PkgUsageStats;

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->getMethod()V

    invoke-virtual {p0}, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->getData()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mUsageMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/os/PkgUsageStats;

    check-cast v1, [Lcom/android/internal/os/PkgUsageStats;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to invoke method: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, p0, Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;->mHasPermission:Z

    new-array v1, v4, [Lcom/android/internal/os/PkgUsageStats;

    goto :goto_0
.end method
