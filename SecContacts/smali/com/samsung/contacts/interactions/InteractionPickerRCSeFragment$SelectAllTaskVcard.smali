.class Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;
.super Landroid/os/AsyncTask;
.source "InteractionPickerRCSeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskVcard"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;-><init>(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->setSelectAllCheckedVcard(Z)Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->access$600(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->onSelectedInfoChanged()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;-><init>(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
