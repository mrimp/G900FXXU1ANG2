.class public final Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
.super Lcom/google/protobuf/nano/MessageNano;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstrumentAddressSpec"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;


# instance fields
.field public billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

.field public hasInstrumentFamily:Z

.field public instrumentFamily:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

    sput-object v0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->clear()Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->instrumentFamily:I

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasInstrumentFamily:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->instrumentFamily:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasInstrumentFamily:Z

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->instrumentFamily:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;
    .locals 2
    .param p1    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->instrumentFamily:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasInstrumentFamily:Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0x4a -> :sswitch_2
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

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;

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

    iget v0, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->instrumentFamily:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->hasInstrumentFamily:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->instrumentFamily:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country$InstrumentAddressSpec;->billingAddressSpec:Lcom/google/android/finsky/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    return-void
.end method