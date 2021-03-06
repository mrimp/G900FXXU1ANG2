.class public Lcom/bst/airmessage/sdk/AirMessage;
.super Ljava/lang/Object;
.source "AirMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bst/airmessage/sdk/AirMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_EMOTION:Ljava/lang/String; = "emotion"

.field public static final TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final TYPE_PICTURE:Ljava/lang/String; = "pic"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final TYPE_VOICE:Ljava/lang/String; = "voice"


# instance fields
.field private category:Ljava/lang/String;

.field private data:Landroid/os/Bundle;

.field private groupId:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private mineType:Ljava/lang/String;

.field private proxyCategory:Ljava/lang/String;

.field private receiveTime:J

.field private replyId:Ljava/lang/String;

.field private senderId:Ljava/lang/String;

.field private senderName:Ljava/lang/String;

.field private senderProfile:Ljava/lang/String;

.field private threadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bst/airmessage/sdk/AirMessage$1;

    invoke-direct {v0}, Lcom/bst/airmessage/sdk/AirMessage$1;-><init>()V

    sput-object v0, Lcom/bst/airmessage/sdk/AirMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderProfile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->category:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->proxyCategory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->mineType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->threadId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->replyId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->groupId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->receiveTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->data:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderId:Ljava/lang/String;

    iput-object p2, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderName:Ljava/lang/String;

    iput-object p3, p0, Lcom/bst/airmessage/sdk/AirMessage;->mineType:Ljava/lang/String;

    iput-object p4, p0, Lcom/bst/airmessage/sdk/AirMessage;->messageId:Ljava/lang/String;

    iput-wide p5, p0, Lcom/bst/airmessage/sdk/AirMessage;->receiveTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderId:Ljava/lang/String;

    iput-object p2, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderName:Ljava/lang/String;

    iput-object p3, p0, Lcom/bst/airmessage/sdk/AirMessage;->mineType:Ljava/lang/String;

    iput-object p4, p0, Lcom/bst/airmessage/sdk/AirMessage;->threadId:Ljava/lang/String;

    iput-object p5, p0, Lcom/bst/airmessage/sdk/AirMessage;->messageId:Ljava/lang/String;

    iput-wide p6, p0, Lcom/bst/airmessage/sdk/AirMessage;->receiveTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMineType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->mineType:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->proxyCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->receiveTime:J

    return-wide v0
.end method

.method public getReplyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->replyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderProfile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->category:Ljava/lang/String;

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->data:Landroid/os/Bundle;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setMineType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->mineType:Ljava/lang/String;

    return-void
.end method

.method public setProxyCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->proxyCategory:Ljava/lang/String;

    return-void
.end method

.method public setReceiveTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->receiveTime:J

    return-void
.end method

.method public setReplyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->replyId:Ljava/lang/String;

    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderId:Ljava/lang/String;

    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderName:Ljava/lang/String;

    return-void
.end method

.method public setSenderProfile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderProfile:Ljava/lang/String;

    return-void
.end method

.method public setThreadId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bst/airmessage/sdk/AirMessage;->threadId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->senderProfile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->proxyCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->mineType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->replyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->receiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/bst/airmessage/sdk/AirMessage;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
