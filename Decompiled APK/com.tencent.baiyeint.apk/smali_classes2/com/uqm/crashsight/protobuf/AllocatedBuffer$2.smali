.class final Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;
.super Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:I

.field private synthetic b:[B

.field private synthetic c:I

.field private synthetic d:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;->b:[B

    iput p2, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;->c:I

    iput p3, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;->d:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;->d:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;->a:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;->b:[B

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;->c:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;->a:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;->d:I

    return v0
.end method
