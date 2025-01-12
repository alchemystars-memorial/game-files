.class Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$DISCONNECTED;
.super Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;
.source "TcpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DISCONNECTED"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport$SocketState;-><init>()V

    return-void
.end method
