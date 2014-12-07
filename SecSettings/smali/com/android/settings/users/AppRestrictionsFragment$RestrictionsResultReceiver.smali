.class Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestrictionsResultReceiver"
.end annotation


# instance fields
.field invokeIfCustom:Z

.field packageName:Ljava/lang/String;

.field preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p4    # Z

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iput-boolean p4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->invokeIfCustom:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.restrictions_list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v4, "android.intent.extra.restrictions_intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->invokeIfCustom:Z

    # invokes: Lcom/android/settings/users/AppRestrictionsFragment;->openRestrictionDetail(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    invoke-static {v4, v5, v6, v1, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1600(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-boolean v4, v4, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v4, v4, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v7, v7, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    iget-boolean v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->invokeIfCustom:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->preference:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    # invokes: Lcom/android/settings/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    invoke-static {v4, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1700(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v4, v2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
