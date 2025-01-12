.class public Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;
.super Ljava/lang/Object;
.source "VarLongCodec.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/DataInput;)Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Encountered a malformed variable int"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decode(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;->decode(Ljava/io/DataInput;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public deepCopy(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic deepCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;->deepCopy(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/Long;Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    long-to-int p1, v0

    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :cond_0
    long-to-int p1, v0

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    const/4 p1, 0x7

    ushr-long/2addr v0, p1

    goto :goto_0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;->encode(Ljava/lang/Long;Ljava/io/DataOutput;)V

    return-void
.end method

.method public estimatedSize(Ljava/lang/Long;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-wide/16 v2, -0x4000

    and-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-wide/32 v2, -0x200000

    and-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const-wide v2, -0x800000000L

    and-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    const-wide v2, -0x40000000000L

    and-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    const-wide/high16 v2, -0x2000000000000L

    and-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_6

    const/4 p1, 0x7

    return p1

    :cond_6
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_7

    const/16 p1, 0x8

    return p1

    :cond_7
    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    cmp-long p1, v0, v4

    if-nez p1, :cond_8

    const/16 p1, 0x9

    return p1

    :cond_8
    const/16 p1, 0xa

    return p1
.end method

.method public bridge synthetic estimatedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarLongCodec;->estimatedSize(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public getFixedSize()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isDeepCopySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEstimatedSizeSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
