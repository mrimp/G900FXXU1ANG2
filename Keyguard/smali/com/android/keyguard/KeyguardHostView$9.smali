.class Lcom/android/keyguard/KeyguardHostView$9;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->access$1800(Lcom/android/keyguard/KeyguardHostView;Z)V

    return-void
.end method

.method public getFailedAttempts()I
    .locals 8

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardHostView;->access$2400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardHostView;->access$2100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardHostView;->access$2100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_3

    :cond_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_1

    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v5, :cond_4

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardHostView;->access$2500(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy()I

    move-result v1

    :goto_2
    return v1

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardHostView;->access$2600(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v1

    goto :goto_2
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1900(Lcom/android/keyguard/KeyguardHostView;)Z

    move-result v0

    return v0
.end method

.method public launchCamera()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->launchCamera()V

    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$2200(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->reportFailedUnlockAttempt()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$2300(Lcom/android/keyguard/KeyguardHostView;)V

    goto :goto_0
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$2000(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$2100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    return-void
.end method

.method public showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # invokes: Lcom/android/keyguard/KeyguardHostView;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->access$2700(Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public showWipeDialog(I)V
    .locals 8
    .param p1    # I

    move v0, p1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardHostView;->access$3000(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mDialogTheme:I
    invoke-static {v4}, Lcom/android/keyguard/KeyguardHostView;->access$3100(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardHostView;->access$2900(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x10405b8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06000d

    new-instance v4, Lcom/android/keyguard/KeyguardHostView$9$2;

    invoke-direct {v4, p0, v0}, Lcom/android/keyguard/KeyguardHostView$9$2;-><init>(Lcom/android/keyguard/KeyguardHostView$9;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/KeyguardHostView$9$1;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardHostView$9$1;-><init>(Lcom/android/keyguard/KeyguardHostView$9;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$9;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    :cond_0
    return-void
.end method
