.class Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerPrintManagerActionModeCallBack"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Landroid/widget/Button;

.field private mSelectionModeBackButton:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;


# direct methods
.method private constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionModeBackButton:Landroid/widget/LinearLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;
    .param p2    # Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$1;

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    return-void
.end method


# virtual methods
.method public createPopup()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$900(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 12
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v7, 0x1

    :goto_1
    return v7

    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v4

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mEnrolledFingerCount:I
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)I

    move-result v7

    if-ne v4, v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageInPersona()Z
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f0919a5

    invoke-virtual {v7, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f0919a4

    invoke-virtual {v7, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkFingerprintUsageNQuality()Z
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$700(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const-string v7, "%s\n%s\n%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v10}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0901f0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v10}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090a6e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v10}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09176f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0917ec

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f0917bd

    invoke-virtual {v7, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->deRegisterAllFingerprint(Landroid/view/ActionMode;I)V
    invoke-static {v7, p1, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$800(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;I)V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0917b8

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f09178a

    invoke-virtual {v7, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$1;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$2;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v8, 0x7f09178b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :pswitch_2
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v7}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->renameFingerPrint()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/16 v6, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    new-instance v1, Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$902(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->select:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1002(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iput-boolean v5, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    const v0, 0x7f09011d

    invoke-interface {p2, v3, v6, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f090b05

    invoke-interface {p2, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201e6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_trash:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1102(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mItem_rename:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1202(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0b00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionModeBackButton:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionModeBackButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionModeBackButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$900(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$900(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$900(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$900(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040107

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->select:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1000(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->createPopup()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1302(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return v5
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1    # Landroid/view/ActionMode;

    const-string v0, "FingerPrintManagerListDelete"

    const-string v1, "onDestroyActionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1302(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    iget-boolean v0, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->actionModeControl:Z

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
    .param p2    # Landroid/view/Menu;

    const/4 v0, 0x0

    return v0
.end method

.method public stopMultiActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mMultiActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public updateSelectionMenu()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->mSelectionMenu:Landroid/widget/Button;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mlistView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v4, 0x7f090023

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$900(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f040107

    invoke-direct {v4, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v4, 0x7f090b09

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_0
.end method
