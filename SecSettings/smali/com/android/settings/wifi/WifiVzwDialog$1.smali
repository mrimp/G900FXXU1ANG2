.class Lcom/android/settings/wifi/WifiVzwDialog$1;
.super Ljava/lang/Object;
.source "WifiVzwDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiVzwDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiVzwDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiVzwDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v5, 0x0

    const/16 v4, 0x20

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiVzwDialog;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    # getter for: Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    const v2, 0x7f0903eb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiVzwDialog;->access$002(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    # getter for: Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiVzwDialog;->mSsidView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    # getter for: Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    # getter for: Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiVzwDialog$1;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    # getter for: Lcom/android/settings/wifi/WifiVzwDialog;->sToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiVzwDialog;->access$000(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
