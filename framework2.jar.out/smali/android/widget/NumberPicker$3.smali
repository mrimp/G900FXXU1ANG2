.class Landroid/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/16 v8, 0x42

    const/16 v7, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    and-int/lit8 v5, v2, 0x1

    if-eq v5, v3, :cond_0

    and-int/lit8 v5, v2, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    :cond_0
    iget-object v5, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    iget-object v5, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    iget-object v5, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v5}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    if-eq p2, v8, :cond_3

    if-ne p2, v7, :cond_5

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x1020376

    if-ne v5, v6, :cond_4

    iget-object v4, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v4, v3}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    :goto_0
    return v3

    :cond_4
    iget-object v5, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v5, v4}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_7

    if-eq p2, v8, :cond_6

    if-ne p2, v7, :cond_7

    :cond_6
    iget-object v3, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/view/View;->playSoundEffect(I)V

    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    move v3, v4

    goto :goto_0
.end method
