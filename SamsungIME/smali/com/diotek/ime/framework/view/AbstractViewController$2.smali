.class Lcom/diotek/ime/framework/view/AbstractViewController$2;
.super Ljava/lang/Object;
.source "AbstractViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractViewController;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractViewController$2;->this$0:Lcom/diotek/ime/framework/view/AbstractViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController$2;->this$0:Lcom/diotek/ime/framework/view/AbstractViewController;

    const/4 v2, 0x1

    # setter for: Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->access$002(Lcom/diotek/ime/framework/view/AbstractViewController;Z)Z

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController$2;->this$0:Lcom/diotek/ime/framework/view/AbstractViewController;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "IS_ONE_HAND_RIGHT_SET"

    invoke-interface {v1, v2, v0}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController$2;->this$0:Lcom/diotek/ime/framework/view/AbstractViewController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShown()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController$2;->this$0:Lcom/diotek/ime/framework/view/AbstractViewController;

    const/4 v2, 0x0

    # setter for: Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z
    invoke-static {v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->access$002(Lcom/diotek/ime/framework/view/AbstractViewController;Z)Z

    return-void
.end method
