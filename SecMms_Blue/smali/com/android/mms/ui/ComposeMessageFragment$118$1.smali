.class Lcom/android/mms/ui/ComposeMessageFragment$118$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$118;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$118;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$118;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$118$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$118;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$118$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$118;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$118;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshLocation()V

    return-void
.end method
