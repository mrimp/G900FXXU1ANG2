.class public final enum Lcom/android/incallui/InCallUtils$CallForwardingState;
.super Ljava/lang/Enum;
.source "InCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallForwardingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/InCallUtils$CallForwardingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/InCallUtils$CallForwardingState;

.field public static final enum INVALID:Lcom/android/incallui/InCallUtils$CallForwardingState;

.field public static final enum STARTED:Lcom/android/incallui/InCallUtils$CallForwardingState;

.field public static final enum STOPPED:Lcom/android/incallui/InCallUtils$CallForwardingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/InCallUtils$CallForwardingState;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/InCallUtils$CallForwardingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallUtils$CallForwardingState;->INVALID:Lcom/android/incallui/InCallUtils$CallForwardingState;

    new-instance v0, Lcom/android/incallui/InCallUtils$CallForwardingState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/InCallUtils$CallForwardingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallUtils$CallForwardingState;->STOPPED:Lcom/android/incallui/InCallUtils$CallForwardingState;

    new-instance v0, Lcom/android/incallui/InCallUtils$CallForwardingState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/InCallUtils$CallForwardingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/InCallUtils$CallForwardingState;->STARTED:Lcom/android/incallui/InCallUtils$CallForwardingState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/incallui/InCallUtils$CallForwardingState;

    sget-object v1, Lcom/android/incallui/InCallUtils$CallForwardingState;->INVALID:Lcom/android/incallui/InCallUtils$CallForwardingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/InCallUtils$CallForwardingState;->STOPPED:Lcom/android/incallui/InCallUtils$CallForwardingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/InCallUtils$CallForwardingState;->STARTED:Lcom/android/incallui/InCallUtils$CallForwardingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/incallui/InCallUtils$CallForwardingState;->$VALUES:[Lcom/android/incallui/InCallUtils$CallForwardingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/InCallUtils$CallForwardingState;
    .locals 1

    const-class v0, Lcom/android/incallui/InCallUtils$CallForwardingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallUtils$CallForwardingState;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/InCallUtils$CallForwardingState;
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallUtils$CallForwardingState;->$VALUES:[Lcom/android/incallui/InCallUtils$CallForwardingState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/InCallUtils$CallForwardingState;

    return-object v0
.end method
