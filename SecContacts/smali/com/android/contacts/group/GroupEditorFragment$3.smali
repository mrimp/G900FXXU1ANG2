.class Lcom/android/contacts/group/GroupEditorFragment$3;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$300(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "custom_ringtone"

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/group/GroupEditorFragment;->access$400(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->startToneAndVibrationSelection(Lcom/android/contacts/ContactsUtils$UpdateDataInterface;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
