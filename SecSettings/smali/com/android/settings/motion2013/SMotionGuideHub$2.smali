.class Lcom/android/settings/motion2013/SMotionGuideHub$2;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startAdvancedSettings(Ljava/lang/String;)V

    return-void
.end method
