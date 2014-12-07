.class public Lcom/android/launcher2/guide/ChangeWallpaperGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "ChangeWallpaperGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangeWallpaperGuider"

.field public static isChangeWallpaperDialog1Visible:Z

.field public static isChangeWallpaperDialog2Visible:Z

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    sput-boolean v0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    const-string v0, "ChangeWallpaperGuider"

    const-string v1, "ChangeWallpaperGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 5

    sget-boolean v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sget-object v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissShowHelpDialog_step1()V

    goto :goto_0
.end method

.method public dismissShowHelpDialog_step1()V
    .locals 2

    sget-boolean v1, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    const/4 v0, 0x0

    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    :cond_0
    return-void
.end method

.method public bridge synthetic finish()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissHelpDialog()V

    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->showHelpDialog()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 9

    const/4 v8, 0x1

    sget-boolean v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput v8, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    const-string v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f030010

    sget-object v7, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    sput v8, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f080026

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f080045

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->mGoalAnimationView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    iget-object v6, p0, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->mGoalAnimationView:Landroid/view/View;

    invoke-direct {v1, v0, v6}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    sput-boolean v8, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog1Visible:Z

    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->menuLayout:Landroid/view/View;

    const v7, 0x7f080025

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider$1;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher2/guide/ChangeWallpaperGuider$1;-><init>(Lcom/android/launcher2/guide/ChangeWallpaperGuider;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v6, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e00c7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    const v6, 0x3f19999a

    const v7, 0x3dcccccd

    invoke-virtual {v1, v6, v7, v4}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    goto/16 :goto_0
.end method

.method public showHelpDialog_step1()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput v3, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    sput-boolean v2, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->isChangeWallpaperDialog2Visible:Z

    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    const/4 v0, 0x0

    new-instance v0, Lcom/android/launcher2/guide/ViewAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ViewAppsGuider;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_0
.end method
