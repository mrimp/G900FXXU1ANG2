.class Lcom/android/keyguard/KeyguardPatternView$7;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$7;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$7;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$1700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$7;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCircleView:Lcom/android/keyguard/sec/EmergencyCircleView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/EmergencyCircleView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView$7;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mDummyEmergencyButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardPatternView;->access$1900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/keyguard/sec/EmergencyCircleView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$7;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$1800(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/EmergencyButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/EmergencyButton;->updateBackgroundResourceWithRetainedPadding(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$7;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$1800(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/EmergencyButton;

    move-result-object v1

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Lcom/android/keyguard/EmergencyButton;->updateBackgroundResourceWithRetainedPadding(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
