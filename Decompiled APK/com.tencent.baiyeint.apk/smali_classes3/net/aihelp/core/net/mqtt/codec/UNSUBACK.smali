.class public Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;
.super Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;
.source "UNSUBACK.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;


# static fields
.field public static final TYPE:B = 0xbt


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;

    return-object p1
.end method

.method public bridge synthetic messageId(S)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;

    move-result-object p1

    return-object p1
.end method

.method public messageId(S)Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;
    .locals 0

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$AckBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;

    return-object p1
.end method

.method public messageType()B
    .locals 1

    const/16 v0, 0xb

    return v0
.end method
