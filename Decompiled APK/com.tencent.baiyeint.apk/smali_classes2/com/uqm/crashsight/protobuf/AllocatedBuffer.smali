.class abstract Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
.super Ljava/lang/Object;
.source "CrashSight"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 1

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$1;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static a([B)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 3

    array-length v0, p0

    new-instance v1, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;-><init>([BII)V

    return-object v1
.end method

.method public static a([BII)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
    .locals 3

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/AllocatedBuffer$2;-><init>([BII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "bytes.length=%d, offset=%d, length=%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a(I)Lcom/uqm/crashsight/protobuf/AllocatedBuffer;
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Ljava/nio/ByteBuffer;
.end method

.method public abstract d()[B
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method
