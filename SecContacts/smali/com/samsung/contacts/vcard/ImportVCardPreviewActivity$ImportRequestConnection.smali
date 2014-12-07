.class Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
.super Ljava/lang/Object;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportRequestConnection"
.end annotation


# instance fields
.field private mService:Lcom/android/contacts/common/vcard/VCardService;

.field final synthetic this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;-><init>(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    # setter for: Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->mIsBound:Z
    invoke-static {v0, v2}, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->access$202(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;Z)Z

    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const-string v0, "VCardImport"

    const-string v1, "Connected to VCardService. Kick a vCard cache thread (uri: %s)"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    invoke-static {v4}, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;)Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->getSourceUris()[Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    invoke-static {v0}, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;)Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "VCardImport"

    const-string v1, "Disconnected from VCardService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->access$202(Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;Z)Z

    return-void
.end method

.method public sendImportRequest(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "VCardImport"

    const-string v1, "Send an import request"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v1, p0, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->this$0:Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    iget-object v1, v1, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/vcard/VCardService;->handleImportRequest(Ljava/util/List;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    return-void
.end method
