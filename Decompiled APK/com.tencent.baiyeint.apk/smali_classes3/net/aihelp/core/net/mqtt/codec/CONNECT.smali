.class public Lnet/aihelp/core/net/mqtt/codec/CONNECT;
.super Ljava/lang/Object;
.source "CONNECT.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;


# static fields
.field public static final TYPE:B = 0x1t

.field private static final V3_PROTOCOL_NAME:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

.field private static final V4_PROTOCOL_NAME:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;


# instance fields
.field private cleanSession:Z

.field private clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

.field private keepAlive:S

.field private password:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

.field private userName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

.field private version:I

.field private willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

.field private willQos:B

.field private willRetain:Z

.field private willTopic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    const-string v1, "MQIsdp"

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->V3_PROTOCOL_NAME:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    const-string v1, "MQTT"

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->V4_PROTOCOL_NAME:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput-short v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive:S

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    const/4 v0, 0x3

    iput v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/codec/CONNECT;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput-short v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive:S

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    const/4 v0, 0x3

    iput v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    iget-short v0, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive:S

    iput-short v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive:S

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iget-boolean v0, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willRetain:Z

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willRetain:Z

    iget-byte v0, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willQos:B

    iput-byte v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willQos:B

    iget-boolean v0, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iget p1, p1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    return-void
.end method


# virtual methods
.method public cleanSession(Z)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    return-object p0
.end method

.method public cleanSession()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    return v0
.end method

.method public clientId(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0
.end method

.method public clientId()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object v0
.end method

.method public decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 7
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

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->readUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    sget-object v2, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->V4_PROTOCOL_NAME:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {v2, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->equals(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Z

    move-result v2

    const-string v3, "Invalid CONNECT frame: protocol name/version mismatch"

    const/4 v4, 0x3

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    const/4 v2, 0x4

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v2, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->V3_PROTOCOL_NAME:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {v2, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->equals(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    if-ne p1, v4, :cond_b

    :goto_0
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readByte()B

    move-result p1

    and-int/lit16 v2, p1, 0x80

    const/4 v3, 0x1

    if-lez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    and-int/lit8 v5, p1, 0x40

    if-lez v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    and-int/lit8 v6, p1, 0x20

    if-lez v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    iput-boolean v6, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willRetain:Z

    and-int/lit8 v6, p1, 0x18

    ushr-int/lit8 v4, v6, 0x3

    int-to-byte v4, v4

    iput-byte v4, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willQos:B

    and-int/lit8 v4, p1, 0x4

    if-lez v4, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_6

    move v1, v3

    :cond_6
    iput-boolean v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive:S

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->readUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->length:I

    if-nez p1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    :cond_7
    if-eqz v4, :cond_8

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->readUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->readUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    :cond_8
    if-eqz v2, :cond_9

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->readUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    :cond_9
    if-eqz v5, :cond_a

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->readUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayInputStream;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    :cond_a
    return-object p0

    :cond_b
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Invalid CONNECT frame"

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

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    move-result-object p1

    return-object p1
.end method

.method public encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eqz v0, :cond_0

    iget v0, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->length:I

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    if-eqz v0, :cond_c

    :cond_1
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;-><init>(I)V

    iget v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->V3_PROTOCOL_NAME:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    iget v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeByte(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-lt v1, v3, :cond_b

    sget-object v1, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->V4_PROTOCOL_NAME:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    iget v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeByte(I)V

    :goto_0
    const/4 v1, 0x0

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eqz v3, :cond_3

    const/16 v1, 0x80

    :cond_3
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eqz v3, :cond_4

    or-int/lit8 v1, v1, 0x40

    :cond_4
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eqz v3, :cond_6

    or-int/lit8 v1, v1, 0x4

    iget-boolean v3, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willRetain:Z

    if-eqz v3, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    iget-byte v3, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willQos:B

    shl-int/lit8 v2, v3, 0x3

    and-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    :cond_6
    iget-boolean v2, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    if-eqz v2, :cond_7

    or-int/lit8 v1, v1, 0x2

    :cond_7
    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeByte(I)V

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive:S

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->writeShort(I)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eqz v2, :cond_8

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    :cond_8
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eqz v1, :cond_9

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    :cond_9
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eqz v1, :cond_a

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport;->writeUTF(Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    :cond_a
    new-instance v1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-direct {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->commandType(I)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A clean session must be used when no clientId is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The impossible happened"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public keepAlive(S)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 0

    iput-short p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive:S

    return-object p0
.end method

.method public keepAlive()S
    .locals 1

    iget-short v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive:S

    return v0
.end method

.method public messageType()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public password(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0
.end method

.method public password()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT{cleanSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", willTopic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", willMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", willRetain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willRetain:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", willQos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willQos:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userName(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0
.end method

.method public userName()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object v0
.end method

.method public version()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    return v0
.end method

.method public version(I)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    iput p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version:I

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public willMessage(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0
.end method

.method public willMessage()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object v0
.end method

.method public willQos()Lnet/aihelp/core/net/mqtt/client/QoS;
    .locals 2

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v0

    iget-byte v1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willQos:B

    aget-object v0, v0, v1

    return-object v0
.end method

.method public willQos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 0

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/client/QoS;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willQos:B

    return-object p0
.end method

.method public willRetain(Z)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willRetain:Z

    return-object p0
.end method

.method public willRetain()Z
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willRetain:Z

    return v0
.end method

.method public willTopic(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0
.end method

.method public willTopic()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object v0
.end method
