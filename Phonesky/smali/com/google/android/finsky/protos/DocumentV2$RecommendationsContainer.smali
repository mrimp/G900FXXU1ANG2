.class public final Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DocumentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/protos/DocumentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecommendationsContainer"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    sput-object v0, Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;->EMPTY_ARRAY:[Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;->clear()Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;->cachedSize:I

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/finsky/protos/DocumentV2$RecommendationsContainer;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0

    return-void
.end method
