.class public final Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "LibraryReplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/LibraryReplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryReplicationRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;


# instance fields
.field public libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;

    sput-object v0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->clear()Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    iput-object v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    array-length v3, v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->cachedSize:I

    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    new-instance v5, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    array-length v1, v5

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    invoke-direct {v5}, Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/protos/LibraryReplication$LibraryReplicationRequest;->libraryState:[Lcom/google/android/finsky/protos/LibraryReplication$ClientLibraryState;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
