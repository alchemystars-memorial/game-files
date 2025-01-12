.class public Lnet/aihelp/core/net/mqtt/util/BufferPools;
.super Ljava/lang/Object;
.source "BufferPools.java"


# instance fields
.field private final pools:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lnet/aihelp/core/net/mqtt/util/BufferPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/util/BufferPools;->pools:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized getBufferPool(I)Lnet/aihelp/core/net/mqtt/util/BufferPool;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/util/BufferPools;->pools:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/util/BufferPool;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/core/net/mqtt/util/BufferPool;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/util/BufferPool;-><init>(I)V

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/util/BufferPools;->pools:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
