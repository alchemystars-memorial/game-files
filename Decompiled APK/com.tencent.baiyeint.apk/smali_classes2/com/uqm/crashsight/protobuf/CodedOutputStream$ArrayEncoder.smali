.class Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;
.super Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayEncoder"
.end annotation


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:I


# direct methods
.method constructor <init>([BII)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;-><init>(B)V

    if-eqz p1, :cond_1

    or-int v1, p2, p3

    array-length v2, p1

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->b:I

    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

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

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a(J)V

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

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

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

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

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

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a(Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a(B)V

    return-void
.end method

.method public final a(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->j()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    iget v6, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    sub-int/2addr v0, v6

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v6, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v6, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-direct {p2, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

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

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->g(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->g(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    sub-int/2addr v3, v2

    invoke-static {p1, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-virtual {p0, p1, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;)V

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a(J)V

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

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a(J)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->b(J)V

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

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a(ILcom/uqm/crashsight/protobuf/ByteString;)V

    const/4 p1, 0x4

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

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

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-virtual {p0, v1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a(ILcom/uqm/crashsight/protobuf/MessageLite;)V

    const/4 p1, 0x4

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    return-void
.end method

.method public final b(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-direct {p2, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a([BII)V

    return-void
.end method

.method public final c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Android;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    return-void

    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_5
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d(I)V

    return-void
.end method

.method public final c([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a([BII)V

    return-void
.end method

.method public final d(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public final i()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final k()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->d:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
