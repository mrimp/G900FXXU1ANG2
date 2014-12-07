.class public Lcom/android/contacts/interactions/ContactDeletionInteraction;
.super Landroid/app/Fragment;
.source "ContactDeletionInteraction.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# static fields
.field private static final ENTITY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFinishActivityWhenDone:Z

.field mMessageId:I

.field private mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private setFinishActivityWhenDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    return-void
.end method

.method private setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    return-void
.end method

.method private showDialog(ILandroid/net/Uri;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0393

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;

    invoke-direct {v2, p0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;-><init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManager;)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    move-result-object v0

    return-object v0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManager;)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deleteContact"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    invoke-direct {v0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;-><init>()V

    invoke-direct {v0, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    invoke-direct {v0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "deleteContact"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_1
    invoke-direct {v0, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    invoke-direct {v0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected doDeleteContact(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/contacts/ContactSaveService;->createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/TestLoaderManager;->setDelegate(Landroid/app/LoaderManager;)V

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    :cond_0
    return-object v0
.end method

.method isStarted()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    const-string v0, "finishWhenDone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    const-string v2, "entities"

    invoke-static {v7, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 25
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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->dismiss()V

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    :goto_0
    return-void

    :cond_1
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v14

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v22

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v16

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    const/16 v23, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_7

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v23, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v23, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v23, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v23

    if-eqz v23, :cond_5

    :cond_2
    const/16 v20, 0x1

    :goto_2
    if-eqz v20, :cond_6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-static {v2}, Lcom/samsung/contacts/model/AccountTypeInfo;->isDeviceLocalAccount(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v20, :cond_4

    invoke-static {v2}, Lcom/samsung/contacts/model/AccountTypeInfo;->isSimAccount(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/16 v20, 0x0

    goto :goto_2

    :cond_6
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v13

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    move-result v21

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->size()I

    move-result v17

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_8

    const v23, 0x7f0e0055

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    :goto_4
    invoke-static {v4, v5, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->showDialog(ILandroid/net/Uri;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v23

    const v24, 0x7f080006

    invoke-virtual/range {v23 .. v24}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0

    :cond_8
    if-lez v13, :cond_9

    if-lez v21, :cond_9

    const v23, 0x7f0e0050

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    :cond_9
    if-lez v13, :cond_a

    if-nez v21, :cond_a

    const v23, 0x7f0e004f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    :cond_a
    if-nez v13, :cond_c

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    move/from16 v0, v17

    if-ne v9, v0, :cond_b

    const v23, 0x7f0e0395

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    :cond_b
    const v23, 0x7f0e0054

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    :cond_c
    if-nez v9, :cond_d

    if-nez v13, :cond_d

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    const v23, 0x7f0e0053

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4

    :cond_d
    const v23, 0x7f0e0052

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_4
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "active"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "finishWhenDone"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 3

    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method
