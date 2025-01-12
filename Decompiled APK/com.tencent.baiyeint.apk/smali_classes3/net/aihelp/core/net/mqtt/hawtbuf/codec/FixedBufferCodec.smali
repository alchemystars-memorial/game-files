.class public Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;
.super Ljava/lang/Object;
.source "FixedBufferCodec.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec<",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;->decode(Ljava/io/DataInput;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/DataInput;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;->size:I

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    new-instance p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {p1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    return-object p1
.end method

.method public bridge synthetic deepCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;->deepCopy(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public deepCopy(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 0

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->deepCopy()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;->encode(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/io/DataOutput;)V

    return-void
.end method

.method public encode(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;->size:I

    invoke-interface {p2, v0, p1, v1}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method

.method public bridge synthetic estimatedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;->estimatedSize(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)I

    move-result p1

    return p1
.end method

.method public estimatedSize(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)I
    .locals 0

    iget p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;->size:I

    return p1
.end method

.method public getFixedSize()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/FixedBufferCodec;->size:I

    return v0
.end method

.method public isDeepCopySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEstimatedSizeSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
