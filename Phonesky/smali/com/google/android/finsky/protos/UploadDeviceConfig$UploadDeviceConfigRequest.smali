.class public final Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "UploadDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/UploadDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadDeviceConfigRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;


# instance fields
.field public deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

.field public gcmRegistrationId:Ljava/lang/String;

.field public hasGcmRegistrationId:Z

.field public hasManufacturer:Z

.field public manufacturer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    sput-object v0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasManufacturer:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->clear()Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->manufacturer:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasManufacturer:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->cachedSize:I

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasManufacturer:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->manufacturer:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->manufacturer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->cachedSize:I

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;
    .locals 3
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
    iget-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/DeviceConfigurationProto;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->manufacturer:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasManufacturer:Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->deviceConfiguration:Lcom/google/android/finsky/protos/DeviceConfigurationProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasManufacturer:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->manufacturer:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->hasGcmRegistrationId:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/finsky/protos/UploadDeviceConfig$UploadDeviceConfigRequest;->gcmRegistrationId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    return-void
.end method
