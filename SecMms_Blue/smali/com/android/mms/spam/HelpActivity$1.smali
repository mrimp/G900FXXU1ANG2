.class Lcom/android/mms/spam/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/HelpActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/HelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/HelpActivity$1;->this$0:Lcom/android/mms/spam/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "demo1"

    const-string v1, "IEngineService onServiceConnected"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/engine/IEngineService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/engine/IEngineService;

    move-result-object v0

    sput-object v0, Lcom/android/mms/spam/HelpActivity;->myCheckService:Lcom/tencent/engine/IEngineService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/spam/HelpActivity;->myCheckService:Lcom/tencent/engine/IEngineService;

    return-void
.end method
