.class Lcom/android/launcher2/MenuWidgetsFragment$1;
.super Ljava/lang/Object;
.source "MenuWidgetsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgetsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgetsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->access$200(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$300(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$300(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(ILjava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->restorePopupMenu()Z

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment$1;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0
.end method
