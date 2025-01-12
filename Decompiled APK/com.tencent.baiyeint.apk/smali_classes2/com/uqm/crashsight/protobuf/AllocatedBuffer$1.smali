.class final Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;
.super Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/protobuf/AllocatedBuffer;->a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method
