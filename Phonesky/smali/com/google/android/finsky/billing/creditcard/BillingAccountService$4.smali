.class Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;
.super Ljava/lang/Object;
.source "BillingAccountService.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkValidInstrument(Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

.field final synthetic val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

.field final synthetic val$resultCodeOut:[I

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->this$0:Lcom/google/android/finsky/billing/creditcard/BillingAccountService;

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$resultCodeOut:[I

    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;)V
    .locals 4

    iget-boolean v1, p1, Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;->userHasValidInstrument:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$dfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$resultCodeOut:[I

    iget-object v3, p0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->val$semaphore:Ljava/util/concurrent/Semaphore;

    # invokes: Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->access$200(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;->onResponse(Lcom/google/android/finsky/protos/BuyInstruments$CheckInstrumentResponse;)V

    return-void
.end method
