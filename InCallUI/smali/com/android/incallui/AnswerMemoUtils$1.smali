.class final Lcom/android/incallui/AnswerMemoUtils$1;
.super Ljava/lang/Object;
.source "AnswerMemoUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerMemoUtils;->playGuidance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer;

    const-string v0, "- Playing completed "

    invoke-static {v0}, Lcom/android/incallui/AnswerMemoUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    # setter for: Lcom/android/incallui/AnswerMemoUtils;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/incallui/AnswerMemoUtils;->access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->guidanceBeepSoundPlay()V

    return-void
.end method
