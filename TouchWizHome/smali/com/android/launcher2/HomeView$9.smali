.class Lcom/android/launcher2/HomeView$9;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$launcherInfo:Lcom/android/launcher2/HomeWidgetItem;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$9;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$9;->val$launcherInfo:Lcom/android/launcher2/HomeWidgetItem;

    iput-object p3, p0, Lcom/android/launcher2/HomeView$9;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    iget-object v0, p0, Lcom/android/launcher2/HomeView$9;->val$launcherInfo:Lcom/android/launcher2/HomeWidgetItem;

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView$9;->val$launcherInfo:Lcom/android/launcher2/HomeWidgetItem;

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v1, Lcom/android/launcher2/HomeView$9$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$9$1;-><init>(Lcom/android/launcher2/HomeView$9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
