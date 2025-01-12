.class public Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;
.super Ljava/lang/Object;
.source "VarIntegerCodec.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/DataInput;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 p1, v1, 0x7

    :goto_0
    or-int/2addr p1, v0

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 p1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 p1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    if-ltz v2, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Encountered a malformed variable int"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move p1, v0

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;->decode(Ljava/io/DataInput;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public deepCopy(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic deepCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;->deepCopy(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/Integer;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;->encode(Ljava/lang/Integer;Ljava/io/DataOutput;)V

    return-void
.end method

.method public estimatedSize(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p1, v0

    if-nez p1, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x5

    return p1
.end method

.method public bridge synthetic estimatedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/VarIntegerCodec;->estimatedSize(Ljava/lang/Integer;)I

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
