.class Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;
.super Ljava/lang/Object;
.source "Xt9AutoSubstitutionsDel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    # setter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z
    invoke-static {v6, v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$302(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;Z)Z

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$500(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$500(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0800bb

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    invoke-virtual {v3}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->getShortcut()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    :goto_4
    # invokes: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->setDoneMenuEnabled(Z)V
    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$200(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;Z)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_4
.end method
