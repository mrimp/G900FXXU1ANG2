.class Lcom/android/settings/AirButtonHelp$4$1;
.super Ljava/lang/Object;
.source "AirButtonHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirButtonHelp$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/AirButtonHelp$4;


# direct methods
.method constructor <init>(Lcom/android/settings/AirButtonHelp$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AirButtonHelp$4$1;->this$1:Lcom/android/settings/AirButtonHelp$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirButtonHelp$4$1;->this$1:Lcom/android/settings/AirButtonHelp$4;

    iget-object v0, v0, Lcom/android/settings/AirButtonHelp$4;->this$0:Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v0}, Lcom/android/settings/AirButtonHelp;->onClickEnableSettingsButtonCancel()V

    return-void
.end method
