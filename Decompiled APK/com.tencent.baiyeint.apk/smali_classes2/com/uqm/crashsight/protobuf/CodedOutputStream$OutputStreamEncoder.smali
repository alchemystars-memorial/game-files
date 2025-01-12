.class final Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;
.super Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputStreamEncoder"
.end annotation


# instance fields
.field private final e:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    const/4 p1, 0x2

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->l(I)V

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l(I)V

    return-void
.end method


# virtual methods
.method public final a(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->c:I

    aput-byte p1, v0, v1

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->d:I

    return-void
.end method

.method public final a(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr p2, v0

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-static {p1, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->l(I)V

    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->f(J)V

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

    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

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

    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

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

    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-static {p1, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->l(I)V

    int-to-byte p1, p2

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->a:[B

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->c:I

    aput-byte p1, p2, v0

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->d:I

    return-void
.end method

.method public final a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->f(J)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l(I)V

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l(I)V

    invoke-interface {p1, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->g(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    new-array v1, v0, [B

    invoke-static {p1, v1, v4, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

    invoke-virtual {p0, v1, v4, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->g(I)I

    move-result v0

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v5, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v4, v5

    invoke-static {p1, v1, v3, v4}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l(I)V

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l(I)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-static {p1, v0, v1, v3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :goto_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I
    :try_end_1
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    throw v0
    :try_end_2
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_1
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

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    return-void

    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :goto_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    invoke-virtual {p1, v1, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    invoke-virtual {p1, v1, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    return-void
.end method

.method public final a([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->d:I

    return-void
.end method

.method public final b(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    const/4 v1, 0x5

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l(I)V

    return-void

    :cond_1
    int-to-long v1, p1

    const/16 p1, 0xa

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v3, v4

    if-ge v3, p1, :cond_2

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {p1, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->f(J)V

    return-void
.end method

.method public final b(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-static {p1, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->l(I)V

    if-ltz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->l(I)V

    return-void

    :cond_1
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->f(J)V

    return-void
.end method

.method public final b(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->l(I)V

    invoke-virtual {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->g(J)V

    return-void
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->j(II)V

    invoke-virtual {p0, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

    invoke-virtual {p2, p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    return-void
.end method

.method public final b(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    const/4 v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->j(II)V

    invoke-virtual {p0, v1, v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c(I)V

    invoke-interface {p2, p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->writeTo(Lcom/uqm/crashsight/protobuf/CodedOutputStream;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a(II)V

    return-void
.end method

.method public final b(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->g(J)V

    return-void
.end method

.method public final b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a([BII)V

    return-void
.end method

.method public final c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l(I)V

    return-void
.end method

.method public final c(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;->l(I)V

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->m(I)V

    return-void
.end method

.method public final c([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ge p2, v1, :cond_0

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    invoke-virtual {p2, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->l(I)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a([BII)V

    return-void
.end method

.method public final d(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->m(I)V

    return-void
.end method

.method public final h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->a:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;->c:I

    :cond_0
    return-void
.end method
