.class Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$1;
.super Ljava/lang/Object;
.source "MyEmergencyInfoEditorActivity.java"

# interfaces
.implements Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateSaveButton(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->access$000(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->access$000(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
