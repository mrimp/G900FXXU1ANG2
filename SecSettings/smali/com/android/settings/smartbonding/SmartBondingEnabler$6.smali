.class Lcom/android/settings/smartbonding/SmartBondingEnabler$6;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$6;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$6;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$200(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$6;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
