.class Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/AutoSendingTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendButtonOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;Lcom/samsung/mms/ui/AutoSendingTestActivity$1;)V
    .locals 0
    .param p1    # Lcom/samsung/mms/ui/AutoSendingTestActivity;
    .param p2    # Lcom/samsung/mms/ui/AutoSendingTestActivity$1;

    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    # getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->bSendingFlag:Z
    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$700(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    # getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$600(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick$1;

    invoke-direct {v2, p0}, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick$1;-><init>(Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    # getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$300(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "Guava Talk"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Sending Message...."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$902(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    # getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$900()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/samsung/mms/ui/AutoSendingTestActivity$SendButtonOnClick;->this$0:Lcom/samsung/mms/ui/AutoSendingTestActivity;

    # getter for: Lcom/samsung/mms/ui/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/samsung/mms/ui/AutoSendingTestActivity;->access$600(Lcom/samsung/mms/ui/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
