.class Lcom/android/launcher2/guide/AddAppsGuider$1;
.super Ljava/lang/Object;
.source "AddAppsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/guide/AddAppsGuider;


# direct methods
.method constructor <init>(Lcom/android/launcher2/guide/AddAppsGuider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/guide/AddAppsGuider$1;->this$0:Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/guide/AddAppsGuider$1;->this$0:Lcom/android/launcher2/guide/AddAppsGuider;

    iget-object v0, v0, Lcom/android/launcher2/guide/AddAppsGuider;->txtvw:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method