.class final Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;
.super Lcom/uqm/crashsight/protobuf/BinaryWriter;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeDirectWriter"
.end annotation


# instance fields
.field private c:Ljava/nio/ByteBuffer;

.field private d:I

.field private e:I


# direct methods
.method private a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c()V

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->d:I

    iput p1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

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
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    add-int/lit8 v2, v1, 0x1

    if-ge v2, v0, :cond_0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->b:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->b()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void

    :cond_0
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a([BII)V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->b(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final b([BII)V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->b:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->a:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a([BII)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->b()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->a(Lcom/uqm/crashsight/protobuf/AllocatedBuffer;)V

    return-void

    :cond_0
    sub-int/2addr v0, p3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method final c()V
    .locals 3

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->b:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->d:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->b:I

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->c:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->e:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;->d:I

    :cond_0
    return-void
.end method
