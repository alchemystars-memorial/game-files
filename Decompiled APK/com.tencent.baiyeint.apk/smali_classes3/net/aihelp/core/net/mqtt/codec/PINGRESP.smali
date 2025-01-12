.class public Lnet/aihelp/core/net/mqtt/codec/PINGRESP;
.super Lnet/aihelp/core/net/mqtt/codec/MessageSupport$EmptyBase;
.source "PINGRESP.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Message;


# static fields
.field public static final TYPE:B = 0xdt


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$EmptyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$EmptyBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PINGRESP;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PINGRESP;

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

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/PINGRESP;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PINGRESP;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PINGRESP;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$EmptyBase;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$EmptyBase;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/net/mqtt/codec/PINGRESP;

    return-object p1
.end method

.method public messageType()B
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PINGRESP"

    return-object v0
.end method
