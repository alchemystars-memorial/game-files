.class public abstract Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;
.super Ljava/lang/Object;
.source "AbstractProtocolCodec.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;
    }
.end annotation


# instance fields
.field protected bufferPools:Lnet/aihelp/core/net/mqtt/util/BufferPools;

.field protected directReadBuffer:Ljava/nio/ByteBuffer;

.field protected lastReadIoSize:I

.field protected lastWriteIoSize:J

.field protected nextDecodeAction:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

.field protected nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

.field protected readBuffer:Ljava/nio/ByteBuffer;

.field protected readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

.field protected readBufferSize:I

.field protected readChannel:Ljava/nio/channels/ReadableByteChannel;

.field protected readCounter:J

.field protected readEnd:I

.field protected readStart:I

.field protected writeBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected writeBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

.field private writeBufferRemaining:J

.field protected writeBufferSize:I

.field protected writeChannel:Ljava/nio/channels/GatheringByteChannel;

.field protected writeCounter:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeCounter:J

    const/4 v3, 0x0

    iput-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeChannel:Ljava/nio/channels/GatheringByteChannel;

    iput-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->lastWriteIoSize:J

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    iput-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    iput-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readCounter:J

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I

    iput-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    iput-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->directReadBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private allocateNextWriteBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$1;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->checkout()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, p0, v1}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;[B)V

    return-object v0

    :cond_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected abstract encode(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public flush()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeChannel:Ljava/nio/channels/GatheringByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->lastWriteIoSize:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    sget-object v0, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->NOT_EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    return-object v0

    :cond_1
    iget-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    iget-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeCounter:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeCounter:J

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->onBufferFlushed(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeChannel:Ljava/nio/channels/GatheringByteChannel;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-interface {v1, v0, v4, v5}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->lastWriteIoSize:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    sget-object v0, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->NOT_EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    return-object v0

    :cond_3
    iget-wide v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    iget-wide v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeCounter:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeCounter:J

    :goto_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->onBufferFlushed(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->flushNextWriteBuffer()V

    goto/16 :goto_0

    :cond_6
    :goto_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->checkin(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    :cond_7
    sget-object v0, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    return-object v0
.end method

.method protected flushNextWriteBuffer()V
    .locals 6

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->allocateNextWriteBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    return-void
.end method

.method public full()Z
    .locals 4

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    iget v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBufferPools()Lnet/aihelp/core/net/mqtt/util/BufferPools;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->bufferPools:Lnet/aihelp/core/net/mqtt/util/BufferPools;

    return-object v0
.end method

.method public getLastReadSize()J
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->lastReadIoSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLastWriteSize()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->lastWriteIoSize:J

    return-wide v0
.end method

.method public getReadBufferSize()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I

    return v0
.end method

.method public getReadCounter()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readCounter:J

    return-wide v0
.end method

.method public getWriteBufferSize()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    return v0
.end method

.method public getWriteCounter()J
    .locals 2

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeCounter:J

    return-wide v0
.end method

.method protected abstract initialDecodeAction()Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBufferFlushed(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method protected peekBytes(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 3

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    invoke-direct {v0, v1, v2, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-object v0
.end method

.method public read()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_13

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->directReadBuffer:Ljava/nio/ByteBuffer;

    const-string v2, "Peer disconnected"

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->directReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->directReadBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->lastReadIoSize:I

    iget-wide v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readCounter:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readCounter:J

    if-eq v1, v3, :cond_1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextDecodeAction:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    invoke-interface {v1}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;->apply()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4

    iget v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v4, v1, :cond_11

    :cond_4
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v5, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    if-eqz v5, :cond_5

    iget v5, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    if-nez v5, :cond_5

    iget-object v5, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    iget-object v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    invoke-virtual {v6}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->getBufferSize()I

    move-result v6

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    move v5, v4

    goto :goto_1

    :cond_6
    move v1, v4

    move v5, v1

    :goto_1
    iget-object v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-nez v6, :cond_c

    :cond_7
    iget v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    sub-int/2addr v1, v6

    iget v7, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    sub-int/2addr v7, v6

    if-le v7, v1, :cond_8

    iget v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    :cond_8
    iget v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I

    add-int/2addr v6, v1

    :goto_2
    if-lez v1, :cond_9

    iget-object v8, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget v9, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    add-int/2addr v6, v9

    invoke-static {v8, v9, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    goto :goto_3

    :cond_9
    iget-object v8, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->getBufferSize()I

    move-result v8

    if-ne v6, v8, :cond_a

    iget-object v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    invoke-virtual {v6}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->checkout()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    goto :goto_3

    :cond_a
    new-array v6, v6, [B

    :goto_3
    if-eqz v5, :cond_b

    iget-object v8, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    iget-object v9, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->checkin(Ljava/lang/Object;)V

    :cond_b
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    iput v7, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    :cond_c
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    iget-object v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->lastReadIoSize:I

    iget-wide v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readCounter:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readCounter:J

    if-eq v1, v3, :cond_12

    if-nez v1, :cond_f

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_e

    if-eqz v5, :cond_d

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->checkin(Ljava/lang/Object;)V

    :cond_d
    iput v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    iput v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    :cond_e
    return-object v0

    :cond_f
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-gt v1, v2, :cond_11

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz v5, :cond_10

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->checkin(Ljava/lang/Object;)V

    :cond_10
    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    :cond_11
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextDecodeAction:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    invoke-interface {v1}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;->apply()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :cond_12
    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    iput-wide v6, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readCounter:J

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-object v1
.end method

.method protected readBytes(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 3

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    iput v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-object v1
.end method

.method protected readDirect(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;
    .locals 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    sub-int v1, v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget v3, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v3, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    add-int v4, v3, v1

    sub-int/2addr v0, v4

    if-lez v0, :cond_0

    add-int/2addr v1, v3

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->directReadBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->directReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected readUntil(Ljava/lang/Byte;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readUntil(Ljava/lang/Byte;I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    return-object p1
.end method

.method protected readUntil(Ljava/lang/Byte;I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const-string v0, "Maximum protocol buffer length exeeded"

    invoke-virtual {p0, p1, p2, v0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readUntil(Ljava/lang/Byte;ILjava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    return-object p1
.end method

.method protected readUntil(Ljava/lang/Byte;ILjava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v0, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {v1, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->indexOf(B)I

    move-result p1

    if-ltz p1, :cond_2

    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    iget v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v2, p1

    iput v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    iput v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    sub-int/2addr v2, v1

    if-ltz p2, :cond_1

    if-gt v2, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1, p3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {p1, v0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-object p1

    :cond_2
    iget p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    iget v0, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readEnd:I

    if-ltz p2, :cond_4

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readStart:I

    sub-int/2addr p1, v0

    if-gt p1, p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1, p3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setBufferPools(Lnet/aihelp/core/net/mqtt/util/BufferPools;)V
    .locals 1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->bufferPools:Lnet/aihelp/core/net/mqtt/util/BufferPools;

    if-eqz p1, :cond_0

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/util/BufferPools;->getBufferPool(I)Lnet/aihelp/core/net/mqtt/util/BufferPool;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/util/BufferPools;->getBufferPool(I)Lnet/aihelp/core/net/mqtt/util/BufferPool;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    :goto_0
    return-void
.end method

.method public setTransport(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    .locals 1

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getWriteChannel()Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/GatheringByteChannel;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeChannel:Ljava/nio/channels/GatheringByteChannel;

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->getReadChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextDecodeAction:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->initialDecodeAction()Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextDecodeAction:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    :cond_0
    instance-of v0, p1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->getSendBufferSize()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->getReceiveBufferSize()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->getSendBufferSize()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->getReceiveBufferSize()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeChannel:Ljava/nio/channels/GatheringByteChannel;

    instance-of v0, p1, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$SSLChannel;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    check-cast p1, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$SSLChannel;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$SSLChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeChannel:Ljava/nio/channels/GatheringByteChannel;

    check-cast p1, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$SSLChannel;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport$SSLChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->bufferPools:Lnet/aihelp/core/net/mqtt/util/BufferPools;

    if-eqz p1, :cond_5

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferSize:I

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/util/BufferPools;->getBufferPool(I)Lnet/aihelp/core/net/mqtt/util/BufferPool;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->bufferPools:Lnet/aihelp/core/net/mqtt/util/BufferPools;

    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/util/BufferPools;->getBufferPool(I)Lnet/aihelp/core/net/mqtt/util/BufferPool;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    :cond_5
    return-void
.end method

.method public unread([B)V
    .locals 4

    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readCounter:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->readCounter:J

    return-void
.end method

.method public write(Ljava/lang/Object;)Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->full()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->FULL:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->allocateNextWriteBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    move-result-object v1

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    :cond_1
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->encode(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->size()I

    move-result p1

    int-to-double v1, p1

    iget p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferSize:I

    int-to-double v3, p1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->flushNextWriteBuffer()V

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->WAS_EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    return-object p1

    :cond_3
    sget-object p1, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->NOT_EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    return-object p1
.end method

.method protected writeDirect(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->getData()[B

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v0

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->getData()[B

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->position(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->nextWriteBuffer:Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->flushNextWriteBuffer()V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferRemaining:J

    :goto_0
    return-void
.end method
