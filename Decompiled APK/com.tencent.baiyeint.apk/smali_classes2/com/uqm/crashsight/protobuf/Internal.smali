.class public final Lcom/uqm/crashsight/protobuf/Internal;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/Internal$FloatList;,
        Lcom/uqm/crashsight/protobuf/Internal$DoubleList;,
        Lcom/uqm/crashsight/protobuf/Internal$LongList;,
        Lcom/uqm/crashsight/protobuf/Internal$BooleanList;,
        Lcom/uqm/crashsight/protobuf/Internal$IntList;,
        Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;,
        Lcom/uqm/crashsight/protobuf/Internal$MapAdapter;,
        Lcom/uqm/crashsight/protobuf/Internal$ListAdapter;,
        Lcom/uqm/crashsight/protobuf/Internal$EnumVerifier;,
        Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;,
        Lcom/uqm/crashsight/protobuf/Internal$EnumLite;
    }
.end annotation


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field static final b:Ljava/nio/charset/Charset;

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/protobuf/Internal;->b:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/uqm/crashsight/protobuf/Internal;->c:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/CodedInputStream;->a([B)Lcom/uqm/crashsight/protobuf/CodedInputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I[BII)I
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    mul-int/lit8 p0, p0, 0x1f

    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static a(Lcom/uqm/crashsight/protobuf/Internal$EnumLite;)I
    .locals 0

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/uqm/crashsight/protobuf/Internal$EnumLite;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/Internal$EnumLite;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageLite;->toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    move-result-object p0

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {p0, p1}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->mergeFrom(Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([B)Z
    .locals 0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/Utf8;->a([B)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static c([B)I
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    add-int v4, v1, v0

    if-ge v2, v4, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    aget-byte v4, p0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v3
.end method
