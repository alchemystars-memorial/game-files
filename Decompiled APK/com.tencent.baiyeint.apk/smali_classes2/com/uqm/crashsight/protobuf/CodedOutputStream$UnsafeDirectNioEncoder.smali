.class final Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;
.super Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioEncoder"
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:Ljava/nio/ByteBuffer;

.field private final c:J

.field private final d:J

.field private final e:J

.field private f:J


# virtual methods
.method public final a(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    :cond_0
    new-instance p1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(J)V

    return-void
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V

    return-void
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-interface {p2, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(B)V

    return-void
.end method

.method public final a(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->e:J

    cmp-long v0, v0, v2

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    const-wide/16 v6, 0x1

    if-gtz v0, :cond_1

    :goto_0
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    :cond_0
    iget-wide v8, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long v10, v8, v6

    iput-wide v10, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v8, v9, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v8, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v10, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_3

    and-long v10, p1, v4

    cmp-long v0, v10, v2

    if-nez v0, :cond_2

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v8, v9, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    :cond_2
    add-long v10, v8, v6

    iput-wide v10, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v8, v9, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    ushr-long/2addr p1, v1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->g(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->g(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void

    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v3, v6

    long-to-int v3, v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;)V

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    int-to-long v9, p3

    sub-long/2addr v0, v9

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v3, p2

    move-object v2, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJJJ)V

    iget-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(J)V

    return-void
.end method

.method public final b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(J)V

    return-void
.end method

.method public final b(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    const/4 p1, 0x4

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    return-void
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    const/4 p1, 0x4

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    return-void
.end method

.method public final b(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void
.end method

.method public final b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a([BII)V

    return-void
.end method

.method public final c(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->e:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-byte p1, p1

    invoke-static {v3, v4, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    :cond_0
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v3, v4, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    int-to-byte p1, p1

    invoke-static {v3, v4, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    return-void

    :cond_2
    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v3, v4, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    const-wide/16 v0, 0x4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void
.end method

.method public final c([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a([BII)V

    return-void
.end method

.method public final d(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->b:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->a:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->c:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final i()I
    .locals 4

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
