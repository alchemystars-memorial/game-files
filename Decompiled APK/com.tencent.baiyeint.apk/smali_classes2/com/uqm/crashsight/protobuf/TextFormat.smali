.class public final Lcom/uqm/crashsight/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/uqm/crashsight/protobuf/TextFormat$Parser;,
        Lcom/uqm/crashsight/protobuf/TextFormat$UnknownFieldParseException;,
        Lcom/uqm/crashsight/protobuf/TextFormat$ParseException;,
        Lcom/uqm/crashsight/protobuf/TextFormat$Tokenizer;,
        Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;,
        Lcom/uqm/crashsight/protobuf/TextFormat$Printer;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/uqm/crashsight/protobuf/TextFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser;->a()Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/TextFormat$Parser$Builder;->a()Lcom/uqm/crashsight/protobuf/TextFormat$Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;ZZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "-"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number must be positive: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move v2, v1

    :goto_0
    const/16 v0, 0xa

    const-string v3, "0x"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v3, "0"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x8

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "Number out of range for 32-bit signed integer: "

    const-string v6, "Number out of range for 32-bit unsigned integer: "

    if-ge v3, v4, :cond_8

    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    if-eqz v2, :cond_4

    neg-long v0, v0

    :cond_4
    if-nez p2, :cond_10

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x7fffffff

    cmp-long p1, v0, p1

    if-gtz p1, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long p1, v0, p1

    if-ltz p1, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-wide p1, 0x100000000L

    cmp-long p1, v0, p1

    if-gez p1, :cond_7

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-ltz p1, :cond_7

    goto/16 :goto_3

    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_9
    if-nez p2, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_c

    goto :goto_2

    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz p1, :cond_f

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_e

    goto :goto_2

    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number out of range for 64-bit signed integer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_11

    :goto_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_10
    :goto_3
    return-wide v0

    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number out of range for 64-bit unsigned integer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v5

    if-ge v3, v5, :cond_15

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v5

    const/16 v6, 0x5c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_14

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v5

    if-ge v3, v5, :cond_13

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v5

    const/16 v8, 0x37

    const/16 v9, 0x30

    if-gt v9, v5, :cond_0

    if-gt v5, v8, :cond_0

    move v10, v7

    goto :goto_1

    :cond_0
    move v10, v2

    :goto_1
    if-eqz v10, :cond_5

    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/TextFormat;->b(B)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v10

    if-ge v6, v10, :cond_2

    invoke-virtual {p0, v6}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v10

    if-gt v9, v10, :cond_1

    if-gt v10, v8, :cond_1

    move v10, v7

    goto :goto_2

    :cond_1
    move v10, v2

    :goto_2
    if-eqz v10, :cond_2

    shl-int/lit8 v3, v5, 0x3

    invoke-virtual {p0, v6}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/TextFormat;->b(B)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v6

    :cond_2
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v10

    if-ge v6, v10, :cond_4

    invoke-virtual {p0, v6}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v10

    if-gt v9, v10, :cond_3

    if-gt v10, v8, :cond_3

    move v8, v7

    goto :goto_3

    :cond_3
    move v8, v2

    :goto_3
    if-eqz v8, :cond_4

    shl-int/lit8 v3, v5, 0x3

    invoke-virtual {p0, v6}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/TextFormat;->b(B)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v6

    :cond_4
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    goto/16 :goto_5

    :cond_5
    const/16 v8, 0x22

    if-eq v5, v8, :cond_12

    const/16 v8, 0x27

    if-eq v5, v8, :cond_11

    if-eq v5, v6, :cond_10

    const/16 v6, 0x66

    if-eq v5, v6, :cond_f

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_e

    const/16 v6, 0x72

    if-eq v5, v6, :cond_d

    const/16 v6, 0x74

    if-eq v5, v6, :cond_c

    const/16 v6, 0x76

    if-eq v5, v6, :cond_b

    const/16 v6, 0x78

    if-eq v5, v6, :cond_8

    const/16 v6, 0x61

    if-eq v5, v6, :cond_7

    const/16 v6, 0x62

    if-ne v5, v6, :cond_6

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x8

    aput-byte v6, v1, v4

    goto/16 :goto_4

    :cond_6
    new-instance p0, Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x7

    aput-byte v6, v1, v4

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v5

    if-ge v3, v5, :cond_a

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(B)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0, v3}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/TextFormat;->b(B)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v8

    if-ge v6, v8, :cond_9

    invoke-virtual {p0, v6}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v8

    invoke-static {v8}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(B)Z

    move-result v8

    if-eqz v8, :cond_9

    shl-int/lit8 v3, v5, 0x4

    invoke-virtual {p0, v6}, Lcom/uqm/crashsight/protobuf/ByteString;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/uqm/crashsight/protobuf/TextFormat;->b(B)I

    move-result v5

    add-int/2addr v5, v3

    move v3, v6

    :cond_9
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    goto :goto_5

    :cond_a
    new-instance p0, Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xb

    aput-byte v6, v1, v4

    goto :goto_4

    :cond_c
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x9

    aput-byte v6, v1, v4

    goto :goto_4

    :cond_d
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xd

    aput-byte v6, v1, v4

    goto :goto_4

    :cond_e
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xa

    aput-byte v6, v1, v4

    goto :goto_4

    :cond_f
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xc

    aput-byte v6, v1, v4

    goto :goto_4

    :cond_10
    add-int/lit8 v5, v4, 0x1

    aput-byte v6, v1, v4

    goto :goto_4

    :cond_11
    add-int/lit8 v5, v4, 0x1

    aput-byte v8, v1, v4

    goto :goto_4

    :cond_12
    add-int/lit8 v5, v4, 0x1

    aput-byte v8, v1, v4

    :goto_4
    move v4, v5

    goto :goto_6

    :cond_13
    new-instance p0, Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    add-int/lit8 v6, v4, 0x1

    aput-byte v5, v1, v4

    :goto_5
    move v4, v6

    :goto_6
    add-int/2addr v3, v7

    goto/16 :goto_0

    :cond_15
    if-ne v0, v4, :cond_16

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/ByteString;->b([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_16
    invoke-static {v1, v2, v4}, Lcom/uqm/crashsight/protobuf/ByteString;->a([BII)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/uqm/crashsight/protobuf/TextFormat$Printer;
    .locals 1

    invoke-static {}, Lcom/uqm/crashsight/protobuf/TextFormat$Printer;->a()Lcom/uqm/crashsight/protobuf/TextFormat$Printer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Appendable;)Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/uqm/crashsight/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;ZB)V

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/TextFormatEscaper;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/TextFormatEscaper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/TextFormatEscaper;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static b(B)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    :goto_0
    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x41

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static c(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static d(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method static e(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/TextFormat;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method
