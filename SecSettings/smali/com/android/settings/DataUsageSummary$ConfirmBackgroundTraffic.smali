.class public Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmBackgroundTraffic"
.end annotation


# static fields
.field static final dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static close(Lcom/android/settings/DataUsageSummary;)V
    .locals 2

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;->dialog:Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "backgroundtraffic"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09188b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09188d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmBackgroundTraffic;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
