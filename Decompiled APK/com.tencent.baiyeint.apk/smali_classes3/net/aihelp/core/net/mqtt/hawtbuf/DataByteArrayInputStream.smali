.class public final Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;
.super Ljava/io/InputStream;
.source "DataByteArrayInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private buf:[B

.field protected helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

.field private length:I

.field private offset:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->restart(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->restart([B)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->offset:I

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    return v0
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    return v0
.end method

.method public getRawData()[B
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    return-object v0
.end method

.method public read()I
    .locals 3

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->offset:I

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->offset:I

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    add-int/2addr v0, v1

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    if-lt v2, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int v3, v2, p3

    if-le v3, v0, :cond_1

    sub-int p3, v1, v2

    :cond_1
    if-gtz p3, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    return p3
.end method

.method public readBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBuffer(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 4

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->offset:I

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    add-int/2addr v0, v1

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    if-le v2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int v3, v2, p1

    if-le v3, v0, :cond_1

    sub-int p1, v1, v2

    :cond_1
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    invoke-direct {v0, v1, v2, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    return-object v0
.end method

.method public readByte()B
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read([BII)I

    return-void
.end method

.method public readFully([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read([BII)I

    return-void
.end method

.method public readInt()I
    .locals 4

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v3

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    :cond_0
    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->offset:I

    iget v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    iget v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public readLong()J
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v5, v2

    const/16 v2, 0x30

    shl-long/2addr v5, v2

    add-long/2addr v3, v5

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    const/16 v1, 0x28

    shl-long/2addr v5, v1

    add-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v5, v2

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    add-long/2addr v3, v5

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    const/16 v1, 0x18

    shl-long/2addr v5, v1

    add-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v5, v2

    add-long/2addr v3, v5

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v5, v1

    add-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    int-to-long v0, v0

    add-long/2addr v3, v0

    return-wide v3
.end method

.method public readShort()S
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readUnsignedShort()I

    move-result v0

    new-array v1, v0, [C

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    add-int/2addr v2, v0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget v4, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x7f

    if-le v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    add-int/lit8 v4, v3, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    iget v4, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    if-ge v4, v2, :cond_6

    iget-object v5, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v6, 0x4

    const/16 v8, 0x80

    const-string v9, "bad string"

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0, v9}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    if-gt v4, v2, :cond_3

    add-int/lit8 v7, v4, -0x2

    aget-byte v7, v5, v7

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v5, v4

    and-int/lit16 v5, v7, 0xc0

    if-ne v5, v8, :cond_2

    and-int/lit16 v5, v4, 0xc0

    if-ne v5, v8, :cond_2

    add-int/lit8 v5, v3, 0x1

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    and-int/lit8 v4, v4, 0x3f

    shl-int/2addr v4, v0

    or-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v1, v3

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0, v9}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0, v9}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    if-gt v4, v2, :cond_5

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v5, v4

    and-int/lit16 v5, v4, 0xc0

    if-ne v5, v8, :cond_4

    add-int/lit8 v5, v3, 0x1

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v1, v3

    :goto_2
    move v3, v5

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0, v9}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0, v9}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    add-int/lit8 v4, v3, 0x1

    int-to-char v5, v6

    aput-char v5, v1, v3

    move v3, v4

    goto/16 :goto_1

    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readUnsignedByte()I
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->read()I

    move-result v1

    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public readVarInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;->readVarInt()I

    move-result v0

    return v0
.end method

.method public readVarLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;->readVarLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readVarSignedInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;->readVarSignedInt()I

    move-result v0

    return v0
.end method

.method public readVarSignedLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;->readVarSignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public restart()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    array-length v0, v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    return-void
.end method

.method public restart(I)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->restart([B)V

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    return-void
.end method

.method public restart(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 1

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->getData()[B

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->getOffset()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->offset:I

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->getLength()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    return-void
.end method

.method public restart([B)V
    .locals 1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    array-length p1, p1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    return-void
.end method

.method public setPos(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    return-void
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public skip(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->skipBytes(I)I

    move-result p1

    return p1
.end method

.method public skipBytes(I)I
    .locals 3

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->offset:I

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->length:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    add-int v2, v1, p1

    if-le v2, v0, :cond_0

    sub-int p1, v0, v1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/2addr v1, p1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->pos:I

    return p1
.end method
