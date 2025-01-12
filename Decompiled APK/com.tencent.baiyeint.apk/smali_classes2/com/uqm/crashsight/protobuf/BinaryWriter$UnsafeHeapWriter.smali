.class final Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;
.super Lcom/uqm/crashsight/protobuf/BinaryWriter;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeHeapWriter"
.end annotation


# instance fields
.field private c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

.field private d:[B

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method private a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V
    .locals 4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c()V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d:[B

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->g()I

    move-result v1

    add-int/2addr v1, v0

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->f:J

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->f()I

    move-result p1

    add-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->e:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->g:J

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->h:J

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-heap buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->g:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    :cond_0
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a([BII)V
    .locals 5

    const/4 v0, 0x1

    if-ltz p2, :cond_1

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_1

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->g:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-ge v1, p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    :cond_0
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d:[B

    long-to-int v1, v1

    add-int/2addr v1, v0

    invoke-static {p1, p2, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "value.length=%d, offset=%d, length=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b([BII)V
    .locals 5

    const/4 v0, 0x1

    if-ltz p2, :cond_1

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_1

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->g:J

    sub-long v3, v1, v3

    long-to-int v3, v3

    if-ge v3, p3, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a([BII)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void

    :cond_0
    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->d:[B

    long-to-int v1, v1

    add-int/2addr v1, v0

    invoke-static {p1, p2, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "value.length=%d, offset=%d, length=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final c()V
    .locals 5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->h:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->b:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    long-to-int v1, v1

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->e()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->c:Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->i:J

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;->h:J

    :cond_0
    return-void
.end method
