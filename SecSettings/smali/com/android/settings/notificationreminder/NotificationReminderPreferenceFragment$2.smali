.class Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$2;
.super Landroid/database/ContentObserver;
.source "NotificationReminderPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$2;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$2;->this$0:Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;

    # invokes: Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->updateNotificationReminderSaving()V
    invoke-static {v0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->access$100(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)V

    return-void
.end method
