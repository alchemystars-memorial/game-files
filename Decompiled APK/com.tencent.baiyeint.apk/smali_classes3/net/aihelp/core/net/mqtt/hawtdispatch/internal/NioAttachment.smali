.class final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;
.super Ljava/lang/Object;
.source "NioAttachment.java"


# instance fields
.field key:Ljava/nio/channels/SelectionKey;

.field final sources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->sources:Ljava/util/ArrayList;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->key:Ljava/nio/channels/SelectionKey;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->sources:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->sources:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->canceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->internal_cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public key()Ljava/nio/channels/SelectionKey;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->key:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public selected(Ljava/nio/channels/SelectionKey;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result p1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioAttachment;->sources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;

    iget v2, v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->interestOps:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioDispatchSource;->fire(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
