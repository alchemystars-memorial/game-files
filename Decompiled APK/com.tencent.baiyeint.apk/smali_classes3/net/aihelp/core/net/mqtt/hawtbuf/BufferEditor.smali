.class public abstract Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;
.source "BufferEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;,
        Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;
    }
.end annotation


# instance fields
.field protected final buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;


# direct methods
.method private constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-void
.end method

.method public static big(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method

.method public static little(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method


# virtual methods
.method protected hasCapacity(I)Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v0, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public read()I
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v1, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v2, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->read()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readByte()B
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public abstract readChar()C
.end method

.method public abstract readDouble()D
.end method

.method public abstract readFloat()F
.end method

.method public readFully([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v1, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget p2, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    add-int/2addr p2, p3

    iput p2, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget p2, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    sub-int/2addr p2, p3

    iput p2, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return-void
.end method

.method public abstract readInt()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readShort()S
.end method

.method public readUnsignedByte()I
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->read()I

    move-result v0

    return v0
.end method

.method public abstract readUnsignedShort()I
.end method

.method public skipBytes(I)I
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v0, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v1, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    add-int/2addr v1, p1

    iput v1, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v1, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    sub-int/2addr v1, p1

    iput v1, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return p1
.end method

.method public write(I)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v2, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return-void
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v1, v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget p2, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    add-int/2addr p2, p3

    iput p2, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->buffer:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget p2, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    sub-int/2addr p2, p3

    iput p2, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->write(I)V

    return-void
.end method

.method public writeByte(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;->write(I)V

    return-void
.end method

.method public abstract writeChar(I)V
.end method

.method public abstract writeDouble(D)V
.end method

.method public abstract writeFloat(F)V
.end method

.method public abstract writeInt(I)V
.end method

.method public abstract writeLong(J)V
.end method

.method public abstract writeRawDouble(D)V
.end method

.method public abstract writeRawFloat(F)V
.end method

.method public abstract writeShort(I)V
.end method
