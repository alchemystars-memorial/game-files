.class Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;
.super Ljava/lang/Object;
.source "MQTTProtocolCodec.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->readBody(BI)Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

.field final synthetic val$header:B

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;IB)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    iput p2, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->val$length:I

    iput-byte p3, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->val$header:B

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

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->apply()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

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

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$700(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$800(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I

    move-result v1

    sub-int v1, v0, v1

    iget v2, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->val$length:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v1, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$902(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;I)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$1000(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$1100(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I

    move-result v2

    iget v3, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->val$length:I

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$1400(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)I

    move-result v2

    iget v3, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->val$length:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$1302(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;I)I

    move-result v2

    invoke-static {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$1202(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;I)I

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->this$0:Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$1600(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;)Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;->access$1502(Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;)Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$Action;

    new-instance v1, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    invoke-direct {v1, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    iget-byte v0, p0, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec$2;->val$header:B

    invoke-virtual {v1, v0}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->header(B)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    return-object v0
.end method
