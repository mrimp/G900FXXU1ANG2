.class Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;
.super Ljava/lang/Object;
.source "RcsDetailViewPinnerForCallLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->extractUIComponets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    iget-object v1, v1, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    iget-object v1, v1, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;->this$0:Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    iget-object v2, v2, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
