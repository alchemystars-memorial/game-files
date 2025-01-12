.class public interface abstract Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;
.super Ljava/lang/Object;
.source "HawtDispatchQueue.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;


# virtual methods
.method public abstract getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;
.end method

.method public abstract getSourceQueue()Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;
.end method

.method public abstract isGlobalDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;
.end method

.method public abstract isSerialDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;
.end method

.method public abstract isThreadDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;
.end method
