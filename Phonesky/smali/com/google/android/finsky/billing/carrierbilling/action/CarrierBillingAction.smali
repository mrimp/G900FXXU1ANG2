.class public Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
.super Ljava/lang/Object;
.source "CarrierBillingAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canSkip()Z
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->canSkip()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingLocator;->initCarrierBillingStorage(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
