.class public abstract Lcom/uqm/crashsight/protobuf/CodedInputStream;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;,
        Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;,
        Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;,
        Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcom/uqm/crashsight/protobuf/CodedInputStreamReader;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream;->b:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;-><init>()V

    return-void
.end method

.method public static a(ILjava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_5

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static a(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/uqm/crashsight/protobuf/CodedInputStream;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/uqm/crashsight/protobuf/Internal;->c:[B

    array-length v1, p0

    invoke-static {p0, v0, v1, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a([BIIZ)Lcom/uqm/crashsight/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;

    const/16 v2, 0x1000

    invoke-direct {v1, p0, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;IB)V

    return-object v1
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/uqm/crashsight/protobuf/CodedInputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a(Ljava/nio/ByteBuffer;Z)Lcom/uqm/crashsight/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/nio/ByteBuffer;Z)Lcom/uqm/crashsight/protobuf/CodedInputStream;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a([BIIZ)Lcom/uqm/crashsight/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;

    invoke-direct {v0, p0, p1, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;ZB)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array v0, p1, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    invoke-static {v0, v1, p1, p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a([BIIZ)Lcom/uqm/crashsight/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Lcom/uqm/crashsight/protobuf/CodedInputStream;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a([BIIZ)Lcom/uqm/crashsight/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Lcom/uqm/crashsight/protobuf/CodedInputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a([BIIZ)Lcom/uqm/crashsight/protobuf/CodedInputStream;

    move-result-object p0

    return-object p0
.end method

.method static a([BIIZ)Lcom/uqm/crashsight/protobuf/CodedInputStream;
    .locals 7

    new-instance v6, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZB)V

    :try_start_0
    invoke-virtual {v6, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$ArrayDecoder;->c(I)I
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static e(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract a()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/MessageLite;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Parser<",
            "TT;>;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract d()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(I)V
.end method

.method public abstract e()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract k()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l()Lcom/uqm/crashsight/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract p()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract q()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract t()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e:Z

    return-void
.end method

.method final v()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e:Z

    return-void
.end method

.method final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream;->e:Z

    return v0
.end method

.method public abstract x()I
.end method

.method public abstract y()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z()I
.end method
