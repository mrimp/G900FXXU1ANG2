.class Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$3;
.super Ljava/lang/Object;
.source "SamsungAccountValidationCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->showSetContactSyncPopup(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$3;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "SamsungAccountValidationCheckActivity"

    const-string v1, "User cancel to sync contact"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity$3;->this$0:Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;

    const/4 v1, 0x0

    # invokes: Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->finishActivityWithResult(I)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;->access$000(Lcom/samsung/contacts/editor/SamsungAccountValidationCheckActivity;I)V

    return-void
.end method
