.class public Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "DataByteArrayOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# static fields
.field private static final DEFAULT_SIZE:I = 0x800


# instance fields
.field protected buf:[B

.field protected helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

.field protected pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    if-lez p1, :cond_0

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureEnoughBuffer(I)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->resize(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method protected onWrite()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public position()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    return v0
.end method

.method public position(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    return-void
.end method

.method protected resize(I)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    return-void
.end method

.method public restart()V
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->restart(I)V

    return-void
.end method

.method public restart(I)V
    .locals 0

    new-array p1, p1, [B

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    const/4 p1, 0x0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    return v0
.end method

.method public skip(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 4

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public write(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-virtual {p0, v0, v1, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public writeByte(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    ushr-int/lit8 p1, p1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeChar(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    ushr-int/lit8 p1, p1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    ushr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p0, v4}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write(I)V

    ushr-int/2addr v3, v1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeLong(J)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    ushr-int/lit8 p1, p1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public writeLong(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    const/4 v1, 0x0

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public writeShort(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    ushr-int/lit8 p1, p1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x7ff

    const/16 v5, 0x7f

    const/4 v6, 0x1

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_0

    if-gt v7, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-le v7, v4, :cond_1

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xffff

    if-gt v3, v2, :cond_8

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->ensureEnoughBuffer(I)V

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeShort(I)V

    :goto_2
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_4

    if-le v2, v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v7, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v1, v0, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_5

    if-gt v2, v5, :cond_5

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v7, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    goto :goto_4

    :cond_5
    if-le v2, v4, :cond_6

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v7, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v2, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v9, v2, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->buf:[B

    iget v7, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v2, 0x6

    and-int/lit8 v9, v9, 0x1f

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    add-int/lit8 v7, v8, 0x1

    iput v7, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->pos:I

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v3, v8

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->onWrite()V

    return-void

    :cond_8
    new-instance p1, Ljava/io/UTFDataFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoded string too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeVarInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;->writeVarInt(I)V

    return-void
.end method

.method public writeVarLong(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;->writeVarLong(J)V

    return-void
.end method

.method public writeVarSignedInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;->writeVarSignedInt(I)V

    return-void
.end method

.method public writeVarSignedLong(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->helper:Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/AbstractVarIntSupport;->writeVarSignedLong(J)V

    return-void
.end method
