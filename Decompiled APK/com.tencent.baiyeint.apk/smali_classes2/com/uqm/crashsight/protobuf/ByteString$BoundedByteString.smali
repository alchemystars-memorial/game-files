.class final Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;
.super Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundedByteString"
.end annotation


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->c(III)I

    iput p2, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->c:I

    iput p3, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->d:I

    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->b(II)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->b:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->c:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method final b(I)B
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->b:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->c:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->d:I

    return v0
.end method

.method protected final b([BIII)V
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->b:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->c:I

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final j()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;->c:I

    return v0
.end method
