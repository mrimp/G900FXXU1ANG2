.class Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$5;
.super Ljava/lang/Object;
.source "BlockSettingsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->BlockNumberSettingsDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment$5;->this$0:Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Z

    sget-object v0, Lcom/samsung/contacts/interactions/BlockSettingsDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean p3, v0, p2

    return-void
.end method
