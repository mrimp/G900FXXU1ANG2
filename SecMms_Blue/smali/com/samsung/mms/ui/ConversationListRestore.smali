.class public Lcom/samsung/mms/ui/ConversationListRestore;
.super Landroid/app/ListActivity;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;,
        Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;,
        Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;,
        Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
    }
.end annotation


# static fields
.field public static final MENU_RESTORE_CANCEL:I = 0x2

.field public static final MENU_RESTORE_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListRestore"


# instance fields
.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAddressesSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllItem:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

.field private mConvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;",
            ">;"
        }
    .end annotation
.end field

.field public mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEmptyBackgroundImage:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewLandscape:Landroid/view/View;

.field private mEmptyViewPortrait:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLandscape:Z

.field private mIsSelectAllmode:Z

.field private mListView:Landroid/widget/ListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field mModeCallback:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

.field private mMsgsRestoreActionMode:Landroid/view/ActionMode;

.field private mMultiMode:Z

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

.field private mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    iput-boolean v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsSelectAllmode:Z

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mModeCallback:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    iput-boolean v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMultiMode:Z

    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/ConversationListRestore$2;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/mms/ui/ConversationListRestore;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/mms/ui/ConversationListRestore;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/mms/ui/ConversationListRestore;)[J
    .locals 1

    invoke-direct {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIds()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/util/SaveRestoreOperation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/mms/ui/ConversationListRestore;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMultiMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/mms/ui/ConversationListRestore;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMultiMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createConversationList(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v1, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    if-nez v6, :cond_2

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getRead()I

    move-result v4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getTotalCount()I

    move-result v5

    iget-object v9, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v10, "file_date"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v8

    :goto_2
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v0}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getRead()I

    move-result v4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getTotalCount()I

    move-result v5

    iget-object v9, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v10, "file_date"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_6
    return-void
.end method

.method private getIds()[J
    .locals 5

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    const-string v3, "Mms/ConversationListRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private initListView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setAllChecked(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v2}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v2}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateCheckedMsgCount()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public ShowEmptyView()V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsLandscape:Z

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getEmptyScreenVisible()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsLandscape:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v2, 0x7f02028c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v2, 0x7f02028d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public getEmptyScreenVisible()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public newArrayFromSelection(Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsSelectAllmode:Z

    if-nez v3, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    :cond_5
    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/ConversationListRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->ShowEmptyView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040037

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->setContentView(I)V

    iput-object p0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v1, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Lcom/samsung/mms/ui/ConversationListRestore$1;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mModeCallback:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mModeCallback:Lcom/samsung/mms/ui/ConversationListRestore$ModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const v1, 0x7f0b0104

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0b0112

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewPortrait:Landroid/view/View;

    const v1, 0x7f0b0115

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewLandscape:Landroid/view/View;

    const v1, 0x7f0b0111

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f0b003f

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0041

    invoke-virtual {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "file_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->readXmlFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->ShowEmptyView()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/mms/ui/ConversationListRestore$1;

    invoke-direct {v2, p0}, Lcom/samsung/mms/ui/ConversationListRestore$1;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->createConversationList(Ljava/util/ArrayList;)V

    new-instance v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    const v2, 0x7f040034

    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-direct {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->initListView()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v0}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;->clear()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mAddressesSelected:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->OnDestroy()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    :cond_4
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->cancel(Z)Z

    :cond_5
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMsgsRestoreActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_6
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/mms/ui/RestorePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "file_path"

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "file_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "address"

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Mms/ConversationListRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address of conv selected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/mms/ui/ConversationListRestore;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v2, "Mms/ConversationListRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Mms/ConversationListRestore"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x2

    const v1, 0x7f0c0182

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0c0285

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f0202a7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0202a8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return v3
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->finish()V

    return-void
.end method

.method public startRestoreOperation()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    invoke-direct {v0, p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Lcom/samsung/mms/ui/ConversationListRestore$1;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
