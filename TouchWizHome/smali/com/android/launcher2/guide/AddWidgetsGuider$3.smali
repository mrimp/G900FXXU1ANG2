.class Lcom/android/launcher2/guide/AddWidgetsGuider$3;
.super Ljava/lang/Object;
.source "AddWidgetsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/guide/AddWidgetsGuider;

.field final synthetic val$textBox:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/guide/AddWidgetsGuider;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/guide/AddWidgetsGuider$3;->this$0:Lcom/android/launcher2/guide/AddWidgetsGuider;

    iput-object p2, p0, Lcom/android/launcher2/guide/AddWidgetsGuider$3;->val$textBox:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/guide/AddWidgetsGuider$3;->val$textBox:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method
