.class Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$11;->onItemClicked(Lcom/android/contacts/quickcontact/Action;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

.field final synthetic val$action:Lcom/android/contacts/quickcontact/Action;

.field final synthetic val$intentNumber:I


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$11;ILcom/android/contacts/quickcontact/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    iput p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->val$intentNumber:I

    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    iget-object v2, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->val$intentNumber:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/contacts/ContactsUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    iget-object v1, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    return-void

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->val$intentNumber:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getThirdIntent()Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$11$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    iget-object v1, v1, Lcom/android/contacts/quickcontact/QuickContactActivity$11;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v2, 0x7f0e0077

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
