.class Lcom/android/keyguard/KeyguardPatternView$3;
.super Landroid/database/ContentObserver;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$600(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->isOnehandAnyScreenMode()Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$700(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->stopHandAdaptableObserver()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$800(Lcom/android/keyguard/KeyguardPatternView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->getHandAdaptableOperationValue()I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$100(Lcom/android/keyguard/KeyguardPatternView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->startHandAdaptableObserver()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$1200(Lcom/android/keyguard/KeyguardPatternView;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLeftPressed:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$500(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->access$400(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->access$400(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;Z)V

    goto :goto_0
.end method
