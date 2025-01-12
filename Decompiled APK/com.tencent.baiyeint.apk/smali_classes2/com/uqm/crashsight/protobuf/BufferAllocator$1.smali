.class final Lcom/uqm/crashsight/protobuf/BufferAllocator$1;
.super Lcom/uqm/crashsight/protobuf/BufferAllocator;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/BufferAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/BufferAllocator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 0

    new-array p1, p1, [B

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a([B)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;

    move-result-object p1

    return-object p1
.end method
