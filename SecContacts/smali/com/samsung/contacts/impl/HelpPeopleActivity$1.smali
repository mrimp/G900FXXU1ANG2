.class Lcom/samsung/contacts/impl/HelpPeopleActivity$1;
.super Ljava/lang/Object;
.source "HelpPeopleActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpPeopleActivity;->initSpeedDialTutorialPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

.field final synthetic val$viewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpPeopleActivity;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    iput-object p2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    const v2, 0x7f08035b

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    # getter for: Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I
    invoke-static {v1}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v1}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$100(Lcom/samsung/contacts/impl/HelpPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpPeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v1}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->access$200(Lcom/samsung/contacts/impl/HelpPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/contacts/impl/HelpPeopleActivity$1$1;-><init>(Lcom/samsung/contacts/impl/HelpPeopleActivity$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
