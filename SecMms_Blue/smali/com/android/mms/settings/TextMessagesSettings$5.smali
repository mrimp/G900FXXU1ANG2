.class Lcom/android/mms/settings/TextMessagesSettings$5;
.super Ljava/lang/Object;
.source "TextMessagesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/TextMessagesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/TextMessagesSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/TextMessagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/TextMessagesSettings$5;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const v10, 0x7f0c00f4

    const/4 v9, 0x1

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    const-string v0, "Mms/TextMessagesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPreferenceChange] SmscAddr :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "+"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    :goto_0
    const-string v0, "-"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings$5;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    const v1, 0x7f0c00f4

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings$5;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    invoke-static {v0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "smsc"

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_key_manage_smsc_address_sim2"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Mms/TextMessagesSettings"

    const-string v1, "update SIM2 SMSC"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI_SIM2:Landroid/net/Uri;

    :goto_2
    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings$5;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    iget-object v1, p0, Lcom/android/mms/settings/TextMessagesSettings$5;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_4

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings$5;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    # getter for: Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/mms/settings/TextMessagesSettings;->access$200(Lcom/android/mms/settings/TextMessagesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings$5;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    # getter for: Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/mms/settings/TextMessagesSettings;->access$200(Lcom/android/mms/settings/TextMessagesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings$5;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    # getter for: Lcom/android/mms/settings/TextMessagesSettings;->mSmscAddrPref:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/android/mms/settings/TextMessagesSettings;->access$200(Lcom/android/mms/settings/TextMessagesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "Mms/TextMessagesSettings"

    const-string v1, "update SIM1 SMSC"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/mms/settings/TextMessagesSettings$5;->this$0:Lcom/android/mms/settings/TextMessagesSettings;

    const v1, 0x7f0c00f5

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
