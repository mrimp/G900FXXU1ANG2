.class Lcom/android/contacts/editor/ContactEditorFragment$11;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3

    new-instance v0, Lcom/android/contacts/GroupMetaDataLoader;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/GroupMetaDataLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$11;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # setter for: Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;
    invoke-static {v0, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1802(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$11;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    # invokes: Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1900(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$11;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
