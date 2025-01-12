.class public abstract Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;
.super Ljava/lang/Object;
.source "MessageSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/codec/MessageSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AckBase"
.end annotation


# instance fields
.field private messageId:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;
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

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->messageId:S

    return-object p0
.end method

.method public encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 3

    :try_start_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;-><init>(I)V

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->messageId:S

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeShort(I)V

    new-instance v1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-direct {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->messageType()B

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->commandType(I)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

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

.method protected messageId(S)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;
    .locals 0

    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->messageId:S

    return-object p0
.end method

.method public messageId()S
    .locals 1

    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->messageId:S

    return v0
.end method

.method abstract messageType()B
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->messageId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
