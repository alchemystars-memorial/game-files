.class public Lnet/aihelp/core/net/mqtt/codec/PUBLISH;
.super Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
.source "PUBLISH.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;


# static fields
.field public static final TYPE:B = 0x3t


# instance fields
.field private messageId:S

.field private payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

.field private topicName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;-><init>()V

    sget-object v0, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_LEAST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->header()B

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->header(B)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->readUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->topicName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object p1

    sget-object v2, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_MOST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    if-eq p1, v2, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId:S

    :cond_0
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->available()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readBuffer(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    if-nez p1, :cond_1

    new-instance p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {p1, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>(I)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->dup(Z)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->dup(Z)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p1

    return-object p1
.end method

.method public dup(Z)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    return-object p1
.end method

.method public dup()Z
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->dup()Z

    move-result v0

    return v0
.end method

.method public encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 3

    :try_start_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->topicName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v1

    sget-object v2, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_MOST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId:S

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeShort(I)V

    :cond_0
    new-instance v1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-direct {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->header()B

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->header(B)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->commandType(I)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    if-eqz v2, :cond_1

    iget v2, v2, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {v0, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->write(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    :cond_1
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The impossible happened"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic messageId(S)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p1

    return-object p1
.end method

.method public messageId(S)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;
    .locals 0

    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId:S

    return-object p0
.end method

.method public messageId()S
    .locals 1

    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId:S

    return v0
.end method

.method public messageType()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public payload(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-object p0
.end method

.method public payload()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-object v0
.end method

.method public qos()Lnet/aihelp/core/net/mqtt/client/QoS;
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p1

    return-object p1
.end method

.method public qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    return-object p1
.end method

.method public bridge synthetic retain(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->retain(Z)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p1

    return-object p1
.end method

.method public retain(Z)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->retain(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    return-object p1
.end method

.method public retain()Z
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->retain()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUBLISH{dup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->dup()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->retain()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topicName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->topicName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->payload:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topicName(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->topicName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0
.end method

.method public topicName()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->topicName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object v0
.end method
