.class Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$5;
.super Ljava/lang/Object;
.source "IncomingCallTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->initIncomingTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$5;->this$0:Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080020

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$5;->this$0:Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;

    # invokes: Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->showToast()V
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->access$400(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
