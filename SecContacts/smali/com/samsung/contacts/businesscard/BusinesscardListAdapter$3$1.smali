.class Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3$1;
.super Ljava/lang/Object;
.source "BusinesscardListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3$1;->this$1:Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3;

    iput-object p2, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListAdapter$3$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
