.class public abstract Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;
.super Ljava/lang/Object;
.source "ThreadLocalPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final objectsThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool<",
            "TT;>.Pool;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;->objectsThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private getPool()Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool<",
            "TT;>.Pool;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;->objectsThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;-><init>(Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;->objectsThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkin(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;->getPool()Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;

    move-result-object v0

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;->maxPoolSizePerThread()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public checkout()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;->getPool()Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;

    move-result-object v0

    iget-object v1, v0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    iget-wide v5, v0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;->hitCounter:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;->hitCounter:J

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v1, v0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;->missCounter:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool$Pool;->missCounter:J

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/util/ThreadLocalPool;->create()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected maxPoolSizePerThread()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
