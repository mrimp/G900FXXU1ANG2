.class Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$10;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$200(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    # getter for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$700(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$10;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    # operator++ for: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$1408(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
