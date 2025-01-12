.class final Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;
.super Lcom/uqm/crashsight/protobuf/BinaryWriter;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectWriter"
.end annotation


# instance fields
.field private c:Ljava/nio/ByteBuffer;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method private a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V
    .locals 4

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c()V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d:J

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->e:J

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-direct buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocated buffer does not have NIO buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d:J

    sub-long v5, v1, v3

    long-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v0, :cond_0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void

    :cond_0
    int-to-long v5, v0

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    sub-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a([BII)V
    .locals 5

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final b([BII)V
    .locals 6

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d:J

    sub-long v4, v0, v2

    long-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, p3, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a([BII)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void

    :cond_0
    int-to-long v4, p3

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method final c()V
    .locals 5

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->e:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->b:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->d:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->f:J

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;->e:J

    :cond_0
    return-void
.end method
