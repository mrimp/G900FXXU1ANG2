.class Lcom/android/mms/replyservice/MiniModeService$15;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$15;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$15;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$2100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$15;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mIsResizeHandlerShown:Z
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$2200(Lcom/android/mms/replyservice/MiniModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$15;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mResizeHandler:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$2100(Lcom/android/mms/replyservice/MiniModeService;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$15;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/replyservice/MiniModeService;->mIsResizeHandlerShown:Z
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/MiniModeService;->access$2202(Lcom/android/mms/replyservice/MiniModeService;Z)Z

    :cond_0
    return-void
.end method
