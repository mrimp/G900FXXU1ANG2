.class Lcom/android/mms/ui/BubbleTypePicker$6$1;
.super Ljava/lang/Object;
.source "BubbleTypePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BubbleTypePicker$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/BubbleTypePicker$6;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BubbleTypePicker$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BubbleTypePicker$6$1;->this$1:Lcom/android/mms/ui/BubbleTypePicker$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/BubbleViewCache;->clearCache()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->fillCache(Z)V

    return-void
.end method
