.class Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOptionMenu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method private constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;Lcom/android/mms/spam/SetupSpamKeywordList$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/spam/SetupSpamKeywordList;
    .param p2    # Lcom/android/mms/spam/SetupSpamKeywordList$1;

    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;)Landroid/view/Menu;
    .locals 1
    .param p0    # Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f0b031a -> :sswitch_0
        0x7f0b031f -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "Mms/SetupSpamKeywordList"

    const-string v3, "Message does not default App so Do not enable multi select mode(delete, spam, save message..."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v3, Lcom/android/mms/spam/SetupSpamKeywordList;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCreate:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2402(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x7f040000

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0b0009

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2502(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_1
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1502(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1502(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->notifyDataSetChanged()V

    move v1, v2

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1    # Landroid/view/ActionMode;

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2400(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2400(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2402(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2800(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2800(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2800(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2802(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1500(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$1502(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2900(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListMultiMode:I
    invoke-static {v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2902(Lcom/android/mms/spam/SetupSpamKeywordList;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCreate:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->invalidateOptionsMenu()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 3
    .param p1    # Landroid/view/ActionMode;
    .param p2    # I
    .param p3    # J
    .param p5    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateChecked:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3000(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2400(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsSelectAllmode:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3100(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamKeywordList;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLastItemOfSelectAll:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3200(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamKeywordList;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsSelectAllmode:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3100(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLastItemOfSelectAll:Z
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3200(Lcom/android/mms/spam/SetupSpamKeywordList;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLastItemOfSelectAll:Z
    invoke-static {v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3202(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mIsSelectAllmode:Z
    invoke-static {v0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$3102(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z

    invoke-virtual {p0}, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2400(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const v6, 0x7f0b031a

    const v5, 0x7f0b031f

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f0b0009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2502(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_0
    iput-object p2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2900(Lcom/android/mms/spam/SetupSpamKeywordList;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2400(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :pswitch_1
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/SetupSpamKeywordList"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mCheckedMsgPositions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2400(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c046e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateTitleTextSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    # getter for: Lcom/android/mms/spam/SetupSpamKeywordList;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->access$2500(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-virtual {v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
