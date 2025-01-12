.class public Lnet/aihelp/core/util/bus/EventBusBuilder;
.super Ljava/lang/Object;
.source "EventBusBuilder.java"


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# instance fields
.field eventInheritance:Z

.field executorService:Ljava/util/concurrent/ExecutorService;

.field ignoreGeneratedIndex:Z

.field logNoSubscriberMessages:Z

.field logSubscriberExceptions:Z

.field private logger:Lnet/aihelp/core/util/bus/Logger;

.field private mainThreadSupport:Lnet/aihelp/core/util/bus/MainThreadSupport;

.field sendNoSubscriberEvent:Z

.field sendSubscriberExceptionEvent:Z

.field private skipMethodVerificationForClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field strictMethodVerification:Z

.field subscriberInfoIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/bus/meta/SubscriberInfoIndex;",
            ">;"
        }
    .end annotation
.end field

.field throwSubscriberException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/util/bus/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->logSubscriberExceptions:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->logNoSubscriberMessages:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->sendNoSubscriberEvent:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->eventInheritance:Z

    sget-object v0, Lnet/aihelp/core/util/bus/EventBusBuilder;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static getAndroidMainLooperOrNull()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addIndex(Lnet/aihelp/core/util/bus/meta/SubscriberInfoIndex;)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lnet/aihelp/core/util/bus/EventBus;
    .locals 1

    new-instance v0, Lnet/aihelp/core/util/bus/EventBus;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/bus/EventBus;-><init>(Lnet/aihelp/core/util/bus/EventBusBuilder;)V

    return-object v0
.end method

.method public eventInheritance(Z)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->eventInheritance:Z

    return-object p0
.end method

.method public executorService(Ljava/util/concurrent/ExecutorService;)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method getLogger()Lnet/aihelp/core/util/bus/Logger;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->logger:Lnet/aihelp/core/util/bus/Logger;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lnet/aihelp/core/util/bus/Logger$Default;->get()Lnet/aihelp/core/util/bus/Logger;

    move-result-object v0

    return-object v0
.end method

.method getMainThreadSupport()Lnet/aihelp/core/util/bus/MainThreadSupport;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->mainThreadSupport:Lnet/aihelp/core/util/bus/MainThreadSupport;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lnet/aihelp/core/util/bus/util/AndroidLogger;->isAndroidLogAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lnet/aihelp/core/util/bus/EventBusBuilder;->getAndroidMainLooperOrNull()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/aihelp/core/util/bus/MainThreadSupport$AndroidHandlerMainThreadSupport;

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Lnet/aihelp/core/util/bus/MainThreadSupport$AndroidHandlerMainThreadSupport;-><init>(Landroid/os/Looper;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public ignoreGeneratedIndex(Z)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->ignoreGeneratedIndex:Z

    return-object p0
.end method

.method public installDefaultEventBus()Lnet/aihelp/core/util/bus/EventBus;
    .locals 3

    const-class v0, Lnet/aihelp/core/util/bus/EventBus;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/aihelp/core/util/bus/EventBus;->defaultInstance:Lnet/aihelp/core/util/bus/EventBus;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/util/bus/EventBusBuilder;->build()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v1

    sput-object v1, Lnet/aihelp/core/util/bus/EventBus;->defaultInstance:Lnet/aihelp/core/util/bus/EventBus;

    sget-object v1, Lnet/aihelp/core/util/bus/EventBus;->defaultInstance:Lnet/aihelp/core/util/bus/EventBus;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lnet/aihelp/core/util/bus/EventBusException;

    const-string v2, "Default instance already exists. It may be only set once before it\'s used the first time to ensure consistent behavior."

    invoke-direct {v1, v2}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logNoSubscriberMessages(Z)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->logNoSubscriberMessages:Z

    return-object p0
.end method

.method public logSubscriberExceptions(Z)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->logSubscriberExceptions:Z

    return-object p0
.end method

.method public logger(Lnet/aihelp/core/util/bus/Logger;)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->logger:Lnet/aihelp/core/util/bus/Logger;

    return-object p0
.end method

.method public sendNoSubscriberEvent(Z)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->sendNoSubscriberEvent:Z

    return-object p0
.end method

.method public sendSubscriberExceptionEvent(Z)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    return-object p0
.end method

.method public skipMethodVerificationFor(Ljava/lang/Class;)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/aihelp/core/util/bus/EventBusBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public strictMethodVerification(Z)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->strictMethodVerification:Z

    return-object p0
.end method

.method public throwSubscriberException(Z)Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/util/bus/EventBusBuilder;->throwSubscriberException:Z

    return-object p0
.end method
