.class Lcom/android/incallui/CallCardVoiceFragment$2;
.super Ljava/lang/Object;
.source "CallCardVoiceFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardVoiceFragment;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardVoiceFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardVoiceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1    # Landroid/media/MediaPlayer;

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # setter for: Lcom/android/incallui/CallCardVoiceFragment;->mvideoMute:Z
    invoke-static {v3, v6}, Lcom/android/incallui/CallCardVoiceFragment;->access$002(Lcom/android/incallui/CallCardVoiceFragment;Z)Z

    iget-object v3, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # setter for: Lcom/android/incallui/CallCardVoiceFragment;->mSilentRing:Z
    invoke-static {v3, v5}, Lcom/android/incallui/CallCardVoiceFragment;->access$102(Lcom/android/incallui/CallCardVoiceFragment;Z)Z

    invoke-virtual {p1, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    const-string v4, "photoring- start photoring video"

    invoke-virtual {v3, v4}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # getter for: Lcom/android/incallui/CallCardVoiceFragment;->mPhotoringVideo:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/android/incallui/CallCardVoiceFragment;->access$200(Lcom/android/incallui/CallCardVoiceFragment;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # getter for: Lcom/android/incallui/CallCardVoiceFragment;->soundImg:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/incallui/CallCardVoiceFragment;->access$300(Lcom/android/incallui/CallCardVoiceFragment;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # getter for: Lcom/android/incallui/CallCardVoiceFragment;->soundImg:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/incallui/CallCardVoiceFragment;->access$300(Lcom/android/incallui/CallCardVoiceFragment;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02014c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallCardVoiceFragment$2;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # setter for: Lcom/android/incallui/CallCardVoiceFragment;->mplayer:Landroid/media/MediaPlayer;
    invoke-static {v3, p1}, Lcom/android/incallui/CallCardVoiceFragment;->access$402(Lcom/android/incallui/CallCardVoiceFragment;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    return-void
.end method
