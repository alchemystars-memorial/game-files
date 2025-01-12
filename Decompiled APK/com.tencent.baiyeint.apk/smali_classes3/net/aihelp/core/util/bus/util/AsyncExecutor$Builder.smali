.class public Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/bus/util/AsyncExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private eventBus:Lnet/aihelp/core/util/bus/EventBus;

.field private failureEventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/util/bus/util/AsyncExecutor$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnet/aihelp/core/util/bus/util/AsyncExecutor;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->buildForScope(Ljava/lang/Object;)Lnet/aihelp/core/util/bus/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method

.method public buildForScope(Ljava/lang/Object;)Lnet/aihelp/core/util/bus/util/AsyncExecutor;
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-class v0, Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;

    iput-object v0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    :cond_2
    new-instance v0, Lnet/aihelp/core/util/bus/util/AsyncExecutor;

    iget-object v2, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    iget-object v4, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/core/util/bus/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lnet/aihelp/core/util/bus/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lnet/aihelp/core/util/bus/util/AsyncExecutor$1;)V

    return-object v0
.end method

.method public eventBus(Lnet/aihelp/core/util/bus/EventBus;)Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    return-object p0
.end method

.method public failureEventType(Ljava/lang/Class;)Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    return-object p0
.end method

.method public threadPool(Ljava/util/concurrent/Executor;)Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    return-object p0
.end method
