.class public interface abstract Lnet/aihelp/core/net/mqtt/tansport/TransportServerListener;
.super Ljava/lang/Object;
.source "TransportServerListener.java"


# virtual methods
.method public abstract onAccept(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onAcceptError(Ljava/lang/Exception;)V
.end method
