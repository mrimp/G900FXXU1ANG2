.class Lcom/android/mms/ui/SettingsReservationActivity$1;
.super Ljava/lang/Object;
.source "SettingsReservationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SettingsReservationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SettingsReservationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SettingsReservationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SettingsReservationActivity$1;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$1;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    # invokes: Lcom/android/mms/ui/SettingsReservationActivity;->setCancelResultDate()V
    invoke-static {v0}, Lcom/android/mms/ui/SettingsReservationActivity;->access$300(Lcom/android/mms/ui/SettingsReservationActivity;)V

    iget-object v0, p0, Lcom/android/mms/ui/SettingsReservationActivity$1;->this$0:Lcom/android/mms/ui/SettingsReservationActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
