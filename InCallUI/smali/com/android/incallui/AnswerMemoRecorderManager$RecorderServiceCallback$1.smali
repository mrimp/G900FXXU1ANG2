.class Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback$1;
.super Ljava/lang/Object;
.source "AnswerMemoRecorderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback;->messageCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback$1;->this$1:Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback$1;->this$1:Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback;

    iget-object v0, v0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    # getter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v0}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$600(Lcom/android/incallui/AnswerMemoRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->onAnswerMemoRecorderStateChanged()V

    return-void
.end method
