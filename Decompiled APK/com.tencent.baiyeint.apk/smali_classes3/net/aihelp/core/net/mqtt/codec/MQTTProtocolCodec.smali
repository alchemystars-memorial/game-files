.class public Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;
.super Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;
.source "MQTTProtocolCodec.java"


# static fields
.field private static final BUFFER_POOLS:Lnet/aihelp/core/net/mqtt/util/BufferPools;


# instance fields
.field private maxMessageLength:I

.field private final readHeader:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/util/BufferPools;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/util/BufferPools;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->BUFFER_POOLS:Lnet/aihelp/core/net/mqtt/util/BufferPools;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;-><init>()V

    const/high16 v0, 0x6400000

    iput v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->maxMessageLength:I

    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;-><init>(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readHeader:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    sget-object v0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->BUFFER_POOLS:Lnet/aihelp/core/net/mqtt/util/BufferPools;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->bufferPools:Lnet/aihelp/core/net/mqtt/util/BufferPools;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readLength()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I
    .locals 0

    iget p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->maxMessageLength:I

    return p0
.end method

.method static synthetic access$1000(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$1100(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I
    .locals 0

    iget p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readStart:I

    return p0
.end method

.method static synthetic access$1202(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;I)I
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readEnd:I

    return p1
.end method

.method static synthetic access$1302(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;I)I
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readStart:I

    return p1
.end method

.method static synthetic access$1400(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I
    .locals 0

    iget p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readStart:I

    return p0
.end method

.method static synthetic access$1502(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;)Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->nextDecodeAction:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    return-object p1
.end method

.method static synthetic access$1600(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readHeader:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I
    .locals 0

    iget p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readStart:I

    return p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$402(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;I)I
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readStart:I

    return p1
.end method

.method static synthetic access$500(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I
    .locals 0

    iget p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readEnd:I

    return p0
.end method

.method static synthetic access$602(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;)Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->nextDecodeAction:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    return-object p1
.end method

.method static synthetic access$700(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$800(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I
    .locals 0

    iget p0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readStart:I

    return p0
.end method

.method static synthetic access$902(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;I)I
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readEnd:I

    return p1
.end method

.method private readLength()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readStart:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readEnd:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    iget v4, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readEnd:I

    sub-int/2addr v4, v1

    if-ge v4, v0, :cond_1

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readEnd:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    mul-int/2addr v5, v3

    add-int/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    return v2

    :cond_0
    shl-int/lit8 v3, v3, 0x7

    iget v4, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readEnd:I

    add-int/2addr v4, v1

    iput v4, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readEnd:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method protected encode(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->header()B

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write(I)V

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    iget v5, v5, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v4, 0x7f

    int-to-byte v0, v0

    ushr-int/lit8 v4, v4, 0x7

    if-lez v4, :cond_1

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    :cond_1
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write(I)V

    if-gtz v4, :cond_0

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    iget-object v4, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v5, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v1, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-virtual {v3, v4, v5, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getMaxMessageLength()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->maxMessageLength:I

    return v0
.end method

.method protected initialDecodeAction()Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readHeader:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    return-object v0
.end method

.method readBody(BI)Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;

    invoke-direct {v0, p0, p2, p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;-><init>(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;IB)V

    return-object v0
.end method

.method public setMaxMessageLength(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->maxMessageLength:I

    return-void
.end method
