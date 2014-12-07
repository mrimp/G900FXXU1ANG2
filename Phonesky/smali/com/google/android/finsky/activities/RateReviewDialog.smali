.class public Lcom/google/android/finsky/activities/RateReviewDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "RateReviewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/RateReviewDialog$Listener;,
        Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    }
.end annotation


# instance fields
.field mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/RateReviewDialog;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/RateReviewDialog;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/RateReviewDialog;->setRating(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/RateReviewDialog;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/RateReviewDialog;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->syncOkButtonState()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/RateReviewDialog;)Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/RateReviewDialog;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getListener()Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/finsky/activities/RateReviewDialog$Listener;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRatingForIndex(I)Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;
    .locals 5
    .param p1    # I

    invoke-static {}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->values()[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    # invokes: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getIndex()I
    invoke-static {v3}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$000(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v4

    if-ne v4, p1, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)Lcom/google/android/finsky/activities/RateReviewDialog;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    new-instance v1, Lcom/google/android/finsky/activities/RateReviewDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/RateReviewDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "doc_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rating_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v2, "previous_rating"

    # invokes: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getIndex()I
    invoke-static {p2}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$000(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/RateReviewDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private setRating(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/RateReviewDialog;->getRatingForIndex(I)Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->syncOkButtonState()V

    return-void
.end method

.method private syncOkButtonState()V
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1    # Landroid/os/Bundle;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const v13, 0x7f0c0051

    invoke-direct {v4, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v12, "rating_id"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "doc_id"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    move-object v11, p1

    :goto_0
    const-string v12, "previous_rating"

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/google/android/finsky/activities/RateReviewDialog;->getRatingForIndex(I)Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    invoke-static {}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->values()[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v12

    array-length v12, v12

    new-array v3, v12, [Ljava/lang/CharSequence;

    invoke-static {}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->values()[Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    move-result-object v1

    array-length v8, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v9, v1, v6

    # invokes: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getIndex()I
    invoke-static {v9}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$000(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v12

    # invokes: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getTextResourceId()I
    invoke-static {v9}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$100(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move-object v11, v0

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0901ef

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v12, Lcom/google/android/finsky/activities/RateReviewDialog$1;

    invoke-direct {v12, p0}, Lcom/google/android/finsky/activities/RateReviewDialog$1;-><init>(Lcom/google/android/finsky/activities/RateReviewDialog;)V

    invoke-virtual {v2, v3, v7, v12}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v12, 0x104000a

    new-instance v13, Lcom/google/android/finsky/activities/RateReviewDialog$2;

    invoke-direct {v13, p0, v5, v10}, Lcom/google/android/finsky/activities/RateReviewDialog$2;-><init>(Lcom/google/android/finsky/activities/RateReviewDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v12, 0x1040000

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    return-object v12
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    if-eqz v0, :cond_0

    const-string v0, "previous_rating"

    iget-object v1, p0, Lcom/google/android/finsky/activities/RateReviewDialog;->mRating:Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    # invokes: Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getIndex()I
    invoke-static {v1}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->access$000(Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/RateReviewDialog;->syncOkButtonState()V

    return-void
.end method
