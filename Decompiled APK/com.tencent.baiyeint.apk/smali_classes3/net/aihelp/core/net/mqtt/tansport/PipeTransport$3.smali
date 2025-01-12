.class Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$3;
.super Ljava/net/SocketAddress;
.source "PipeTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;->setRemoteAddress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

.field final synthetic val$remoteAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/PipeTransport;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$3;->val$remoteAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/PipeTransport$3;->val$remoteAddress:Ljava/lang/String;

    return-object v0
.end method
