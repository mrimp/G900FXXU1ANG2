.class final Lcom/samsung/mms/ui/LinkActionChooserFragment$4;
.super Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;
.source "LinkActionChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/ui/LinkActionChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;-><init>(I)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/android/mms/ui/MessageUtils;->makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
