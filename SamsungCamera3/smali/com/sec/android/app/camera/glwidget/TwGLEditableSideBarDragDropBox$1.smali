.class Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$1;
.super Ljava/lang/Object;
.source "TwGLEditableSideBarDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    # getter for: Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    # getter for: Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-interface {v0, v1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
