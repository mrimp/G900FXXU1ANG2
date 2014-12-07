.class public Lcom/android/incallui/GlowPadWrapper;
.super Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.source "GlowPadWrapper.java"

# interfaces
.implements Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/GlowPadWrapper$AnswerListener;
    }
.end annotation


# instance fields
.field private mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

.field private mPingEnabled:Z

.field private final mPingHandler:Landroid/os/Handler;

.field private mTargetTriggered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/incallui/GlowPadWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/GlowPadWrapper$1;-><init>(Lcom/android/incallui/GlowPadWrapper;)V

    iput-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/incallui/GlowPadWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/GlowPadWrapper$1;-><init>(Lcom/android/incallui/GlowPadWrapper;)V

    iput-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/GlowPadWrapper;)V
    .locals 0
    .param p0    # Lcom/android/incallui/GlowPadWrapper;

    invoke-direct {p0}, Lcom/android/incallui/GlowPadWrapper;->triggerPing()V

    return-void
.end method

.method private triggerPing()V
    .locals 4

    const/16 v3, 0x65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerPing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->ping()V

    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    const-string v0, "onFinishInflate()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    const-string v0, "onGrabbed()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I

    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    const-string v0, "onReleased()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v2, 0x1

    const-string v1, "onTrigger()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v1, "Trigger detected on unhandled resource. Skipping."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-interface {v1}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onAnswer()V

    iput-boolean v2, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-interface {v1}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onDecline()V

    iput-boolean v2, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    invoke-interface {v1}, Lcom/android/incallui/GlowPadWrapper$AnswerListener;->onText()V

    iput-boolean v2, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0202de -> :sswitch_0
        0x7f0202e3 -> :sswitch_1
        0x7f0202e8 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAnswerListener(Lcom/android/incallui/GlowPadWrapper$AnswerListener;)V
    .locals 0
    .param p1    # Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    iput-object p1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerListener:Lcom/android/incallui/GlowPadWrapper$AnswerListener;

    return-void
.end method

.method public startPing()V
    .locals 1

    const-string v0, "startPing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    invoke-direct {p0}, Lcom/android/incallui/GlowPadWrapper;->triggerPing()V

    return-void
.end method

.method public stopPing()V
    .locals 2

    const-string v0, "stopPing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
