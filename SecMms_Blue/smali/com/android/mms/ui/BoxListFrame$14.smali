.class Lcom/android/mms/ui/BoxListFrame$14;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->markAsRead(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$14;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iput-object p2, p0, Lcom/android/mms/ui/BoxListFrame$14;->val$msgUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/BoxListFrame$14;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$14;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2900(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$14;->val$msgUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$14;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$14;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    return-void
.end method
