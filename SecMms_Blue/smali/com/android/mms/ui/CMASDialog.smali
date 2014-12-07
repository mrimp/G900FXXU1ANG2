.class public Lcom/android/mms/ui/CMASDialog;
.super Landroid/app/Activity;
.source "CMASDialog.java"


# static fields
.field public static final CMAS_USER_PREF:Ljava/lang/String; = "cmas_user_preferences"

.field private static final TAG:Ljava/lang/String; = "Mms/CMASDialog"

.field private static inCall:Z

.field private static instance:Lcom/android/mms/ui/CMASDialog;

.field public static sIsCMASDialogActivityAlive:Z


# instance fields
.field private listener:Landroid/telephony/PhoneStateListener;

.field private mBody:Ljava/lang/String;

.field public mDialogHandled:Z

.field private mStatusbarManager:Landroid/app/StatusBarManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private messageUri:Landroid/net/Uri;

.field private msgIdentifier:Ljava/lang/String;

.field private sDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/CMASDialog;->sIsCMASDialogActivityAlive:Z

    sput-boolean v0, Lcom/android/mms/ui/CMASDialog;->inCall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CMASDialog;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CMASDialog;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog;->messageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CMASDialog;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/CMASDialog;->markAsRead(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/mms/ui/CMASDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CMASDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/CMASDialog;->checkLockScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/CMASDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/CMASDialog;->launchMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CMASDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/CMASDialog;->showCMASUserPropmtDialog()V

    return-void
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/CMASDialog;->inCall:Z

    return p0
.end method

.method private checkCallState()V
    .locals 1

    new-instance v0, Lcom/android/mms/ui/CMASDialog$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASDialog$6;-><init>(Lcom/android/mms/ui/CMASDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASDialog;->listener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private checkLockScreenOn()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Mms/CMASDialog"

    const-string v2, "checkLockScreenOn() - isKeyguardLocked TRUE. Lock Screen ON"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static getInstance()Lcom/android/mms/ui/CMASDialog;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/CMASDialog;->instance:Lcom/android/mms/ui/CMASDialog;

    return-object v0
.end method

.method public static isCMASDialogActivityAlive()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/CMASDialog;->sIsCMASDialogActivityAlive:Z

    return v0
.end method

.method private isLockscreenExist(Landroid/content/Context;)Z
    .locals 2

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchMessage()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private markAsRead(Landroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x3

    invoke-static {p0, v1, p1}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;ILandroid/net/Uri;)V

    const-string v1, "Mms/CMASDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update read for thread uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private showCMASUserPropmtDialog()V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/CMASUserPromptDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x18000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Mms/CMASDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in creating CMAS User Propmt dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v1, "Mms/CMASDialog"

    const-string v2, "dismissDialog"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dismissDialogForPriority()V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    :cond_1
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->CMASDialogMoveToFrontWhenCallingStatus()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/CMASDialog;->checkCallState()V

    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v9, :cond_0

    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v11, 0x20

    invoke-virtual {v9, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v9, "cmas_user_preferences"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/mms/ui/CMASDialog;->sIsCMASDialogActivityAlive:Z

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/mms/ui/CMASDialog;->isLockscreenExist(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const v10, 0x7f02037d

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLCDOn()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x280000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "msgIdentifier"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog;->msgIdentifier:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "body"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog;->mBody:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "cmas_message_uri"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog;->messageUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog;->mBody:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog;->messageUri:Landroid/net/Uri;

    if-nez v9, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const v10, 0x7f02037c

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x80000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    :cond_5
    sput-object p0, Lcom/android/mms/ui/CMASDialog;->instance:Lcom/android/mms/ui/CMASDialog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0c007f

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog;->msgIdentifier:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Mms/CMASDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showCMASDialog, msgIdentifier = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/CMASDialog;->msgIdentifier:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020334

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_c

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0c01bf

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f040026

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v9, "statusbar"

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog;->mStatusbarManager:Landroid/app/StatusBarManager;

    const/high16 v10, 0x10000

    invoke-virtual {v9, v10}, Landroid/app/StatusBarManager;->disable(I)V

    new-instance v9, Lcom/android/mms/ui/CMASDialog$1;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/CMASDialog$1;-><init>(Lcom/android/mms/ui/CMASDialog;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const-string v9, "Presidential Alert"

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog;->mBody:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    :cond_8
    const v9, 0x7f0b008e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCMASTestOnOff()Z

    move-result v9

    if-eqz v9, :cond_d

    const v9, 0x7f0b008e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/mms/ui/CMASDialog;->mBody:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_e

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0c007f

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog;->msgIdentifier:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v9, 0x7f0b008f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASDialogOKisDismiss()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasDialogCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_10

    const v9, 0x7f0c0181

    new-instance v10, Lcom/android/mms/ui/CMASDialog$2;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/CMASDialog$2;-><init>(Lcom/android/mms/ui/CMASDialog;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_b
    :goto_6
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    :cond_c
    const v9, 0x7f0c01bf

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    :cond_d
    const v9, 0x7f0b008e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/mms/ui/CMASDialog;->mBody:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_f

    const v9, 0x7f0b008f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_f
    const v9, 0x7f0b008f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_10
    const v9, 0x7f0c0181

    new-instance v10, Lcom/android/mms/ui/CMASDialog$3;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/CMASDialog$3;-><init>(Lcom/android/mms/ui/CMASDialog;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_11
    const v9, 0x7f0c0026

    new-instance v10, Lcom/android/mms/ui/CMASDialog$4;

    invoke-direct {v10, p0, v0, v3, v2}, Lcom/android/mms/ui/CMASDialog$4;-><init>(Lcom/android/mms/ui/CMASDialog;Ljava/lang/String;ZLandroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasDialogCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_b

    const v9, 0x7f0c019f

    new-instance v10, Lcom/android/mms/ui/CMASDialog$5;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/CMASDialog$5;-><init>(Lcom/android/mms/ui/CMASDialog;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_6
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/CMASDialog;->sIsCMASDialogActivityAlive:Z

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "Mms/CMASDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause : inCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/CMASDialog;->inCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFinishing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->CMASDialogMoveToFrontWhenCallingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/mms/ui/CMASDialog;->inCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->showCMASDialogAgain(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessagePriorityCheckFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/transaction/CmasReceiverService;->cmasDataVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CMASDialog;->isLockscreenExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02037d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CMASDialog;->sDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02037c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASDialog;->dismissDialog()V

    return-void
.end method
