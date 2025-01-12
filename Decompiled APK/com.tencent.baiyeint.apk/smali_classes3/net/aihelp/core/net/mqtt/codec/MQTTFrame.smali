.class public Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
.super Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
.source "MQTTFrame.java"


# static fields
.field private static final NO_BUFFERS:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;


# instance fields
.field public buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    sput-object v0, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->NO_BUFFERS:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;-><init>()V

    sget-object v0, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->NO_BUFFERS:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;-><init>([Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-void
.end method

.method public constructor <init>([Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-void
.end method


# virtual methods
.method public buffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-object p0
.end method

.method public varargs buffers([Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-object p0
.end method

.method public buffers()[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->buffers:[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-object v0
.end method

.method public commandType(I)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->commandType(I)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    return-object p1
.end method

.method public bridge synthetic commandType(I)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->commandType(I)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object p1

    return-object p1
.end method

.method public dup(Z)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    return-object p1
.end method

.method public bridge synthetic dup(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->dup(Z)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object p1

    return-object p1
.end method

.method public dup()Z
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->dup()Z

    move-result v0

    return v0
.end method

.method public header()B
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header()B

    move-result v0

    return v0
.end method

.method public header(B)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->header(B)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    return-object p1
.end method

.method public bridge synthetic header(B)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->header(B)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object p1

    return-object p1
.end method

.method public messageType()B
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->messageType()B

    move-result v0

    return v0
.end method

.method public qos()Lnet/aihelp/core/net/mqtt/client/QoS;
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v0

    return-object v0
.end method

.method public qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    return-object p1
.end method

.method public bridge synthetic qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object p1

    return-object p1
.end method

.method public retain(Z)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->retain(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    return-object p1
.end method

.method public bridge synthetic retain(Z)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->retain(Z)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object p1

    return-object p1
.end method

.method public retain()Z
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$HeaderBase;->retain()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->messageType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "DISCONNECT"

    goto :goto_0

    :pswitch_1
    const-string v0, "PINGRESP"

    goto :goto_0

    :pswitch_2
    const-string v0, "PINGREQ"

    goto :goto_0

    :pswitch_3
    const-string v0, "UNSUBACK"

    goto :goto_0

    :pswitch_4
    const-string v0, "UNSUBSCRIBE"

    goto :goto_0

    :pswitch_5
    const-string v0, "SUBACK"

    goto :goto_0

    :pswitch_6
    const-string v0, "SUBSCRIBE"

    goto :goto_0

    :pswitch_7
    const-string v0, "PUBCOMP"

    goto :goto_0

    :pswitch_8
    const-string v0, "PUBREL"

    goto :goto_0

    :pswitch_9
    const-string v0, "PUBREC"

    goto :goto_0

    :pswitch_a
    const-string v0, "PUBACK"

    goto :goto_0

    :pswitch_b
    const-string v0, "PUBLISH"

    goto :goto_0

    :pswitch_c
    const-string v0, "CONNACK"

    goto :goto_0

    :pswitch_d
    const-string v0, "CONNECT"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MQTTFrame { type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", qos: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dup:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->dup()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
