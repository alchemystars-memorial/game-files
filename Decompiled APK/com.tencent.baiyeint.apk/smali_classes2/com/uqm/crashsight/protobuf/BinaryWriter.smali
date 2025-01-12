.class abstract Lcom/uqm/crashsight/protobuf/BinaryWriter;
.super Lcom/uqm/crashsight/protobuf/ByteOutput;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeDirectWriter;,
        Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeDirectWriter;,
        Lcom/uqm/crashsight/protobuf/BinaryWriter$UnsafeHeapWriter;,
        Lcom/uqm/crashsight/protobuf/BinaryWriter$SafeHeapWriter;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/uqm/crashsight/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field private final c:Lcom/uqm/crashsight/protobuf/BufferAllocator;

.field private final d:I


# virtual methods
.method final a()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter;->c:Lcom/uqm/crashsight/protobuf/BufferAllocator;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter;->d:I

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/BufferAllocator;->a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter;->c:Lcom/uqm/crashsight/protobuf/BufferAllocator;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter;->d:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/BufferAllocator;->a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    return-object p1
.end method

.method final b()Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter;->c:Lcom/uqm/crashsight/protobuf/BufferAllocator;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter;->d:I

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/protobuf/BufferAllocator;->b(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method final b(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter;->c:Lcom/uqm/crashsight/protobuf/BufferAllocator;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/BinaryWriter;->d:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/BufferAllocator;->b(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    return-object p1
.end method

.method abstract c()V
.end method
