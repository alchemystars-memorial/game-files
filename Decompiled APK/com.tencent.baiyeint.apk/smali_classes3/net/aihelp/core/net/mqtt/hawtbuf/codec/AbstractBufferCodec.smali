.class public abstract Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VariableCodec;
.source "AbstractBufferCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
        ">",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VariableCodec<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VariableCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation
.end method

.method public bridge synthetic decode(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;->decode(Ljava/io/DataInput;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/DataInput;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;->createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deepCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;->deepCopy(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public deepCopy(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->deepCopy()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;->createBuffer([B)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

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

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;->encode(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/io/DataOutput;)V

    return-void
.end method

.method public encode(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/DataOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-interface {p2, v0, v1, p1}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method

.method public bridge synthetic estimatedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/AbstractBufferCodec;->estimatedSize(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)I

    move-result p1

    return p1
.end method

.method public estimatedSize(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/lit8 p1, p1, 0x4

    return p1
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
