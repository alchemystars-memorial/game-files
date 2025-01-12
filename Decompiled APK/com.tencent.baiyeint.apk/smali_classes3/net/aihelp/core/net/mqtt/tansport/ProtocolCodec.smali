.class public interface abstract Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;
.super Ljava/lang/Object;
.source "ProtocolCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;
    }
.end annotation


# virtual methods
.method public abstract flush()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract full()Z
.end method

.method public abstract getLastReadSize()J
.end method

.method public abstract getLastWriteSize()J
.end method

.method public abstract getReadBufferSize()I
.end method

.method public abstract getReadCounter()J
.end method

.method public abstract getWriteBufferSize()I
.end method

.method public abstract getWriteCounter()J
.end method

.method public abstract read()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setTransport(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
.end method

.method public abstract unread([B)V
.end method

.method public abstract write(Ljava/lang/Object;)Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
