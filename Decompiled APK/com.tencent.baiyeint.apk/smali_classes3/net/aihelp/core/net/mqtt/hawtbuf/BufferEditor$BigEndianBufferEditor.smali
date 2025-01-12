.class Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;
.source "BufferEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BigEndianBufferEditor"
.end annotation


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$1;)V

    return-void
.end method


# virtual methods
.method public readChar()C
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .locals 5

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort()S
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public writeChar(I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    ushr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->writeLong(J)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    ushr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 2

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    const/4 v0, 0x0

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    return-void
.end method

.method public writeRawDouble(D)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->writeLong(J)V

    return-void
.end method

.method public writeRawFloat(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->writeInt(I)V

    return-void
.end method

.method public writeShort(I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    ushr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;->write(I)V

    return-void
.end method
