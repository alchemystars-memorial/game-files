.class public Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;
.super Ljava/lang/Object;
.source "StringCodec.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/codec/Codec<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;->decode(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deepCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;->deepCopy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deepCopy(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;->encode(Ljava/lang/String;Ljava/io/DataOutput;)V

    return-void
.end method

.method public encode(Ljava/lang/String;Ljava/io/DataOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic estimatedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/codec/StringCodec;->estimatedSize(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public estimatedSize(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

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
