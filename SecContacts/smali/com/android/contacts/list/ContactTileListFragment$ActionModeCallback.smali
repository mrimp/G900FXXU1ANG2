.class Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p2    # Lcom/android/contacts/list/ContactTileListFragment$1;

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    return-void
.end method

.method private createLauncherShortcutWithContact(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$700(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$3;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$3;-><init>(Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;Landroid/app/Activity;)V

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public deselectAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->clearAllCheckStates()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileListFragment;->shouldHideShareViaMenu()Z

    move-result v1

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->refreshActionBarMode()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 27
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    :goto_0
    const/16 v22, 0x1

    return v22

    :sswitch_0
    new-instance v14, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;-><init>(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$1;)V

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_1
    const/4 v12, -0x1

    new-instance v8, Lcom/android/contacts/common/preference/ContactsPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/list/ContactTileListFragment;->access$700(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSendContactType()I

    move-result v15

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCursorCount()I

    move-result v9

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/contacts/common/list/ContactTileAdapter;->getContactId(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/contacts/common/list/ContactTileAdapter;->isSharableContact(I)Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_4

    const/4 v10, 0x0

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v12

    sget-object v22, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLookupKey(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/16 v22, 0xfa

    move/from16 v0, v22

    if-lt v3, v0, :cond_3

    const/4 v4, 0x1

    :cond_2
    new-instance v17, Landroid/content/Intent;

    const-string v22, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "text/x-vcard"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v22, "vcard"

    const-string v23, "vcard"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_3
    if-eqz v4, :cond_8

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/list/ContactTileListFragment;->access$700(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0431

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0xfa

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0xfa

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v22, 0x104000a

    new-instance v23, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;-><init>(Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;Landroid/content/Intent;)V

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getPosition(Ljava/lang/Long;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLookupKey(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x3a

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/16 v22, 0xbb8

    move/from16 v0, v22

    if-lt v3, v0, :cond_6

    const/4 v4, 0x1

    :cond_5
    sget-object v22, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    new-instance v17, Landroid/content/Intent;

    const-string v22, "android.intent.action.SEND"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "text/x-vcard"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v22, Landroid/content/ClipData;

    const-string v23, "dummy"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "text/x-vcard"

    aput-object v26, v24, v25

    new-instance v25, Landroid/content/ClipData$Item;

    const-string v26, "dummy"

    invoke-direct/range {v25 .. v26}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct/range {v22 .. v25}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string v22, "vcard"

    const-string v23, "vcard"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v22, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0431

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0xbb8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0xbb8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const v23, 0x7f0e033f

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/contacts/util/ChooserUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v6

    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_2
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_9

    sget-object v23, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    move-object/from16 v22, v0

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->createLauncherShortcutWithContact(Landroid/net/Uri;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f080314 -> :sswitch_0
        0x7f080340 -> :sswitch_1
        0x7f080341 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000f

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z
    invoke-static {v1, v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$302(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$700(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f08016d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$1;-><init>(Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;Landroid/view/ActionMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f08016c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedTextView:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$802(Lcom/android/contacts/list/ContactTileListFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # invokes: Lcom/android/contacts/list/ContactTileListFragment;->addSelectAllHeader()V
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$900(Lcom/android/contacts/list/ContactTileListFragment;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1000(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mRestoreActionMode:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$1002(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->setSelectionMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/contacts/listener/ContextualActionbarListener;->onCreateActionMode()V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsRecreatedInstance:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1200(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment;->shouldHideShareViaMenu()Z

    move-result v2

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    :cond_1
    :goto_1
    return v4

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$002(Lcom/android/contacts/list/ContactTileListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1, v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    goto :goto_1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1    # Landroid/view/ActionMode;

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->setActionContextBarVisibility(ZLandroid/view/ActionMode;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$1100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mCABListener:Lcom/samsung/contacts/listener/ContextualActionbarListener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$1100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/samsung/contacts/listener/ContextualActionbarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/contacts/listener/ContextualActionbarListener;->onDestroyActionMode()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # invokes: Lcom/android/contacts/list/ContactTileListFragment;->removeSelectAllHeader()V
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$1500(Lcom/android/contacts/list/ContactTileListFragment;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z
    invoke-static {v0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$302(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v0, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$1302(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->setSelectionMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->clearAllCheckStates()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    iput-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v0, v3}, Lcom/android/contacts/list/ContactTileListFragment;->access$202(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v1, 0x7f080314

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v1, 0x7f0e0165

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    const v1, 0x7f080340

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1400(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f080341

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$700(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v3, v2

    :cond_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method public refreshActionBarMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public selectAll()V
    .locals 5

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCursorCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v3, v3, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getContactId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, v2, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->selectAllCheckStates()V

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDeleteOnlyMode:Z
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactTileListFragment;->shouldHideShareViaMenu()Z

    move-result v3

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v2, v3}, Lcom/android/contacts/list/ContactTileListFragment;->access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->refreshActionBarMode()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v3, 0x1

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mShouldHideShareViaMenu:Z
    invoke-static {v2, v3}, Lcom/android/contacts/list/ContactTileListFragment;->access$1402(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    goto :goto_1
.end method

.method public setActionContextBarVisibility(ZLandroid/view/ActionMode;)V
    .locals 7
    .param p1    # Z
    .param p2    # Landroid/view/ActionMode;

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v6

    if-eqz p1, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v6, 0x10203b8

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    const v4, 0x7f020276

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_5

    invoke-interface {v2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    goto :goto_0

    :cond_4
    const v4, 0x7f0a008b

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$700(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e027e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/TextView;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v5, v5, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v5, v5, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCursorCount()I

    move-result v5

    if-ne v0, v5, :cond_1

    :goto_0
    # invokes: Lcom/android/contacts/list/ContactTileListFragment;->updateSelectAllState(Z)V
    invoke-static {v4, v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$1700(Lcom/android/contacts/list/ContactTileListFragment;Z)V

    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method
