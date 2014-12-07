.class public Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "EditAutoRejectVideoCallScreen.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field final MATCH_ENDS_WITH:I

.field final MATCH_EQUAL:I

.field final MATCH_INCLUDE:I

.field final MATCH_STARTS_WITH:I

.field final defaultIndex:I

.field editBox:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private isDialogCreated:Z

.field private mContentURI:Landroid/net/Uri;

.field private mMatchCriteria:I

.field private mMatchCriteriaType:Landroid/preference/ListPreference;

.field mToast:Landroid/widget/Toast;

.field private match_MODE:I

.field private previous_NUM:Ljava/lang/String;

.field private previous_match_MODE:I

.field searchButton:Landroid/widget/Button;

.field private select_NUM:Ljava/lang/String;

.field private update_ID:I

.field private update_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "reject_number"

    aput-object v1, v0, v4

    const-string v1, "reject_checked"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->FROM:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->NUM_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->MATCH_EQUAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->MATCH_STARTS_WITH:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->MATCH_ENDS_WITH:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->MATCH_INCLUDE:I

    iput v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->defaultIndex:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isDialogCreated:Z

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mContentURI:Landroid/net/Uri;

    new-instance v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$7;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$7;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)Z
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    iget-boolean v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isDialogCreated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isDialogCreated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;

    invoke-direct {p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->alertdialogSearch()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method private addAutoRejectNumber(Ljava/lang/String;I)J
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v7, 0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "reject_number"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "reject_checked"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "reject_match"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :cond_0
    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private alertdialogSearch()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0902c1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f08000c

    new-instance v3, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$8;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$9;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 10
    .param p1    # Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v6, "EditAutoRejectSVideoCallcreen"

    const-string v7, "checkAlreadyInUse : cursor is null"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move-object v4, p1

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->previous_NUM:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->previous_match_MODE:I

    if-ne v6, v3, :cond_4

    :cond_2
    :goto_1
    if-eq v2, v9, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :goto_2
    move v6, v2

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "EditAutoRejectSVideoCallcreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAlreadyInUse : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "EditAutoRejectSVideoCallcreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAlreadyInUse : MATCH_STARTS_WITH, rejectNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "EditAutoRejectSVideoCallcreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAlreadyInUse : MATCH_ENDS_WITH, rejectNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "EditAutoRejectSVideoCallcreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAlreadyInUse : MATCH_INCLUDE, rejectNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v6, "EditAutoRejectSVideoCallcreen"

    const-string v7, "NumberFormatException"

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    throw v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isAvaliableNumber(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Integer;
    .param p3    # Ljava/lang/Integer;
    .param p4    # I

    const/4 v5, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "reject_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reject_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "reject_match"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mContentURI:Landroid/net/Uri;

    int-to-long v3, p4

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateMatchCriteria(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "EditAutoRejectSVideoCallcreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentMatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EditAutoRejectSVideoCallcreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMatchCriteriaType.getEntry() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clickCancelBtn(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method

.method public clickSaveBtn(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "EditAutoRejectSVideoCallcreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentMatchType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090379

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->displayToast(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f09037a

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->displayToast(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f09037b

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->displayToast(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->update_MODE:Z

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->update_ID:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->addAutoRejectNumber(Ljava/lang/String;I)J

    goto :goto_1
.end method

.method isUnknownNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "-2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/16 v8, 0x64

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v7, ""

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$10;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    const-string v0, "EditAutoRejectSVideoCallcreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "unknwon number from log"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_3

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_7

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_7
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "hardkeyboardhidden_no"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f06001e

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v5, 0x7f04001a

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(I)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const v5, 0x7f0a0082

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$1;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0083

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f090149

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    new-instance v5, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$2;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$2;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const v9, 0x7f0902c9

    const v8, 0x7f0902c5

    const/4 v7, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    :goto_0
    const-string v5, "order_neg_pos_buttons"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    :goto_1
    const/4 v5, 0x4

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_2

    move v5, v4

    :goto_2
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v5, 0x3

    invoke-interface {p1, v3, v5, v0, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0201a6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v5, 0x2

    invoke-interface {p1, v3, v5, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v6

    if-nez v1, :cond_3

    move v5, v4

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3, v4, v2, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0201a9

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v3

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v8, 0x0

    const v4, 0x7f040011

    invoke-virtual {p1, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "match_criteria_mode"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v4, 0x7f0a0035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    if-nez v4, :cond_0

    const-string v4, "EditAutoRejectSVideoCallcreen"

    const-string v5, "onCreateView() - editBox is null !!"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    new-instance v5, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$3;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$4;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$4;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v4, 0x7f0a0036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->searchButton:Landroid/widget/Button;

    const-string v4, "rearrange_search_contact_image"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->searchButton:Landroid/widget/Button;

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->searchButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$5;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$5;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "UPDATE_MODE"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->update_MODE:Z

    iget-boolean v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->update_MODE:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, "UPDATE_ID"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->update_ID:I

    const-string v4, "MATCH_MODE"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->match_MODE:I

    const-string v4, "SELECT_NUMBER"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->select_NUM:Ljava/lang/String;

    iget v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->match_MODE:I

    iput v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteria:I

    iget v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->match_MODE:I

    iput v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->previous_match_MODE:I

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->select_NUM:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->previous_NUM:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->select_NUM:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->select_NUM:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->select_NUM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    const-string v4, "isOutgoing"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_4

    sget-object v4, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mContentURI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_3
    iput v8, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteria:I

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_VIDEOCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mContentURI:Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->clickSaveBtn(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->clickCancelBtn(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const-string v0, "EditAutoRejectSVideoCallcreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteriaType:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    const-string v0, "EditAutoRejectSVideoCallcreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteria:I

    iget v0, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteria:I

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->updateMatchCriteria(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .param p1    # Landroid/view/Menu;

    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_0

    move v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_3

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_2

    move v4, v3

    :cond_2
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->mMatchCriteria:I

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->updateMatchCriteria(I)V

    iget-boolean v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->isDialogCreated:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$6;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen$6;-><init>(Lcom/android/phone/callsettings/EditAutoRejectVideoCallScreen;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const-string v1, "tablet_action_bar_no_title_when_has_two_menu"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0902d1

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v1, 0x7f090768

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    return-void
.end method
