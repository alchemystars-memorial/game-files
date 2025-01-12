.class public final Lf/b;
.super Ljava/io/OutputStream;


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Ljava/util/zip/Deflater;

.field public final c:[B

.field public d:Z

.field public final e:Ljava/util/zip/CRC32;

.field public final f:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lf/b;->c:[B

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lf/b;->e:Ljava/util/zip/CRC32;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lf/b;->f:[B

    iput-object p1, p0, Lf/b;->a:Ljava/io/OutputStream;

    new-instance p1, Ljava/util/zip/Deflater;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    return-void

    nop

    :array_0
    .array-data 1
        0x1ft
        -0x75t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lf/b;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lf/b;->a:Ljava/io/OutputStream;

    iget-object v2, p0, Lf/b;->c:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lf/b;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lf/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    return-void
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lf/b;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf/b;->a()V

    iget-object v0, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    iget-object v0, p0, Lf/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/b;->d:Z

    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lf/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lf/b;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lf/b;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 4

    iget-object v0, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_3

    if-lez p3, :cond_2

    iget-object v0, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/b;->b:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lf/b;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lf/b;->a:Ljava/io/OutputStream;

    iget-object v2, p0, Lf/b;->c:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/b;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot write more data, the end of the compressed data stream has been reached"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
