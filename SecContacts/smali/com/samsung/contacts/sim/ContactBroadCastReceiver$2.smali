.class Lcom/samsung/contacts/sim/ContactBroadCastReceiver$2;
.super Ljava/lang/Object;
.source "ContactBroadCastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/sim/ContactBroadCastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/sim/ContactBroadCastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver$2;->this$0:Lcom/samsung/contacts/sim/ContactBroadCastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/sim/ContactBroadCastReceiver$2;->this$0:Lcom/samsung/contacts/sim/ContactBroadCastReceiver;

    # getter for: Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/contacts/sim/ContactBroadCastReceiver;->access$000(Lcom/samsung/contacts/sim/ContactBroadCastReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    return-void
.end method
