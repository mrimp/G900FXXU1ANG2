.class Lcom/google/android/finsky/activities/ReviewDialogListener$1;
.super Ljava/lang/Object;
.source "ReviewDialogListener.java"

# interfaces
.implements Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialogListener;->onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRateReviewCommitted(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    # invokes: Lcom/google/android/finsky/activities/ReviewDialogListener;->refreshUserReview()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    return-void
.end method

.method public onRateReviewFailed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialogListener;

    # invokes: Lcom/google/android/finsky/activities/ReviewDialogListener;->refreshUserReview()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    return-void
.end method
