.class Lcom/android/settings/smartbonding/SmartBondingEnabler$1;
.super Landroid/database/ContentObserver;
.source "SmartBondingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartbonding/SmartBondingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->access$100(Lcom/android/settings/smartbonding/SmartBondingEnabler;Z)V

    :cond_0
    return-void
.end method
