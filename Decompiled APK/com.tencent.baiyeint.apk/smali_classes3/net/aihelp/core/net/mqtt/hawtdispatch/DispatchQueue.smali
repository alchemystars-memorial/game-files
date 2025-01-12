.class public interface abstract Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.super Ljava/lang/Object;
.source "DispatchQueue.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchObject;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;
    }
.end annotation


# virtual methods
.method public abstract assertExecuting()V
.end method

.method public abstract createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
.end method

.method public abstract execute(Ljava/lang/Runnable;)V
.end method

.method public abstract execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end method

.method public abstract executeAfter(JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)V
.end method

.method public abstract executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getQueueType()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;
.end method

.method public abstract isExecuting()Z
.end method

.method public abstract metrics()Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;
.end method

.method public abstract profile(Z)V
.end method

.method public abstract profile()Z
.end method

.method public abstract setLabel(Ljava/lang/String;)V
.end method
