.class public Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;
.super Ljava/lang/Object;
.source "NetworkStateReceiverMethod.java"


# instance fields
.field private method:Ljava/lang/reflect/Method;

.field private networkState:[Lnet/aihelp/core/net/monitor/NetworkState;

.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/aihelp/core/net/monitor/NetworkState;

    sget-object v1, Lnet/aihelp/core/net/monitor/NetworkState;->CELLULAR:Lnet/aihelp/core/net/monitor/NetworkState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/aihelp/core/net/monitor/NetworkState;->WIFI:Lnet/aihelp/core/net/monitor/NetworkState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/aihelp/core/net/monitor/NetworkState;->NONE:Lnet/aihelp/core/net/monitor/NetworkState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->networkState:[Lnet/aihelp/core/net/monitor/NetworkState;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getNetworkState()[Lnet/aihelp/core/net/monitor/NetworkState;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->networkState:[Lnet/aihelp/core/net/monitor/NetworkState;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public setMethod(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method public setNetworkState([Lnet/aihelp/core/net/monitor/NetworkState;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->networkState:[Lnet/aihelp/core/net/monitor/NetworkState;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/net/monitor/NetworkStateReceiverMethod;->object:Ljava/lang/Object;

    return-void
.end method
