.class Lcom/android/settings/AirButtonHelp$6$2;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirButtonHelp$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AirButtonHelp$6;


# direct methods
.method constructor <init>(Lcom/android/settings/AirButtonHelp$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$6$2;->this$1:Lcom/android/settings/AirButtonHelp$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/AirButtonHelp$6$2;->this$1:Lcom/android/settings/AirButtonHelp$6;

    iget-object v0, v0, Lcom/android/settings/AirButtonHelp$6;->this$0:Lcom/android/settings/AirButtonHelp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/AirButtonHelp;->onClickEnableSettingsButtonOK(I)V

    return-void
.end method
