.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtThreadGroup;
.super Ljava/lang/ThreadGroup;
.source "HawtThreadGroup.java"


# instance fields
.field private final dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtThreadGroup;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtThreadGroup;->dispatcher:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
