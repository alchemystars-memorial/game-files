.class public interface abstract Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;
.super Ljava/lang/Object;
.source "DispatchSource.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchObject;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract setCancelHandler(Ljava/lang/Runnable;)V
.end method

.method public abstract setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end method

.method public abstract setEventHandler(Ljava/lang/Runnable;)V
.end method

.method public abstract setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end method
