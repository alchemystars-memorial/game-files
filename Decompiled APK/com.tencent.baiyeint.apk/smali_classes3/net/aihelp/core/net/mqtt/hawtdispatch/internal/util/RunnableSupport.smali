.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;
.super Ljava/lang/Object;
.source "RunnableSupport.java"


# static fields
.field private static NO_OP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$1;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->NO_OP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runAfter(Ljava/lang/Runnable;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->runAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object p0

    return-object p0
.end method

.method public static runAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Ljava/lang/Runnable;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->runAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object p0

    return-object p0
.end method

.method public static runAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    if-lez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance p2, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;

    invoke-direct {p2, v0, p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object p2

    :cond_1
    :goto_0
    sget-object p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->NO_OP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object p0
.end method

.method public static runAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    if-lez p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$3;

    invoke-direct {p1, v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object p1

    :cond_2
    :goto_0
    sget-object p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->NO_OP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object p0
.end method

.method public static runNoop()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->NO_OP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object v0
.end method

.method public static runOnceAfter(Ljava/lang/Runnable;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->runOnceAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object p0

    return-object p0
.end method

.method public static runOnceAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Ljava/lang/Runnable;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->runOnceAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object p0

    return-object p0
.end method

.method public static runOnceAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    if-lez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance p2, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$4;

    invoke-direct {p2, v0, p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object p2

    :cond_1
    :goto_0
    sget-object p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->NO_OP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object p0
.end method

.method public static runOnceAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->NO_OP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    sget-object p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->NO_OP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$2;

    invoke-direct {p1, v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-object p1
.end method
