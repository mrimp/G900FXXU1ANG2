.class Lcom/android/mms/ui/ConversationComposer$3;
.super Landroid/content/BroadcastReceiver;
.source "ConversationComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$3;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->clearCache()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->killMessage()V

    goto :goto_0
.end method
