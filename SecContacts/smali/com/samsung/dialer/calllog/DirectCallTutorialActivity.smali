.class public Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;
.super Landroid/app/Activity;
.source "DirectCallTutorialActivity.java"

# interfaces
.implements Lcom/samsung/dialer/calllog/DirectCallActivityInterface;


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mDirectCallingManager:Lcom/samsung/dialer/calllog/DirectCallingManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailableDirectCall()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v2, 0x7f030089

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    const/high16 v2, 0x7f040000

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const v2, 0x7f0801c2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/samsung/dialer/calllog/DirectCallingManager;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;-><init>(ILcom/samsung/dialer/calllog/DirectCallActivityInterface;)V

    iput-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/samsung/dialer/calllog/DirectCallingManager;

    iget-object v2, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/samsung/dialer/calllog/DirectCallingManager;

    new-instance v3, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity$1;-><init>(Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/calllog/DirectCallingManager;->setFinishTutorialListener(Lcom/samsung/dialer/calllog/DirectCallingManager$DirectCallingEvent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/samsung/dialer/calllog/DirectCallingManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/samsung/dialer/calllog/DirectCallingManager;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/samsung/dialer/calllog/DirectCallingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->pause(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/samsung/dialer/calllog/DirectCallingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/DirectCallTutorialActivity;->mDirectCallingManager:Lcom/samsung/dialer/calllog/DirectCallingManager;

    invoke-virtual {v0, p0}, Lcom/samsung/dialer/calllog/DirectCallingManager;->resume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
