.class synthetic Lcom/android/phone/CallNotifier$11;
.super Ljava/lang/Object;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

.field static final synthetic $SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    invoke-static {}, Lcom/android/phone/CallMessageConstants$RequestType;->values()[Lcom/android/phone/CallMessageConstants$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    :try_start_7
    sget-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    sget-object v1, Lcom/android/phone/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CALL:Lcom/android/phone/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/phone/CallNotifier$11;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    sget-object v1, Lcom/android/phone/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/CallMessageConstants$RequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
