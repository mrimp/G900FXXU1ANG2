.class Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;
.super Ljava/lang/Object;
.source "UninstallMultipleScreen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

.field final synthetic val$listposition:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iput p2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->val$listposition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->val$listposition:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v1, v1, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;
    invoke-static {v1}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$700(Lcom/android/settings/applications/UninstallMultipleScreen;)Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mSelectAllButton:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$200(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v1, v1, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;
    invoke-static {v1}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$700(Lcom/android/settings/applications/UninstallMultipleScreen;)Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mSelectAllButton:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$200(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mDone:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$300(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter$1;->this$1:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v0, v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mDone:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$300(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
