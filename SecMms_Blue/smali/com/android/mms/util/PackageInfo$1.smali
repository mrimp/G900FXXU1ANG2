.class final Lcom/android/mms/util/PackageInfo$1;
.super Ljava/lang/Object;
.source "PackageInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/PackageInfo;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/PackageInfo$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/util/PackageInfo$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/util/PackageInfo$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/PackageInfo$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->startSamsungApps(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
