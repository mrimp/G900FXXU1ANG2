.class public final enum Lcom/android/settings/homesync/FileOperationPaste$RequestType;
.super Ljava/lang/Enum;
.source "FileOperationPaste.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/FileOperationPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/homesync/FileOperationPaste$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/homesync/FileOperationPaste$RequestType;

.field public static final enum Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

.field public static final enum None:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

.field public static final enum Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/homesync/FileOperationPaste$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->None:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    new-instance v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    const-string v1, "Backup"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/homesync/FileOperationPaste$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    new-instance v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    const-string v1, "Restore"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/homesync/FileOperationPaste$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->None:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Restore:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->$VALUES:[Lcom/android/settings/homesync/FileOperationPaste$RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/homesync/FileOperationPaste$RequestType;
    .locals 1

    const-class v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/homesync/FileOperationPaste$RequestType;
    .locals 1

    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->$VALUES:[Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    return-object v0
.end method
