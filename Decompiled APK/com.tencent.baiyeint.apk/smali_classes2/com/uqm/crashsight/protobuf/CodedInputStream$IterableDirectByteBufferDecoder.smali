.class final Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;
.super Lcom/uqm/crashsight/protobuf/CodedInputStream;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IterableDirectByteBufferDecoder"
.end annotation


# instance fields
.field private e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/nio/ByteBuffer;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:J

.field private n:J

.field private o:J


# direct methods
.method private A()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->n:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    return-void

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private B()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v8, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

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
    iput-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    return-wide v0

    :cond_9
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method private C()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x4

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x1

    if-ltz v4, :cond_0

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-long/2addr v8, v2

    invoke-static {v8, v9}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const-wide/16 v4, 0x2

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    :goto_0
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_0
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_1
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v4, v0, v8

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_2
    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v6, v4, v8

    iput-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_3
    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v6, v4, v8

    iput-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_4
    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v8, v1

    iput-wide v8, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    goto :goto_0
.end method

.method private D()J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v3, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long v5, v1, v3

    const-wide/16 v7, 0x8

    cmp-long v5, v5, v7

    const/16 v6, 0x38

    const/16 v9, 0x30

    const/16 v10, 0x28

    const/16 v11, 0x20

    const/16 v12, 0x18

    const/16 v13, 0x10

    const/16 v14, 0x8

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0xff

    if-ltz v5, :cond_0

    add-long/2addr v7, v3

    iput-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v17

    add-long/2addr v15, v3

    invoke-static/range {v15 .. v16}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    int-to-long v7, v5

    and-long v7, v7, v17

    shl-long/2addr v7, v14

    or-long/2addr v1, v7

    const-wide/16 v7, 0x2

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    int-to-long v7, v5

    and-long v7, v7, v17

    shl-long/2addr v7, v13

    or-long/2addr v1, v7

    const-wide/16 v7, 0x3

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    int-to-long v7, v5

    and-long v7, v7, v17

    shl-long/2addr v7, v12

    or-long/2addr v1, v7

    const-wide/16 v7, 0x4

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    int-to-long v7, v5

    and-long v7, v7, v17

    shl-long/2addr v7, v11

    or-long/2addr v1, v7

    const-wide/16 v7, 0x5

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    int-to-long v7, v5

    and-long v7, v7, v17

    shl-long/2addr v7, v10

    or-long/2addr v1, v7

    const-wide/16 v7, 0x6

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    int-to-long v7, v5

    and-long v7, v7, v17

    shl-long/2addr v7, v9

    or-long/2addr v1, v7

    const-wide/16 v7, 0x7

    add-long/2addr v3, v7

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    :goto_0
    int-to-long v3, v3

    and-long v3, v3, v17

    shl-long/2addr v3, v6

    or-long/2addr v1, v3

    return-wide v1

    :cond_0
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_1
    iget-wide v1, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v7, v1, v15

    iput-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v17

    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v7, v9

    cmp-long v7, v7, v3

    if-nez v7, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_2
    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v9, v7, v15

    iput-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long v7, v7, v17

    shl-long/2addr v7, v14

    or-long/2addr v1, v7

    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v7, v9

    cmp-long v7, v7, v3

    if-nez v7, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_3
    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v9, v7, v15

    iput-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long v7, v7, v17

    shl-long/2addr v7, v13

    or-long/2addr v1, v7

    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v7, v9

    cmp-long v7, v7, v3

    if-nez v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_4
    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v9, v7, v15

    iput-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long v7, v7, v17

    shl-long/2addr v7, v12

    or-long/2addr v1, v7

    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v7, v9

    cmp-long v7, v7, v3

    if-nez v7, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_5
    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v9, v7, v15

    iput-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long v7, v7, v17

    shl-long/2addr v7, v11

    or-long/2addr v1, v7

    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v7, v9

    cmp-long v7, v7, v3

    if-nez v7, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_6
    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v9, v7, v15

    iput-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v7

    int-to-long v7, v7

    and-long v7, v7, v17

    const/16 v5, 0x28

    shl-long/2addr v7, v5

    or-long/2addr v1, v7

    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v7, v9

    cmp-long v5, v7, v3

    if-nez v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_7
    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v9, v7, v15

    iput-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    int-to-long v7, v5

    and-long v7, v7, v17

    const/16 v5, 0x30

    shl-long/2addr v7, v5

    or-long/2addr v1, v7

    iget-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v9, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v7, v9

    cmp-long v3, v7, v3

    if-nez v3, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_8
    iget-wide v3, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long v7, v3, v15

    iput-wide v7, v0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v3

    goto/16 :goto_0
.end method

.method private E()V
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->h:I

    return-void
.end method

.method private b([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_2

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    sub-int/2addr p2, v0

    int-to-long v0, p2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    if-gt p3, p2, :cond_2

    move p2, p3

    :goto_0
    if-lez p2, :cond_1

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-int v3, p3, p2

    int-to-long v4, v3

    int-to-long v8, v0

    move-object v3, p1

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    sub-int/2addr p2, v0

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gtz p3, :cond_4

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private f(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    int-to-long v0, p1

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    iget v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :goto_0
    if-lez p1, :cond_1

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_0
    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gez p1, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_3
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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->c(I)I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/Parser;->parsePartialFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->E()V

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    invoke-interface {p2, p0, p3}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    iget p2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->c(I)I

    move-result v0

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    invoke-interface {p1, p0, p2}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/CodedInputStream;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a:I

    iput v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->E()V

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 7
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

    invoke-direct {p0, v4}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f(I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->a()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->b(I)I

    move-result p1

    invoke-static {p1, v4}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->j:I

    if-ne v0, p1, :cond_4

    return v2

    :cond_4
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->f()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_5
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f(I)V

    return v2

    :cond_6
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f(I)V

    return v2

    :cond_7
    :goto_0
    const/16 p1, 0xa

    if-ge v1, p1, :cond_a

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_8
    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return v2

    :cond_a
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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->C()I

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->E()V

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->E()V

    return-void
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->B()J

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->D()J

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->C()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->B()J

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v8, v0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v1, v3

    cmp-long v1, v8, v1

    if-gtz v1, :cond_0

    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    return-object v1

    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    if-gt v0, v1, :cond_1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b([BII)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    sub-long/2addr v5, v3

    long-to-int v3, v5

    iget-object v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->f:Ljava/nio/ByteBuffer;

    invoke-static {v4, v3, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    return-object v0

    :cond_0
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    if-gt v0, v1, :cond_1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b([BII)V

    invoke-static {v1, v2, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->b([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gtz v0, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->b()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final l()Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v8, v0

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v1, v3

    cmp-long v1, v8, v1

    if-gtz v1, :cond_0

    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v1, v3

    move-object v3, v0

    move-wide v4, v5

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J[BJJ)V

    iget-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v1, v8

    iput-wide v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    if-gt v0, v1, :cond_1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->b([BII)V

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->c()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3
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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->C()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->D()J

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

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->s()I

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

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->B()J

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

    iget-wide v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    return v0

    :cond_0
    iget-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v8, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

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
    iput-wide v6, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->t()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method final t()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    const/16 v5, 0x40

    if-ge v2, v5, :cond_2

    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->o:J

    iget-wide v7, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    sub-long/2addr v5, v7

    cmp-long v5, v5, v0

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->A()V

    :cond_0
    iget-wide v5, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v5

    and-int/lit8 v6, v5, 0x7f

    int-to-long v6, v6

    shl-long/2addr v6, v2

    or-long/2addr v3, v6

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_1

    return-wide v3

    :cond_1
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->d()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final x()I
    .locals 5

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->g:I

    int-to-long v2, v2

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

    iget v0, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->k:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->l:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/uqm/crashsight/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;->m:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
