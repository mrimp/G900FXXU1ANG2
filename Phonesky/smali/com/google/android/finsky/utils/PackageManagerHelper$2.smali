.class final Lcom/google/android/finsky/utils/PackageManagerHelper$2;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageManagerHelper;->notifyFailedInstall(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$returnCode:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$2;->val$returnCode:I

    iput-object p2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$2;->val$returnCode:I

    packed-switch v2, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForPackage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$2;->val$packageName:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/utils/PackageManagerHelper;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/finsky/utils/PackageManagerHelper;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$2;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/utils/PackageManagerHelper$2;->val$message:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/finsky/utils/Notifier;->showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_0
    .end packed-switch
.end method
