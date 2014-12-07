.class public Lcom/android/mms/ui/MessagesLockscreen;
.super Landroid/content/BroadcastReceiver;
.source "MessagesLockscreen.java"


# static fields
.field public static final ACTION_NOTIFY_DATASET_CHANGED:Ljava/lang/String; = "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

.field protected static final DEFAULT_AVATAR_IMAGE:[I

.field private static final MSG_BR_FOR_LOCKSCREEN:Ljava/lang/String; = "com.android.mms.ui.MessagesLockscreen"

.field private static final TAG:Ljava/lang/String; = "Mms/MessagesLockscreen"

.field private static final pendingLockMessageIntentUniqueId:I = 0x65

.field private static sEnablePreviewLockscreen:Z


# instance fields
.field mContext:Landroid/content/Context;

.field mDateView:Landroid/widget/TextView;

.field mIsEasyMode:Z

.field mIsFinishing:Z

.field mMessageBodyView:Landroid/widget/TextView;

.field mMmsImageView:Landroid/widget/ImageView;

.field mMsgCountView:Landroid/widget/TextView;

.field mRecipientNumberView:Landroid/widget/TextView;

.field mRecipientView:Landroid/widget/TextView;

.field mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessagesLockscreen;->sEnablePreviewLockscreen:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessagesLockscreen;->DEFAULT_AVATAR_IMAGE:[I

    return-void

    :array_0
    .array-data 4
        0x7f02026c
        0x7f02026d
        0x7f02026e
        0x7f02026f
        0x7f020270
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mThreadId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mIsEasyMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getContactHeaderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "CBmessages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v1, 0x7f0c013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const-string v0, "Pushmessage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0161

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDefaultAvatarImageId(J)I
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x5

    rem-long v1, p1, v1

    long-to-int v0, v1

    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessagesLockscreen;->DEFAULT_AVATAR_IMAGE:[I

    aget v1, v1, v0

    return v1
.end method

.method private static loadNotificationPref(Landroid/content/Context;I)V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "pref_key_enable_preview_message"

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-boolean v2, Lcom/android/mms/ui/MessagesLockscreen;->sEnablePreviewLockscreen:Z

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/ui/MessagesLockscreen;->sEnablePreviewLockscreen:Z

    return-void
.end method

.method private makeMmsText(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const v7, 0x7f0b01f6

    const/4 v4, 0x1

    const-string v0, ""

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p5, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v3, 0x7f0c00d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p2, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void

    :cond_5
    if-ne p5, v4, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v3, 0x7f0c044e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    if-le p5, v4, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v3, 0x7f0c019c

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static notifyDatasetChanged(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.intent.action.ACTION_NOTIFY_DATASET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static removeRemoteView(Landroid/content/Context;)V
    .locals 2

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->removeContextualEvent(Ljava/lang/String;)V

    return-void
.end method

.method private setDefaultMsgView(Landroid/widget/RemoteViews;IJ)V
    .locals 9

    const v8, 0x7f0b01f2

    const/4 v7, 0x0

    const v6, 0x7f0b01f6

    const/16 v3, 0x8

    const/4 v5, 0x1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0b01f7

    iget-object v2, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, p4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0b0109

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b01f4

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0b01f5

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    if-ne p2, v5, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MessagesLockscreen;->mIsEasyMode:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x41c00000

    invoke-virtual {p1, v8, v5, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v1, 0x7f0b01f7

    const/high16 v2, 0x41900000

    invoke-virtual {p1, v1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const/high16 v1, 0x41900000

    invoke-virtual {p1, v6, v5, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :goto_2
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/MessagesLockscreen;->mIsEasyMode:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0b01f4

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0b01f5

    invoke-virtual {p1, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0b01f4

    invoke-virtual {p1, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0b01f5

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0c038d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/high16 v1, 0x41a80000

    invoke-virtual {p1, v8, v5, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v1, 0x7f0b01f7

    const/high16 v2, 0x41700000

    invoke-virtual {p1, v1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const/high16 v1, 0x41700000

    invoke-virtual {p1, v6, v5, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto :goto_2
.end method

.method private setMsgBody(Landroid/widget/RemoteViews;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x1

    const v6, 0x7f0b01f6

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessagesLockscreen;->makeMmsText(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mIsEasyMode:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x41900000

    invoke-virtual {p1, v6, v7, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v6, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x41700000

    invoke-virtual {p1, v6, v7, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto :goto_1
.end method

.method private setMsgView(Landroid/widget/RemoteViews;Ljava/lang/String;IIJZLjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const v0, 0x7f0b01f7

    iget-object v1, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    invoke-static {v1, p5, p6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-le p4, v0, :cond_6

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    const v0, 0x7f0b0109

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b0109

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mIsEasyMode:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b01f4

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b01f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const v0, 0x7f0b01f2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessagesLockscreen;->setMsgBody(Landroid/widget/RemoteViews;ZLjava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mIsEasyMode:Z

    if-eqz v0, :cond_9

    const v0, 0x7f0b01f2

    const/4 v1, 0x1

    const/high16 v2, 0x41c00000

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v0, 0x7f0b01f7

    const/4 v1, 0x1

    const/high16 v2, 0x41900000

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v0, 0x7f0b01f6

    const/4 v1, 0x1

    const/high16 v2, 0x41900000

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :goto_2
    return-void

    :cond_2
    const v0, 0x7f0b01f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b01f5

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_3
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0109

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b01f2

    iget-object v1, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0c038d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0b01f6

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0b01f4

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b01f5

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mIsEasyMode:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0b01f4

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b01f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f0b01f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b01f5

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    :cond_6
    const v0, 0x7f0b0109

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-boolean v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mIsEasyMode:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0b01f4

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b01f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_3
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_7
    const v0, 0x7f0b01f2

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessagesLockscreen;->setMsgBody(Landroid/widget/RemoteViews;ZLjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    const v0, 0x7f0b01f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0b01f5

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    :cond_9
    const v0, 0x7f0b01f2

    const/4 v1, 0x1

    const/high16 v2, 0x41a80000

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v0, 0x7f0b01f7

    const/4 v1, 0x1

    const/high16 v2, 0x41700000

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v0, 0x7f0b01f6

    const/4 v1, 0x1

    const/high16 v2, 0x41700000

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_2
.end method

.method private updateAvatarView(Landroid/widget/RemoteViews;ILjava/lang/String;J)V
    .locals 10

    const v2, 0x7f0b01ef

    const v1, 0x7f020126

    const/4 v3, 0x0

    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v7, 0x0

    sget-boolean v0, Lcom/android/mms/ui/MessagesLockscreen;->sEnablePreviewLockscreen:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    invoke-static {p3, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/android/mms/data/Contact;->getAvatarBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    invoke-direct {p0, p4, p5}, Lcom/android/mms/ui/MessagesLockscreen;->getDefaultAvatarImageId(J)I

    move-result v0

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_1
    :goto_0
    const-string v0, "setImageBitmap"

    invoke-virtual {p1, v2, v0, v7}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_1
    return-void

    :cond_2
    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_3
    if-nez v7, :cond_1

    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0b01f0

    const/high16 v0, 0x41300000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v2

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    goto :goto_1
.end method


# virtual methods
.method public checkBubbleThread(Landroid/content/Context;Landroid/widget/RemoteViews;J)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_0

    invoke-static {p1, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fromLockScreen"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v3, 0x65

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v3, 0x7f0b01ed

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "fromLockScreen"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MessagesLockscreen;->mIsFinishing:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MessagesLockscreen;->mIsEasyMode:Z

    const-string v2, "Mms/MessagesLockscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v8, "com.android.mms.ui.MessagesLockscreen"

    if-ne v2, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/KeyguardManager;

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v8, 0x7f040065

    invoke-direct {v3, v2, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v2, "message_count"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v2, "thread_count"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "thread_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "date"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v2, "isMms"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const-string v2, "subject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "attachment_count"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string v2, "simSlot"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const-string v2, "Mms/MessagesLockscreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSimSlot : ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessagesLockscreen;->loadNotificationPref(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/mms/ui/MessagesLockscreen;->getContactHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-lez v12, :cond_2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessagesLockscreen;->updateAvatarView(Landroid/widget/RemoteViews;ILjava/lang/String;J)V

    sget-boolean v2, Lcom/android/mms/ui/MessagesLockscreen;->sEnablePreviewLockscreen:Z

    if-eqz v2, :cond_1

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v5

    move v11, v4

    invoke-direct/range {v8 .. v18}, Lcom/android/mms/ui/MessagesLockscreen;->setMsgView(Landroid/widget/RemoteViews;Ljava/lang/String;IIJZLjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v6, v7}, Lcom/android/mms/ui/MessagesLockscreen;->checkBubbleThread(Landroid/content/Context;Landroid/widget/RemoteViews;J)V

    const-string v2, "com.android.mms"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/app/KeyguardManager;->setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v13, v14}, Lcom/android/mms/ui/MessagesLockscreen;->setDefaultMsgView(Landroid/widget/RemoteViews;IJ)V

    goto :goto_0

    :cond_2
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessagesLockscreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagesLockscreen;->removeRemoteView(Landroid/content/Context;)V

    goto :goto_1
.end method
