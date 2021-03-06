.class public Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;
.super Lcom/android/contacts/common/util/WeakAsyncTask;
.source "SIMContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/samsung/contacts/activities/SIMContactSelectionActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private mSelectedContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

.field private mode:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/contacts/activities/SIMContactSelectionActivity;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {p0, p2}, Lcom/android/contacts/common/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    iput-object p2, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iput-object p3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mMode:I
    invoke-static {p2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$100(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mode:I

    invoke-static {p2}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    iget-object v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z
    invoke-static {p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1100(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v5, v5, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v5}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->doInBackground(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V
    .locals 8

    const v7, 0x7f0e03ff

    const/4 v6, 0x2

    const v5, 0x7f0e0400

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const-string v0, "SIMContactSelectionActivity"

    const-string v3, "progress null"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mode:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0e0408

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v4, v7, v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1200(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1400(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDelete()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDelete(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "SIMContactSelectionActivity"

    const-string v3, "progress.get null"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SIMContactSelectionActivity"

    const-string v4, "Error DeleteTask"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0e0409

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    const v0, 0x7f0e02f3

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_7
    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mode:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    # getter for: Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z
    invoke-static {v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->access$1300(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    if-ne v0, v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0e0408

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mTarget:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v4, v7, v0}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;->showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    const v4, 0x7f0e0409

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->this$0:Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f000b

    iget v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->onPostExecute(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0e037f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance v0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask$1;-><init>(Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/activities/SIMContactSelectionActivity$DeleteTask;->onPreExecute(Lcom/samsung/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method
