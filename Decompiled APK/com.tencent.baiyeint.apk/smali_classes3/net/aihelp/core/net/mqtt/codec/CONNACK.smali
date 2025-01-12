.class public Lnet/aihelp/core/net/mqtt/codec/CONNACK;
.super Ljava/lang/Object;
.source "CONNACK.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;
    }
.end annotation


# static fields
.field public static final TYPE:B = 0x2t


# instance fields
.field private code:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->CONNECTION_ACCEPTED:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->code:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    return-void
.end method


# virtual methods
.method public code()Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->code:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    return-object v0
.end method

.method public code(Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;)Lnet/aihelp/core/net/mqtt/codec/CONNACK;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->code:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    return-object p0
.end method

.method public decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/CONNACK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->skip(I)I

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readByte()B

    move-result p1

    invoke-static {}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->values()[Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->values()[Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->code:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    return-object p0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Invalid CONNACK encoding"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/CONNACK;

    move-result-object p1

    return-object p1
.end method

.method public encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 3

    :try_start_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeByte(I)V

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->code:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeByte(I)V

    new-instance v2, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-direct {v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;-><init>()V

    invoke-virtual {v2, v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->commandType(I)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The impossible happened"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public messageType()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNACK{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNACK;->code:Lnet/aihelp/core/net/mqtt/codec/CONNACK$Code;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
