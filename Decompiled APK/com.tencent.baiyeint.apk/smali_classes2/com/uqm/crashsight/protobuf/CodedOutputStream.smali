.class public abstract Lcom/uqm/crashsight/protobuf/CodedOutputStream;
.super Lcom/uqm/crashsight/protobuf/ByteOutput;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$ByteOutputEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$AbstractBufferedEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$SafeDirectNioEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$HeapNioEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;,
        Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a()Z

    move-result v0

    sput-boolean v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ByteOutput;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method static a(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static a(ID)I
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static a(IF)I
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static a(ILcom/uqm/crashsight/protobuf/LazyFieldLite;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->b()I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static a(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    check-cast p1, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p2

    add-int/2addr p2, p1

    add-int/2addr p0, p2

    return p0
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/LazyFieldLite;)I
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->b()I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static a(Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I
    .locals 0

    check-cast p0, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/uqm/crashsight/protobuf/CodedOutputStream;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;

    invoke-direct {v0, p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutputStreamEncoder;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static a([B)Lcom/uqm/crashsight/protobuf/CodedOutputStream;
    .locals 3

    array-length v0, p0

    new-instance v1, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    return-object v1
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static b(ILcom/uqm/crashsight/protobuf/LazyFieldLite;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v2

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/2addr v2, p0

    add-int/2addr v0, v2

    const/4 p0, 0x3

    invoke-static {p0, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyFieldLite;->b()I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method static b(ILcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/Schema;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;

    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/uqm/crashsight/protobuf/Schema;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IZ)I
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Lcom/uqm/crashsight/protobuf/ByteString;)I
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Lcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 1

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/Utf8;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b([B)I
    .locals 1

    array-length p0, p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static c(IJ)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(ILcom/uqm/crashsight/protobuf/ByteString;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static c(ILcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static c(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(J)I

    move-result p0

    return p0
.end method

.method public static c(Lcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public static d()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static d(II)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    if-ltz p1, :cond_0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method public static d(IJ)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(ILcom/uqm/crashsight/protobuf/ByteString;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v2

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/2addr v2, p0

    add-int/2addr v0, v2

    const/4 p0, 0x3

    invoke-static {p0, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(ILcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v2

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/2addr v2, p0

    add-int/2addr v0, v2

    const/4 p0, 0x3

    invoke-static {p0, v1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static e(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    return p0
.end method

.method public static e(II)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(IJ)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(ILcom/uqm/crashsight/protobuf/MessageLite;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(J)I
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->d(J)I

    move-result p0

    return p0
.end method

.method public static f()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static f(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static f(II)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(IJ)I
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static g(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static g(II)I
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static g(IJ)I
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static h(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    return p0
.end method

.method public static h(II)I
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static i(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static i(II)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uqm/crashsight/protobuf/WireFormat;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    if-ltz p1, :cond_0

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method static j(I)I
    .locals 1

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic j()Z
    .locals 1

    sget-boolean v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b:Z

    return v0
.end method

.method public static k(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->g(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract a(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/uqm/crashsight/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final a(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Utf8$UnpairedSurrogateException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->c(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->b([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract b(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(ILcom/uqm/crashsight/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(ILcom/uqm/crashsight/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract c([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i()I
.end method
