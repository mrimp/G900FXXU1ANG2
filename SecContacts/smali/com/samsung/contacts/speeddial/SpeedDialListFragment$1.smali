.class Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;
.super Ljava/lang/Object;
.source "SpeedDialListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget v1, v1, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    add-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2

    const/16 v0, 0x3e7

    :goto_1
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # setter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mIsRangeChange:Z
    invoke-static {v1, v6}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$102(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Z)Z

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpdlRange:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget v5, v5, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->startQuery()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget v1, v1, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$000(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget v2, v2, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    add-int/lit8 v2, v2, -0x64

    iput v2, v1, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$000(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)I

    move-result v2

    add-int/lit16 v2, v2, 0x384

    iput v2, v1, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget v1, v1, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$000(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)I

    move-result v2

    add-int/lit16 v2, v2, 0x384

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget v2, v2, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    add-int/lit8 v2, v2, 0x64

    iput v2, v1, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mStartNumber:I
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$000(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)I

    move-result v2

    iput v2, v1, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget v1, v1, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpinRange:I

    add-int/lit8 v1, v1, 0x64

    add-int/lit8 v0, v1, -0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0802d5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
