.class Lcom/android/mms/ui/BoxListFrame$ModeCallback;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/BoxListFrame$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListFrame$ModeCallback;-><init>(Lcom/android/mms/ui/BoxListFrame;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/ui/BoxListFrame$MessageData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v3

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mId:J
    invoke-static {v11}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4600(Lcom/android/mms/ui/BoxListFrame$MessageData;)J

    move-result-wide v4

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mType:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4700(Lcom/android/mms/ui/BoxListFrame$MessageData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/mms/ui/BoxListAdapter;->getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2, v3}, Lcom/android/mms/ui/BoxListFrame;->access$4502(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v7}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v3

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2, v3}, Lcom/android/mms/ui/BoxListFrame;->access$4802(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4800(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageOptions;->setConversation(Lcom/android/mms/data/Conversation;)V

    :cond_0
    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->deleteSelectedItems()V
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4900(Lcom/android/mms/ui/BoxListFrame;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$5000(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v16

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$5100(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v16

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/data/Contact;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c041f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v13

    const-string v2, "address"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "replyComposer"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v2, :cond_6

    const/4 v14, 0x1

    :goto_2
    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    goto :goto_3

    :pswitch_7
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$5200(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0149

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$5300(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DownloadManager;->Isexpired(Landroid/net/Uri;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DownloadManager;->markExpriedState(Landroid/net/Uri;)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$5400(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "uri"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$5500(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ltz v9, :cond_c

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BoxListFrame$MessageData;

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mId:J
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4600(Lcom/android/mms/ui/BoxListFrame$MessageData;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BoxListFrame$MessageData;

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4700(Lcom/android/mms/ui/BoxListFrame$MessageData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/mms/ui/BoxListAdapter;->getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4502(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListFrame;->notifyLocked()V

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ltz v9, :cond_f

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v9, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BoxListFrame$MessageData;

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mId:J
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4600(Lcom/android/mms/ui/BoxListFrame$MessageData;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BoxListFrame$MessageData;

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4700(Lcom/android/mms/ui/BoxListFrame$MessageData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/mms/ui/BoxListAdapter;->getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4502(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListFrame;->notifyLocked()V

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$5600(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v16

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/data/Contact;

    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x80000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v9, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BoxListFrame$MessageData;

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mId:J
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4600(Lcom/android/mms/ui/BoxListFrame$MessageData;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BoxListFrame$MessageData;

    # getter for: Lcom/android/mms/ui/BoxListFrame$MessageData;->mType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame$MessageData;->access$4700(Lcom/android/mms/ui/BoxListFrame$MessageData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/mms/ui/BoxListAdapter;->getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3, v2}, Lcom/android/mms/ui/BoxListFrame;->access$4502(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSDCARD(Lcom/android/mms/ui/MessageItem;)V

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_e
    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_f
    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4800(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/mms/ui/BoxListViewActivity;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BoxListViewActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListViewActivity;->notifyBoxDataChanged(Z)V

    :cond_15
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    goto :goto_7

    :pswitch_10
    if-eqz v1, :cond_17

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_11
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c012b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c02e6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$5700(Lcom/android/mms/ui/BoxListFrame;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v5, v6, v7, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c004d

    new-instance v4, Lcom/android/mms/ui/BoxListFrame$SendNowListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/mms/ui/BoxListFrame$SendNowListener;-><init>(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c004e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v0, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    :cond_18
    new-instance v15, Lcom/android/mms/ui/BoxListFrame$CancelMessageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    move-object/from16 v0, v20

    invoke-direct {v15, v2, v0, v3}, Lcom/android/mms/ui/BoxListFrame$CancelMessageListener;-><init>(Lcom/android/mms/ui/BoxListFrame;Landroid/net/Uri;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    # invokes: Lcom/android/mms/ui/BoxListFrame;->confirmCancelDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    invoke-static {v2, v15, v3}, Lcom/android/mms/ui/BoxListFrame;->access$5800(Lcom/android/mms/ui/BoxListFrame;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/BoxListFrame;->markAsRead(Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "number"

    move-object/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list"

    const-string v3, "blacklist"

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v2, v13}, Lcom/android/mms/ui/BoxListFrame;->access$5900(Lcom/android/mms/ui/BoxListFrame;Landroid/content/Intent;)V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :pswitch_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$4500(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.app.firewall.action.CONFIG_DIALOG"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "number"

    move-object/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list"

    const-string v3, "whitelist"

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->startActivity(Landroid/content/Intent;)V
    invoke-static {v2, v13}, Lcom/android/mms/ui/BoxListFrame;->access$5900(Lcom/android/mms/ui/BoxListFrame;Landroid/content/Intent;)V

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0317
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_11
        :pswitch_12
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onCreateActionMode()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->closeSearchView()V
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$6000(Lcom/android/mms/ui/BoxListFrame;)V

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Message does not default App so Do not enable multi select mode(delete, spam, save message..."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$6100(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/mms/ui/BoxListFrame;->access$2102(Lcom/android/mms/ui/BoxListFrame;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    const/high16 v3, 0x7f040000

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0b0009

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v1}, Lcom/android/mms/ui/BoxListFrame;->access$4402(Lcom/android/mms/ui/BoxListFrame;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/ui/BoxListFrame;->access$6202(Lcom/android/mms/ui/BoxListFrame;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$4400(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$4400(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Lcom/android/mms/ui/BoxListFrame$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/BoxListFrame$ModeCallback$1;-><init>(Lcom/android/mms/ui/BoxListFrame$ModeCallback;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    # invokes: Lcom/android/mms/ui/BoxListFrame;->disableSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v1, v3}, Lcom/android/mms/ui/BoxListFrame;->access$6300(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2500(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v1

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapterCount:I
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$6400(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v3

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2500(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListAdapter;->setMultiMode(Z)V

    move v1, v2

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 v2, 0x0

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroyActionMode()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$6100(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$6202(Lcom/android/mms/ui/BoxListFrame;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/BoxListAdapter;->setMultiMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/BoxListFrame;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$6500(Lcom/android/mms/ui/BoxListFrame;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$6600(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I
    invoke-static {v0, v2}, Lcom/android/mms/ui/BoxListFrame;->access$6602(Lcom/android/mms/ui/BoxListFrame;I)I

    :cond_0
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-nez v0, :cond_1

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onItemCheckedStateChanged cusor is null just return!!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/mms/ui/BoxListFrame$MessageData;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/BoxListFrame$MessageData;-><init>(Lcom/android/mms/ui/BoxListFrame;JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/BoxListAdapter;->checkedListRemove(JLjava/lang/String;)Z

    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mIsSelectAllmode:Z
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$7000(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mIsLastItemOfSelectAll:Z
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$7100(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mIsLastItemOfSelectAll:Z
    invoke-static {v2, v6}, Lcom/android/mms/ui/BoxListFrame;->access$7102(Lcom/android/mms/ui/BoxListFrame;Z)Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mIsSelectAllmode:Z
    invoke-static {v2, v6}, Lcom/android/mms/ui/BoxListFrame;->access$7002(Lcom/android/mms/ui/BoxListFrame;Z)Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->updateSelectionMenu()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/BoxListAdapter;->checkedListAdd(JLjava/lang/String;)Z

    goto :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0b031f

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->access$4402(Lcom/android/mms/ui/BoxListFrame;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->disableAllMenu(Landroid/view/Menu;)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/BoxListFrame;->access$6700(Lcom/android/mms/ui/BoxListFrame;Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$6600(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return v3

    :cond_1
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$6600(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->updateMultiActionMenu(Landroid/view/Menu;)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/BoxListFrame;->access$6800(Lcom/android/mms/ui/BoxListFrame;Landroid/view/Menu;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # invokes: Lcom/android/mms/ui/BoxListFrame;->enableSelectedMenu(Landroid/view/Menu;)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/BoxListFrame;->access$6900(Lcom/android/mms/ui/BoxListFrame;Landroid/view/Menu;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mIsSelectAllmode:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$7002(Lcom/android/mms/ui/BoxListFrame;Z)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # setter for: Lcom/android/mms/ui/BoxListFrame;->mIsLastItemOfSelectAll:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$7102(Lcom/android/mms/ui/BoxListFrame;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$6200(Lcom/android/mms/ui/BoxListFrame;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$6200(Lcom/android/mms/ui/BoxListFrame;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    # getter for: Lcom/android/mms/ui/BoxListFrame;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2100(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c046e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$4400(Lcom/android/mms/ui/BoxListFrame;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$ModeCallback;->this$0:Lcom/android/mms/ui/BoxListFrame;

    # getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$100(Lcom/android/mms/ui/BoxListFrame;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
