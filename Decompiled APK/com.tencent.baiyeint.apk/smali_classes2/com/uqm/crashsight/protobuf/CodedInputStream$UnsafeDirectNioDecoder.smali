.class final Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
.super Lcom/uqm/crashsight/protobuf/CodedInputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioDecoder"
.end annotation


# instance fields
.field private final e:Ljava/nio/ByteBuffer;

.field private final f:Z

.field private final g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;-><init>(B)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->g:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->j:J

    iput-boolean p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method static A()Z
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b()Z

    move-result v0

    return v0
.end method

.method private B()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-ltz v0, :cond_0

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-ltz v1, :cond_9

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v0, v0

    goto/16 :goto_4

    :cond_1
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_2
    :goto_1
    move-wide v6, v4

    goto/16 :goto_4

    :cond_3
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    int-to-long v0, v0

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_5

    const-wide/32 v2, 0xfe03f80

    :goto_2
    xor-long/2addr v0, v2

    goto :goto_1

    :cond_5
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_6

    const-wide v2, -0x7f01fc080L

    :goto_3
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_4

    :cond_6
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_7

    const-wide v2, 0x3f80fe03f80L

    goto :goto_2

    :cond_7
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_3

    :cond_8
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    add-long/2addr v2, v4

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_9

    move-wide v6, v2

    :goto_4
    iput-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return-wide v0

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method private C()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private D()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private E()V
    .locals 4

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->j:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    if-le v2, v3, :cond_0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->k:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->k:I

    return-void
.end method

.method private f(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-gt p1, v0, :cond_0

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    return v0

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->e()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/Parser;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite;
    .locals 3
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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->b:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->c(I)I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->E()V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->h()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final a(ILcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->b:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    invoke-interface {p2, p0, p3}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->h()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->b:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->c(I)I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->E()V

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->h()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final b()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-direct {p0, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->f(I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->a()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result p1

    invoke-static {p1, v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->l:I

    if-ne v0, p1, :cond_4

    return v2

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->f(I)V

    return v2

    :cond_6
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->f(I)V

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    sub-long/2addr v3, v5

    long-to-int p1, v3

    const-wide/16 v3, 0x1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    :goto_0
    if-ge v1, v0, :cond_8

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    add-long v7, v5, v3

    iput-wide v7, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p1

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_1
    if-ge v1, v0, :cond_c

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v7, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    cmp-long p1, v5, v7

    if-eqz p1, :cond_b

    add-long v7, v5, v3

    iput-wide v7, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p1

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return v2

    :cond_b
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_c
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final c()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->E()V

    return v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final d()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->E()V

    return-void
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->C()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->B()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-gt v0, v1, :cond_0

    new-array v1, v0, [B

    const-wide/16 v6, 0x0

    int-to-long v10, v0

    move-object v5, v1

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-gt v0, v1, :cond_0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->g:J

    sub-long/2addr v3, v1

    long-to-int v1, v3

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->e:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gtz v0, :cond_2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final l()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    if-gt v0, v1, :cond_0

    new-array v1, v0, [B

    const-wide/16 v6, 0x0

    int-to-long v10, v0

    move-object v5, v1

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->C()I

    move-result v0

    return v0
.end method

.method public final p()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->s()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public final r()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->B()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public final s()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-ltz v0, :cond_0

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return v0

    :cond_0
    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-ltz v1, :cond_6

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move-wide v6, v4

    goto :goto_0

    :cond_3
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_4
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_2

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    if-gez v1, :cond_2

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    if-gez v1, :cond_5

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    if-gez v1, :cond_2

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    if-ltz v1, :cond_6

    :cond_5
    :goto_0
    iput-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->t()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method final t()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final x()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->m:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->j:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final y()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()I
    .locals 4

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->i:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
