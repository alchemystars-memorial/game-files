.class final Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;
.super Lcom/uqm/crashsight/protobuf/Utf8$Processor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method private static a(JI)I
    .locals 17

    move-wide/from16 v0, p0

    move/from16 v2, p2

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const/16 v6, 0x10

    if-ge v2, v6, :cond_0

    move v6, v3

    goto :goto_2

    :cond_0
    long-to-int v6, v0

    and-int/lit8 v6, v6, 0x7

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move-wide v9, v0

    move v8, v6

    :goto_0
    if-lez v8, :cond_2

    add-long v11, v9, v4

    invoke-static {v9, v10}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v9

    if-gez v9, :cond_1

    sub-int/2addr v6, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, -0x1

    move-wide v9, v11

    goto :goto_0

    :cond_2
    sub-int v6, v2, v6

    :goto_1
    if-lt v6, v7, :cond_3

    invoke-static {v9, v10}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b(J)J

    move-result-wide v11

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-nez v8, :cond_3

    const-wide/16 v11, 0x8

    add-long/2addr v9, v11

    add-int/lit8 v6, v6, -0x8

    goto :goto_1

    :cond_3
    sub-int v6, v2, v6

    :goto_2
    int-to-long v7, v6

    add-long/2addr v0, v7

    sub-int/2addr v2, v6

    :cond_4
    :goto_3
    move v6, v3

    :goto_4
    if-lez v2, :cond_6

    add-long v6, v0, v4

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-ltz v0, :cond_5

    add-int/lit8 v2, v2, -0x1

    move-wide v15, v6

    move v6, v0

    move-wide v0, v15

    goto :goto_4

    :cond_5
    move-wide v15, v6

    move v6, v0

    move-wide v0, v15

    :cond_6
    if-nez v2, :cond_7

    return v3

    :cond_7
    add-int/lit8 v2, v2, -0x1

    const/16 v7, -0x20

    const/16 v8, -0x41

    const/4 v9, -0x1

    if-ge v6, v7, :cond_b

    if-nez v2, :cond_8

    return v6

    :cond_8
    add-int/lit8 v2, v2, -0x1

    const/16 v7, -0x3e

    if-lt v6, v7, :cond_a

    add-long v6, v0, v4

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-le v0, v8, :cond_9

    goto :goto_5

    :cond_9
    move-wide v0, v6

    goto :goto_3

    :cond_a
    :goto_5
    return v9

    :cond_b
    const/16 v10, -0x10

    if-ge v6, v10, :cond_10

    const/4 v10, 0x2

    if-ge v2, v10, :cond_c

    invoke-static {v0, v1, v6, v2}, Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;->a(JII)I

    move-result v0

    return v0

    :cond_c
    add-int/lit8 v2, v2, -0x2

    add-long v10, v0, v4

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-gt v0, v8, :cond_f

    const/16 v1, -0x60

    if-ne v6, v7, :cond_d

    if-lt v0, v1, :cond_f

    :cond_d
    const/16 v7, -0x13

    if-ne v6, v7, :cond_e

    if-ge v0, v1, :cond_f

    :cond_e
    add-long v0, v10, v4

    invoke-static {v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    if-le v6, v8, :cond_4

    :cond_f
    return v9

    :cond_10
    const/4 v7, 0x3

    if-ge v2, v7, :cond_11

    invoke-static {v0, v1, v6, v2}, Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;->a(JII)I

    move-result v0

    return v0

    :cond_11
    add-int/lit8 v2, v2, -0x3

    add-long v10, v0, v4

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-gt v0, v8, :cond_12

    shl-int/lit8 v1, v6, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_12

    add-long v0, v10, v4

    invoke-static {v10, v11}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    if-gt v6, v8, :cond_12

    add-long v6, v0, v4

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    if-le v0, v8, :cond_9

    :cond_12
    return v9
.end method

.method private static a(JII)I
    .locals 2

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p3

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p0

    invoke-static {p2, p3, p0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p0

    invoke-static {p2, p0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Utf8;->a(I)I

    move-result p0

    return p0
.end method

.method private static a([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(I)I

    move-result p0

    return p0
.end method

.method private static a([BJI)I
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    const/16 v3, 0x10

    if-ge p3, v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    move-wide v4, p1

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_2

    add-long v6, v4, v1

    invoke-static {p0, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v6

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_1
    sub-int/2addr p3, v3

    int-to-long v3, v3

    add-long/2addr p1, v3

    :cond_3
    :goto_2
    move v3, v0

    :goto_3
    if-lez p3, :cond_5

    add-long v3, p1, v1

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p1

    if-ltz p1, :cond_4

    add-int/lit8 p3, p3, -0x1

    move-wide v9, v3

    move v3, p1

    move-wide p1, v9

    goto :goto_3

    :cond_4
    move-wide v9, v3

    move v3, p1

    move-wide p1, v9

    :cond_5
    if-nez p3, :cond_6

    return v0

    :cond_6
    add-int/lit8 p3, p3, -0x1

    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v3, v4, :cond_a

    if-nez p3, :cond_7

    return v3

    :cond_7
    add-int/lit8 p3, p3, -0x1

    const/16 v4, -0x3e

    if-lt v3, v4, :cond_9

    add-long v3, p1, v1

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p1

    if-le p1, v5, :cond_8

    goto :goto_4

    :cond_8
    move-wide p1, v3

    goto :goto_2

    :cond_9
    :goto_4
    return v6

    :cond_a
    const/16 v7, -0x10

    if-ge v3, v7, :cond_f

    const/4 v7, 0x2

    if-ge p3, v7, :cond_b

    invoke-static {p0, v3, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;->a([BIJI)I

    move-result p0

    return p0

    :cond_b
    add-int/lit8 p3, p3, -0x2

    add-long v7, p1, v1

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p1

    if-gt p1, v5, :cond_e

    const/16 p2, -0x60

    if-ne v3, v4, :cond_c

    if-lt p1, p2, :cond_e

    :cond_c
    const/16 v4, -0x13

    if-ne v3, v4, :cond_d

    if-ge p1, p2, :cond_e

    :cond_d
    add-long p1, v7, v1

    invoke-static {p0, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v3

    if-le v3, v5, :cond_3

    :cond_e
    return v6

    :cond_f
    const/4 v4, 0x3

    if-ge p3, v4, :cond_10

    invoke-static {p0, v3, p1, p2, p3}, Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;->a([BIJI)I

    move-result p0

    return p0

    :cond_10
    add-int/lit8 p3, p3, -0x3

    add-long v7, p1, v1

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p1

    if-gt p1, v5, :cond_11

    shl-int/lit8 p2, v3, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1e

    if-nez p1, :cond_11

    add-long p1, v7, v1

    invoke-static {p0, v7, v8}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v3

    if-gt v3, v5, :cond_11

    add-long v3, p1, v1

    invoke-static {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p1

    if-le p1, v5, :cond_8

    :cond_11
    return v6
.end method

.method static a()Z
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a(I[BII)I
    .locals 11

    or-int v0, p3, p4

    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_11

    int-to-long v2, p3

    int-to-long p3, p4

    if-eqz p1, :cond_10

    cmp-long v0, v2, p3

    if-ltz v0, :cond_0

    return p1

    :cond_0
    int-to-byte v0, p1

    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    const-wide/16 v7, 0x1

    if-ge v0, v4, :cond_3

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2

    add-long/2addr v7, v2

    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p1

    if-le p1, v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v7

    goto/16 :goto_3

    :cond_2
    :goto_0
    return v5

    :cond_3
    const/16 v9, -0x10

    if-ge v0, v9, :cond_a

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-long v9, v2, v7

    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p1

    cmp-long v1, v9, p3

    if-ltz v1, :cond_4

    invoke-static {v0, p1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(II)I

    move-result p1

    return p1

    :cond_4
    move-wide v2, v9

    :cond_5
    if-gt p1, v6, :cond_9

    const/16 v1, -0x60

    if-ne v0, v4, :cond_6

    if-lt p1, v1, :cond_9

    :cond_6
    const/16 v4, -0x13

    if-ne v0, v4, :cond_7

    if-ge p1, v1, :cond_9

    :cond_7
    add-long v0, v2, v7

    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p1

    if-le p1, v6, :cond_8

    goto :goto_1

    :cond_8
    move-wide v2, v0

    goto :goto_3

    :cond_9
    :goto_1
    return v5

    :cond_a
    shr-int/lit8 v4, p1, 0x8

    not-int v4, v4

    int-to-byte v4, v4

    if-nez v4, :cond_c

    add-long v9, v2, v7

    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v4

    cmp-long p1, v9, p3

    if-ltz p1, :cond_b

    invoke-static {v0, v4}, Lcom/uqm/crashsight/protobuf/Utf8;->a(II)I

    move-result p1

    return p1

    :cond_b
    move-wide v2, v9

    goto :goto_2

    :cond_c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_2
    if-nez v1, :cond_e

    add-long v9, v2, v7

    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v1

    cmp-long p1, v9, p3

    if-ltz p1, :cond_d

    invoke-static {v0, v4, v1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(III)I

    move-result p1

    return p1

    :cond_d
    move-wide v2, v9

    :cond_e
    if-gt v4, v6, :cond_f

    shl-int/lit8 p1, v0, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_f

    if-gt v1, v6, :cond_f

    add-long v0, v2, v7

    invoke-static {p2, v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p1

    if-le p1, v6, :cond_8

    :cond_f
    return v5

    :cond_10
    :goto_3
    sub-long/2addr p3, v2

    long-to-int p1, p3

    invoke-static {p2, v2, v3, p1}, Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;->a([BJI)I

    move-result p1

    return p1

    :cond_11
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/lang/CharSequence;[BII)I
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    move v11, v3

    goto/16 :goto_2

    :cond_2
    const/16 v14, 0x800

    if-ge v13, v14, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_3

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    move-wide/from16 v19, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v19

    goto/16 :goto_2

    :cond_3
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v15, v4, v15

    if-gtz v15, :cond_5

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    const-wide/16 v14, 0x1

    add-long v17, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    move-wide/from16 v12, v17

    const-wide/16 v4, 0x1

    const/16 v11, 0x80

    goto :goto_2

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v11, v4, v11

    if-gtz v11, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-static {v1, v4, v5, v15}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v1, v13, v14, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    invoke-static {v1, v14, v15, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJB)V

    move v2, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v11

    move-wide/from16 v19, v4

    move-wide v4, v12

    move-wide/from16 v11, v19

    goto/16 :goto_1

    :cond_6
    move v2, v3

    :cond_7
    new-instance v0, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_8
    if-gt v14, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8}, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    int-to-long v7, v0

    add-long/2addr v5, v7

    int-to-long v7, v1

    add-long/2addr v7, v5

    new-array v0, v1, [C

    move v1, v3

    :goto_0
    cmp-long v2, v5, v7

    const-wide/16 v15, 0x1

    if-gez v2, :cond_0

    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B)Z

    move-result v9

    if-eqz v9, :cond_0

    add-long/2addr v5, v15

    add-int/lit8 v9, v1, 0x1

    invoke-static {v2, v0, v1}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B[CI)V

    move v1, v9

    goto :goto_0

    :cond_0
    :goto_1
    move v14, v1

    :goto_2
    cmp-long v1, v5, v7

    if-gez v1, :cond_8

    add-long v1, v5, v15

    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v9

    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v14, 0x1

    invoke-static {v9, v0, v14}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B[CI)V

    :goto_3
    cmp-long v6, v1, v7

    if-gez v6, :cond_1

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v6

    invoke-static {v6}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B)Z

    move-result v9

    if-eqz v9, :cond_1

    add-long/2addr v1, v15

    add-int/lit8 v9, v5, 0x1

    invoke-static {v6, v0, v5}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B[CI)V

    move v5, v9

    goto :goto_3

    :cond_1
    move v14, v5

    move-wide v5, v1

    goto :goto_2

    :cond_2
    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->b(B)Z

    move-result v5

    if-eqz v5, :cond_4

    cmp-long v5, v1, v7

    if-gez v5, :cond_3

    add-long v5, v1, v15

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    add-int/lit8 v2, v14, 0x1

    invoke-static {v9, v1, v0, v14}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(BB[CI)V

    move v14, v2

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {v9}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->c(B)Z

    move-result v5

    if-eqz v5, :cond_6

    sub-long v5, v7, v15

    cmp-long v5, v1, v5

    if-gez v5, :cond_5

    add-long v5, v1, v15

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    add-long v10, v5, v15

    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v2

    add-int/lit8 v5, v14, 0x1

    invoke-static {v9, v1, v2, v0, v14}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(BBB[CI)V

    move v14, v5

    move-wide v5, v10

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_6
    const-wide/16 v5, 0x2

    sub-long v5, v7, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_7

    add-long v5, v1, v15

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v10

    add-long v1, v5, v15

    invoke-static {v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v11

    add-long v5, v1, v15

    invoke-static {v1, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v12

    add-int/lit8 v1, v14, 0x1

    move-object v13, v0

    invoke-static/range {v9 .. v14}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(BBBB[CI)V

    add-int/2addr v1, v4

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v14}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_9
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final a([BII)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_9

    add-int v0, p2, p3

    new-array p3, p3, [C

    move v3, v1

    :goto_0
    if-ge p2, v0, :cond_0

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v4

    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, p3, v3}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B[CI)V

    move v3, v5

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_1
    if-ge p2, v0, :cond_8

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p2

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v8, 0x1

    invoke-static {p2, p3, v8}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B[CI)V

    :goto_2
    if-ge v3, v0, :cond_1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result p2

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    invoke-static {p2, p3, v4}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(B[CI)V

    move v4, v5

    goto :goto_2

    :cond_1
    move p2, v3

    move v8, v4

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->b(B)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p2, v3, p3, v8}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->c(B)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p2, v3, v4, p3, v8}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_7

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    int-to-long v6, v4

    invoke-static {p1, v6, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a([BJ)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/uqm/crashsight/protobuf/Utf8$DecodeUtil;->a(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->k()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    const-string v10, " at index "

    const-string v11, "Failed writing "

    if-gtz v9, :cond_c

    const/4 v9, 0x0

    :goto_0
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v9, v8, :cond_0

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_0

    add-long v12, v4, v13

    int-to-byte v14, v15

    invoke-static {v4, v5, v14}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide v4, v12

    goto :goto_0

    :cond_0
    if-ne v9, v8, :cond_1

    sub-long/2addr v4, v2

    long-to-int v0, v4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    :goto_1
    if-ge v9, v8, :cond_b

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_2

    cmp-long v16, v4, v6

    if-gez v16, :cond_2

    add-long v16, v4, v13

    int-to-byte v15, v15

    invoke-static {v4, v5, v15}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    move-wide/from16 v19, v6

    move v1, v9

    move v9, v12

    move-wide/from16 v4, v16

    move-wide/from16 v17, v2

    goto/16 :goto_3

    :cond_2
    const/16 v12, 0x800

    if-ge v15, v12, :cond_3

    const-wide/16 v17, 0x2

    sub-long v17, v6, v17

    cmp-long v12, v4, v17

    if-gtz v12, :cond_3

    move-wide/from16 v17, v2

    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    add-long v3, v1, v13

    and-int/lit8 v5, v15, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    move-wide v4, v3

    :goto_2
    move-wide/from16 v19, v6

    move v1, v9

    const/16 v9, 0x80

    goto/16 :goto_3

    :cond_3
    move-wide/from16 v17, v2

    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_4

    if-ge v1, v15, :cond_5

    :cond_4
    const-wide/16 v19, 0x3

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_5

    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    add-long v3, v1, v13

    ushr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    add-long v1, v3, v13

    and-int/lit8 v5, v15, 0x3f

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    move-wide v4, v1

    goto :goto_2

    :cond_5
    const-wide/16 v19, 0x4

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_8

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_7

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move-wide/from16 v19, v6

    add-long v6, v4, v13

    ushr-int/lit8 v3, v2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    add-long v3, v6, v13

    ushr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    const/16 v9, 0x80

    or-int/2addr v5, v9

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    add-long v5, v3, v13

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v9

    int-to-byte v7, v7

    invoke-static {v3, v4, v7}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    add-long v3, v5, v13

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v9

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(JB)V

    move-wide v4, v3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v12, v9

    move-wide/from16 v2, v17

    move-wide/from16 v6, v19

    move v9, v1

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_6
    move v9, v1

    :cond_7
    new-instance v0, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8}, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_8
    if-gt v2, v15, :cond_a

    if-gt v15, v1, :cond_a

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v9, v8}, Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-wide/from16 v17, v2

    sub-long v4, v4, v17

    long-to-int v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final b(ILjava/nio/ByteBuffer;II)I
    .locals 10

    or-int v0, p3, p4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_11

    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    sub-int/2addr p4, p3

    int-to-long p2, p4

    add-long/2addr p2, v2

    if-eqz p1, :cond_10

    cmp-long p4, v2, p2

    if-ltz p4, :cond_0

    return p1

    :cond_0
    int-to-byte p4, p1

    const/16 v0, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    const-wide/16 v6, 0x1

    if-ge p4, v0, :cond_3

    const/16 p1, -0x3e

    if-lt p4, p1, :cond_2

    add-long/2addr v6, v2

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p1

    if-le p1, v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v6

    goto/16 :goto_3

    :cond_2
    :goto_0
    return v4

    :cond_3
    const/16 v8, -0x10

    if-ge p4, v8, :cond_a

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-long v8, v2, v6

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p1

    cmp-long v1, v8, p2

    if-ltz v1, :cond_4

    invoke-static {p4, p1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(II)I

    move-result p1

    return p1

    :cond_4
    move-wide v2, v8

    :cond_5
    if-gt p1, v5, :cond_9

    const/16 v1, -0x60

    if-ne p4, v0, :cond_6

    if-lt p1, v1, :cond_9

    :cond_6
    const/16 v0, -0x13

    if-ne p4, v0, :cond_7

    if-ge p1, v1, :cond_9

    :cond_7
    add-long v0, v2, v6

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p1

    if-le p1, v5, :cond_8

    goto :goto_1

    :cond_8
    move-wide v2, v0

    goto :goto_3

    :cond_9
    :goto_1
    return v4

    :cond_a
    shr-int/lit8 v0, p1, 0x8

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_c

    add-long v8, v2, v6

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v0

    cmp-long p1, v8, p2

    if-ltz p1, :cond_b

    invoke-static {p4, v0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(II)I

    move-result p1

    return p1

    :cond_b
    move-wide v2, v8

    goto :goto_2

    :cond_c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_2
    if-nez v1, :cond_e

    add-long v8, v2, v6

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result v1

    cmp-long p1, v8, p2

    if-ltz p1, :cond_d

    invoke-static {p4, v0, v1}, Lcom/uqm/crashsight/protobuf/Utf8;->a(III)I

    move-result p1

    return p1

    :cond_d
    move-wide v2, v8

    :cond_e
    if-gt v0, v5, :cond_f

    shl-int/lit8 p1, p4, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_f

    if-gt v1, v5, :cond_f

    add-long v0, v2, v6

    invoke-static {v2, v3}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(J)B

    move-result p1

    if-le p1, v5, :cond_8

    :cond_f
    return v4

    :cond_10
    :goto_3
    sub-long/2addr p2, v2

    long-to-int p1, p2

    invoke-static {v2, v3, p1}, Lcom/uqm/crashsight/protobuf/Utf8$UnsafeProcessor;->a(JI)I

    move-result p1

    return p1

    :cond_11
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
