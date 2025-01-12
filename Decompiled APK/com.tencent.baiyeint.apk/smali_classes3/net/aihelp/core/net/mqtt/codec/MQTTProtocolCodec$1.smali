.class Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;
.super Ljava/lang/Object;
.source "MQTTProtocolCodec.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;->apply()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    return-object v0
.end method

.method public apply()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$000(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$100(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$300(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$200(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$500(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I

    move-result v3

    invoke-static {v2, v3}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$402(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;I)I

    if-lez v0, :cond_0

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-virtual {v2, v1, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readBody(BI)Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$602(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;)Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;-><init>()V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->header(B)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The maximum message length was exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
