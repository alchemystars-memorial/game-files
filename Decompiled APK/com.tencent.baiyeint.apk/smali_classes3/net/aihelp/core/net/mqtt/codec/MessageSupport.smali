.class public final Lnet/aihelp/core/net/mqtt/codec/MessageSupport;
.super Ljava/lang/Object;
.source "MessageSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;,
        Lnet/aihelp/core/net/mqtt/codec/MessageSupport$EmptyBase;,
        Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;,
        Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;,
        Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "This class is not for instantiation"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static readUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readUnsignedShort()I

    move-result v0

    const-string v1, "Invalid message encoding"

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readBuffer(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    invoke-direct {p0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    invoke-direct {p0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeShort(I)V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-void
.end method
