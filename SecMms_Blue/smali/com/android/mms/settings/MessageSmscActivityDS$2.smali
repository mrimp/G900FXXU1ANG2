.class Lcom/android/mms/settings/MessageSmscActivityDS$2;
.super Ljava/lang/Object;
.source "MessageSmscActivityDS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/MessageSmscActivityDS;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/MessageSmscActivityDS;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/MessageSmscActivityDS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/MessageSmscActivityDS$2;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$2;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # invokes: Lcom/android/mms/settings/MessageSmscActivityDS;->UpdateSmsc()V
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$400(Lcom/android/mms/settings/MessageSmscActivityDS;)V

    return-void
.end method
