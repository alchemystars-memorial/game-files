.class public final Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
.source "AsciiBuffer.java"


# instance fields
.field private hashCode:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->encode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-void
.end method

.method public static ascii(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ascii(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    if-ne v0, v1, :cond_1

    check-cast p0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    return-object p0

    :cond_1
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method

.method public static decode(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->getLength()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->equals(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->hashCode:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->hashCode()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->hashCode:I

    :cond_0
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->decode(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->value:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->value:Ljava/lang/String;

    return-object v0
.end method
