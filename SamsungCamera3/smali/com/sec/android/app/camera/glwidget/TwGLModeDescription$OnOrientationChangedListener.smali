.class Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;
.super Ljava/lang/Object;
.source "TwGLModeDescription.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOrientationChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;I)V

    :cond_0
    return-void
.end method
