.class Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;
.super Ljava/lang/Object;
.source "MyAppsTabbedFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->archiveDocs(Ljava/util/List;)V
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
        "Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    iget-object v0, p1, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$800(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;->libraryUpdate:Lcom/google/android/finsky/protos/Library$LibraryUpdate;

    const-string v3, "myapps-archive"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->canChangeFragmentManagerState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    # invokes: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->dismissArchiveProgressDialog()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$900(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$3;->onResponse(Lcom/google/android/finsky/protos/ModifyLibrary$ModifyLibraryResponse;)V

    return-void
.end method