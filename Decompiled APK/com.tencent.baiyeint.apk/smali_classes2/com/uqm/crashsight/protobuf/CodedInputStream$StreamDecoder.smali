.class final Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;
.super Lcom/uqm/crashsight/protobuf/CodedInputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$RefillCallback;,
        Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    }
.end annotation


# instance fields
.field private final e:Ljava/io/InputStream;

.field private final f:[B

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$RefillCallback;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;-><init>(B)V

    const v1, 0x7fffffff

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->m:Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    const-string v1, "input"

    invoke-static {p1, v1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->e:Ljava/io/InputStream;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private A()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    if-eq v1, v0, :cond_9

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    move-wide v2, v3

    :goto_4
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    return-wide v2

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method private B()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f(I)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private C()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f(I)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    :cond_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private D()V
    .locals 3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->h:I

    return-void
.end method

.method private E()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f(I)V

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    aget-byte v0, v0, v1

    return v0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;)I
    .locals 0

    iget p0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    return p0
.end method

.method private a(IZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->h(I)[B

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int v1, v0, p2

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int v2, p1, v1

    invoke-direct {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i(I)Ljava/util/List;

    move-result-object v2

    new-array p1, p1, [B

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;)[B
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    return-object p0
.end method

.method private f(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->i()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method private g(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->c:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-le p1, v0, :cond_1

    return v3

    :cond_1
    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    if-le v1, v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->m:Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$RefillCallback;->a()V

    :cond_3
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    if-lez v0, :cond_5

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    if-le v1, v0, :cond_4

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    :cond_5
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->c:I

    iget v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, -0x1

    if-lt v0, v1, :cond_7

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    array-length v1, v1

    if-gt v0, v1, :cond_7

    if-lez v0, :cond_6

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->D()V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_6
    return v3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->e:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/uqm/crashsight/protobuf/Internal;->c:[B

    return-object p1

    :cond_0
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->c:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->e:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    new-array v1, p1, [B

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    iput v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iput v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    :goto_1
    if-ge v0, p1, :cond_4

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->e:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4
    return-object v1

    :cond_5
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sub-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j(I)V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->i()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private i(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p1, :cond_2

    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->e:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private j(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k(I)V

    return-void
.end method

.method private k(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    if-gt v2, v3, :cond_5

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->m:Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int/2addr v0, v1

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_1

    sub-int v0, p1, v3

    :try_start_0
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->e:Ljava/io/InputStream;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    if-eqz v2, :cond_1

    long-to-int v0, v0

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->e:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->D()V

    throw p1

    :cond_1
    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->D()V

    :cond_2
    if-ge v3, p1, :cond_4

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sub-int v1, v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f(I)V

    :goto_1
    sub-int v2, p1, v1

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    if-le v2, v3, :cond_3

    add-int/2addr v1, v3

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f(I)V

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    :cond_4
    return-void

    :cond_5
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j(I)V

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j:I

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->b:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->c(I)I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->D()V

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j:I

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->b:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    invoke-interface {p2, p0, p3}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->b:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->c(I)I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->D()V

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->C()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 5
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

    invoke-direct {p0, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j(I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result p1

    invoke-static {p1, v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j:I

    if-ne v0, p1, :cond_4

    return v2

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j(I)V

    return v2

    :cond_6
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->j(I)V

    return v2

    :cond_7
    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    :goto_0
    if-ge v1, v0, :cond_8

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_1
    if-ge v1, v0, :cond_b

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->E()B

    move-result p1

    if-gez p1, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return v2

    :cond_b
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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->D()V

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->D()V

    return-void
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->A()J

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->C()J

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->B()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->A()J

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    sget-object v4, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    if-gt v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sget-object v4, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a(IZ)[B

    move-result-object v0

    sget-object v2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final k()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int v3, v2, v1

    const/4 v4, 0x0

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    add-int v3, v1, v0

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gt v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f(I)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    add-int/lit8 v1, v0, 0x0

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->a(IZ)[B

    move-result-object v2

    :goto_0
    move v1, v4

    :goto_1
    invoke-static {v2, v1, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->b([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([BII)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->h(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_2
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int v3, v2, v1

    iget v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iput v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    sub-int v4, v0, v3

    invoke-direct {p0, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i(I)Ljava/util/List;

    move-result-object v4

    new-array v0, v0, [B

    iget-object v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->B()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->C()J

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->s()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->A()J

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    if-eq v1, v0, :cond_6

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->f:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    :cond_5
    :goto_0
    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->t()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method final t()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->E()B

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
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final x()I
    .locals 3

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->l:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final y()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->g(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->k:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$StreamDecoder;->i:I

    add-int/2addr v0, v1

    return v0
.end method
