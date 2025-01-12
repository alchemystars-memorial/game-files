.class public interface abstract Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# virtual methods
.method public abstract createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method public abstract createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Event:",
            "Ljava/lang/Object;",
            "MergedEvent:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "TEvent;TMergedEvent;>;",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;",
            ")",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "TEvent;TMergedEvent;>;"
        }
    .end annotation
.end method

.method public abstract createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;
.end method

.method public abstract getCurrentQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method public abstract getCurrentThreadQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method public abstract getGlobalQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method public abstract getGlobalQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method public abstract getThreadQueues(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method public abstract metrics()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract profile(Z)V
.end method

.method public abstract profile()Z
.end method

.method public abstract restart()V
.end method

.method public abstract shutdown()V
.end method
