.class Lcom/android/mms/ui/BubbleTypePicker$1;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BubbleTypePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BubbleTypePicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BubbleTypePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/mms/ui/BubbleTypePicker$1;->this$0:Lcom/android/mms/ui/BubbleTypePicker;

    # getter for: Lcom/android/mms/ui/BubbleTypePicker;->mIsSentAnimating:Z
    invoke-static {v0}, Lcom/android/mms/ui/BubbleTypePicker;->access$000(Lcom/android/mms/ui/BubbleTypePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
