.class public final Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "PlayStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/PlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayStoreUiElementInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;


# instance fields
.field public document:Ljava/lang/String;

.field public hasDocument:Z

.field public hasHost:Z

.field public hasOfferType:Z

.field public hasSerialDocid:Z

.field public host:Ljava/lang/String;

.field public instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

.field public offerType:I

.field public serialDocid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    sput-object v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->EMPTY_ARRAY:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasSerialDocid:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasHost:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasDocument:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasOfferType:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->serialDocid:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasSerialDocid:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->host:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasHost:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->document:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasDocument:Z

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->offerType:I

    iput-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasOfferType:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasSerialDocid:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->serialDocid:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->serialDocid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasHost:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->host:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasDocument:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->document:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->document:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasOfferType:Z

    if-nez v1, :cond_7

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->offerType:I

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->offerType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iput v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;
    .locals 3
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->serialDocid:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasSerialDocid:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->host:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasHost:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->document:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasDocument:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->offerType:I

    iput-boolean v2, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasOfferType:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->instrumentInfo:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo$InstrumentInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasSerialDocid:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->serialDocid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->serialDocid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasHost:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->host:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->host:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasDocument:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->document:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->document:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->hasOfferType:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->offerType:I

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;->offerType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    return-void
.end method