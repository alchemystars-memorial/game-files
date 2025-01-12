.class public abstract Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/BaseSuspendable;
.source "AbstractDispatchObject.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchObject;


# instance fields
.field protected volatile targetQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/BaseSuspendable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;->getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;->targetQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    return-object v0
.end method

.method public setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;->targetQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    if-eq p1, v0, :cond_0

    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;->targetQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    :cond_0
    return-void
.end method
