.class Lcom/samsung/mms/ui/AutoSendingTestActivity$7;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/AutoSendingTestActivity;->startSendMessage(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$sendReq:Lcom/google/android/mms/pdu/SendReq;

.field final synthetic val$threadID:J


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    iput-object p2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->val$mmsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-object p4, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iput-wide p5, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->val$threadID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    # getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v0}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$1500(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    iget-object v0, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->val$mmsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v3, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    # getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v3}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$1500(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-wide v5, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$7;->val$threadID:J

    # invokes: Lcom/samsung/mms/ui/AutoSendingTestActivity;->sendMmsWorker(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V
    invoke-static/range {v0 .. v6}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$1600(Lcom/samsung/mms/ui/AutoSendingTestActivity;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;J)V

    return-void
.end method
