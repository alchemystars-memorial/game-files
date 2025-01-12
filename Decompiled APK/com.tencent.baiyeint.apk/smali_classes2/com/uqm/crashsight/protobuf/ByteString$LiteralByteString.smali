.class Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;
.super Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiteralByteString"
.end annotation


# instance fields
.field protected final b:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected final a(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    add-int/2addr p3, v0

    invoke-static {p1, p2, v0, p3}, Lcom/uqm/crashsight/protobuf/Utf8;->a(I[BII)I

    move-result p1

    return p1
.end method

.method public final a(II)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->c(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p1

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method

.method protected final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result v2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/uqm/crashsight/protobuf/ByteOutput;->b([BII)V

    return-void
.end method

.method final a(Lcom/uqm/crashsight/protobuf/ByteString;II)Z
    .locals 5

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-gt p3, v0, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    if-gt v0, v1, :cond_3

    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    iget-object v1, p1, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result p3

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v3, :cond_1

    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(II)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->a(II)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ran off end of other: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Length too large: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(I)B
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    array-length v0, v0

    return v0
.end method

.method protected final b(III)I
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/uqm/crashsight/protobuf/Internal;->a(I[BII)I

    move-result p1

    return p1
.end method

.method protected b([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final d()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->i()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->a(Lcom/uqm/crashsight/protobuf/ByteString;II)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result v0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/uqm/crashsight/protobuf/Utf8;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final g()Lcom/uqm/crashsight/protobuf/CodedInputStream;
    .locals 4

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b:[B

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->j()I

    move-result v1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;->b()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a([BIIZ)Lcom/uqm/crashsight/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method protected j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
