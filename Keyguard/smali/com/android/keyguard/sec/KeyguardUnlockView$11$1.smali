.class Lcom/android/keyguard/sec/KeyguardUnlockView$11$1;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView$11;->showShortcutHelpText(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView$11;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0600c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$11$1;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardUnlockView$11;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
