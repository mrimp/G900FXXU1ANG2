.class Lcom/android/launcher2/AddToHomescreenDialogFragment$5;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AddToHomescreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

.field final synthetic val$launcher:Lcom/android/launcher2/Launcher;

.field final synthetic val$ws:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->val$launcher:Lcom/android/launcher2/Launcher;

    iput-object p3, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->val$ws:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/HomeScreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->shouldToastRepeat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->val$launcher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f0e001f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x64

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->val$ws:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v10

    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$5;->val$ws:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
