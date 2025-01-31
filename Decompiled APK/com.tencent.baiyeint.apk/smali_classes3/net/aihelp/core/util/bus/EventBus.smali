.class public Lnet/aihelp/core/util/bus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/bus/EventBus$PostCallback;,
        Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUILDER:Lnet/aihelp/core/util/bus/EventBusBuilder;

.field public static TAG:Ljava/lang/String; = "EventBus"

.field static volatile defaultInstance:Lnet/aihelp/core/util/bus/EventBus;

.field private static final eventTypesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncPoster:Lnet/aihelp/core/util/bus/AsyncPoster;

.field private final backgroundPoster:Lnet/aihelp/core/util/bus/BackgroundPoster;

.field private final currentPostingThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private final eventInheritance:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final indexCount:I

.field private final logNoSubscriberMessages:Z

.field private final logSubscriberExceptions:Z

.field private final logger:Lnet/aihelp/core/util/bus/Logger;

.field private final mainThreadPoster:Lnet/aihelp/core/util/bus/Poster;

.field private final mainThreadSupport:Lnet/aihelp/core/util/bus/MainThreadSupport;

.field private final sendNoSubscriberEvent:Z

.field private final sendSubscriberExceptionEvent:Z

.field private final stickyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriberMethodFinder:Lnet/aihelp/core/util/bus/SubscriberMethodFinder;

.field private final subscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lnet/aihelp/core/util/bus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final throwSubscriberException:Z

.field private final typesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/aihelp/core/util/bus/EventBusBuilder;

    invoke-direct {v0}, Lnet/aihelp/core/util/bus/EventBusBuilder;-><init>()V

    sput-object v0, Lnet/aihelp/core/util/bus/EventBus;->DEFAULT_BUILDER:Lnet/aihelp/core/util/bus/EventBusBuilder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/aihelp/core/util/bus/EventBus;->eventTypesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lnet/aihelp/core/util/bus/EventBus;->DEFAULT_BUILDER:Lnet/aihelp/core/util/bus/EventBusBuilder;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/bus/EventBus;-><init>(Lnet/aihelp/core/util/bus/EventBusBuilder;)V

    return-void
.end method

.method constructor <init>(Lnet/aihelp/core/util/bus/EventBusBuilder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/aihelp/core/util/bus/EventBus$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/bus/EventBus$1;-><init>(Lnet/aihelp/core/util/bus/EventBus;)V

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/EventBusBuilder;->getLogger()Lnet/aihelp/core/util/bus/Logger;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->logger:Lnet/aihelp/core/util/bus/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->typesBySubscriber:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/EventBusBuilder;->getMainThreadSupport()Lnet/aihelp/core/util/bus/MainThreadSupport;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->mainThreadSupport:Lnet/aihelp/core/util/bus/MainThreadSupport;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lnet/aihelp/core/util/bus/MainThreadSupport;->createPoster(Lnet/aihelp/core/util/bus/EventBus;)Lnet/aihelp/core/util/bus/Poster;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->mainThreadPoster:Lnet/aihelp/core/util/bus/Poster;

    new-instance v0, Lnet/aihelp/core/util/bus/BackgroundPoster;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/bus/BackgroundPoster;-><init>(Lnet/aihelp/core/util/bus/EventBus;)V

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->backgroundPoster:Lnet/aihelp/core/util/bus/BackgroundPoster;

    new-instance v0, Lnet/aihelp/core/util/bus/AsyncPoster;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/bus/AsyncPoster;-><init>(Lnet/aihelp/core/util/bus/EventBus;)V

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->asyncPoster:Lnet/aihelp/core/util/bus/AsyncPoster;

    iget-object v0, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lnet/aihelp/core/util/bus/EventBus;->indexCount:I

    new-instance v0, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;

    iget-object v1, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->subscriberInfoIndexes:Ljava/util/List;

    iget-boolean v2, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->strictMethodVerification:Z

    iget-boolean v3, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->ignoreGeneratedIndex:Z

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;-><init>(Ljava/util/List;ZZ)V

    iput-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->subscriberMethodFinder:Lnet/aihelp/core/util/bus/SubscriberMethodFinder;

    iget-boolean v0, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->logSubscriberExceptions:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->logSubscriberExceptions:Z

    iget-boolean v0, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->logNoSubscriberMessages:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->logNoSubscriberMessages:Z

    iget-boolean v0, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->sendSubscriberExceptionEvent:Z

    iget-boolean v0, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->sendNoSubscriberEvent:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->sendNoSubscriberEvent:Z

    iget-boolean v0, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->throwSubscriberException:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->throwSubscriberException:Z

    iget-boolean v0, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->eventInheritance:Z

    iput-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->eventInheritance:Z

    iget-object p1, p1, Lnet/aihelp/core/util/bus/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lnet/aihelp/core/util/bus/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lnet/aihelp/core/util/bus/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static builder()Lnet/aihelp/core/util/bus/EventBusBuilder;
    .locals 1

    new-instance v0, Lnet/aihelp/core/util/bus/EventBusBuilder;

    invoke-direct {v0}, Lnet/aihelp/core/util/bus/EventBusBuilder;-><init>()V

    return-object v0
.end method

.method private checkPostStickyEventToSubscription(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lnet/aihelp/core/util/bus/EventBus;->isMainThread()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/core/util/bus/EventBus;->postToSubscription(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public static clearCaches()V
    .locals 1

    invoke-static {}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->clearCaches()V

    sget-object v0, Lnet/aihelp/core/util/bus/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static getDefault()Lnet/aihelp/core/util/bus/EventBus;
    .locals 2

    sget-object v0, Lnet/aihelp/core/util/bus/EventBus;->defaultInstance:Lnet/aihelp/core/util/bus/EventBus;

    if-nez v0, :cond_1

    const-class v1, Lnet/aihelp/core/util/bus/EventBus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/aihelp/core/util/bus/EventBus;->defaultInstance:Lnet/aihelp/core/util/bus/EventBus;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/core/util/bus/EventBus;

    invoke-direct {v0}, Lnet/aihelp/core/util/bus/EventBus;-><init>()V

    sput-object v0, Lnet/aihelp/core/util/bus/EventBus;->defaultInstance:Lnet/aihelp/core/util/bus/EventBus;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private handleSubscriberException(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    instance-of v0, p2, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->logSubscriberExceptions:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->logger:Lnet/aihelp/core/util/bus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p3}, Lnet/aihelp/core/util/bus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;

    iget-object p1, p0, Lnet/aihelp/core/util/bus/EventBus;->logger:Lnet/aihelp/core/util/bus/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " caused exception in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    invoke-interface {p1, p3, v0, p2}, Lnet/aihelp/core/util/bus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->throwSubscriberException:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->logSubscriberExceptions:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->logger:Lnet/aihelp/core/util/bus/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lnet/aihelp/core/util/bus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lnet/aihelp/core/util/bus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-boolean v0, p0, Lnet/aihelp/core/util/bus/EventBus;->sendSubscriberExceptionEvent:Z

    if-eqz v0, :cond_2

    new-instance v0, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-direct {v0, p0, p3, p2, p1}, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;-><init>(Lnet/aihelp/core/util/bus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Lnet/aihelp/core/util/bus/EventBusException;

    const-string p2, "Invoking subscriber failed"

    invoke-direct {p1, p2, p3}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private invokeSubscriber(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Lnet/aihelp/core/util/bus/Subscription;->subscriberMethod:Lnet/aihelp/core/util/bus/SubscriberMethod;

    iget-object v0, v0, Lnet/aihelp/core/util/bus/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lnet/aihelp/core/util/bus/Subscription;->subscriber:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/core/util/bus/EventBus;->handleSubscriberException(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private isMainThread()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->mainThreadSupport:Lnet/aihelp/core/util/bus/MainThreadSupport;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/aihelp/core/util/bus/MainThreadSupport;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lnet/aihelp/core/util/bus/EventBus;->eventTypesCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/aihelp/core/util/bus/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/aihelp/core/util/bus/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private postSingleEvent(Ljava/lang/Object;Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-boolean v1, p0, Lnet/aihelp/core/util/bus/EventBus;->eventInheritance:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lnet/aihelp/core/util/bus/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v5}, Lnet/aihelp/core/util/bus/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/core/util/bus/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v4

    :cond_1
    if-nez v4, :cond_3

    iget-boolean p2, p0, Lnet/aihelp/core/util/bus/EventBus;->logNoSubscriberMessages:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnet/aihelp/core/util/bus/EventBus;->logger:Lnet/aihelp/core/util/bus/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No subscribers registered for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/aihelp/core/util/bus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2
    iget-boolean p2, p0, Lnet/aihelp/core/util/bus/EventBus;->sendNoSubscriberEvent:Z

    if-eqz p2, :cond_3

    const-class p2, Lnet/aihelp/core/util/bus/NoSubscriberEvent;

    if-eq v0, p2, :cond_3

    const-class p2, Lnet/aihelp/core/util/bus/SubscriberExceptionEvent;

    if-eq v0, p2, :cond_3

    new-instance p2, Lnet/aihelp/core/util/bus/NoSubscriberEvent;

    invoke-direct {p2, p0, p1}, Lnet/aihelp/core/util/bus/NoSubscriberEvent;-><init>(Lnet/aihelp/core/util/bus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private postSingleEventForEventType(Ljava/lang/Object;Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/util/bus/Subscription;

    iput-object p1, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    iput-object v1, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->subscription:Lnet/aihelp/core/util/bus/Subscription;

    const/4 v2, 0x0

    :try_start_1
    iget-boolean v3, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->isMainThread:Z

    invoke-direct {p0, v1, p1, v3}, Lnet/aihelp/core/util/bus/EventBus;->postToSubscription(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;Z)V

    iget-boolean v1, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    iput-object v2, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->subscription:Lnet/aihelp/core/util/bus/Subscription;

    iput-boolean v0, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->canceled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v2, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    iput-object v2, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->subscription:Lnet/aihelp/core/util/bus/Subscription;

    iput-boolean v0, p2, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->canceled:Z

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private postToSubscription(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;Z)V
    .locals 2

    sget-object v0, Lnet/aihelp/core/util/bus/EventBus$2;->$SwitchMap$net$aihelp$core$util$bus$ThreadMode:[I

    iget-object v1, p1, Lnet/aihelp/core/util/bus/Subscription;->subscriberMethod:Lnet/aihelp/core/util/bus/SubscriberMethod;

    iget-object v1, v1, Lnet/aihelp/core/util/bus/SubscriberMethod;->threadMode:Lnet/aihelp/core/util/bus/ThreadMode;

    invoke-virtual {v1}, Lnet/aihelp/core/util/bus/ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    iget-object p3, p0, Lnet/aihelp/core/util/bus/EventBus;->asyncPoster:Lnet/aihelp/core/util/bus/AsyncPoster;

    invoke-virtual {p3, p1, p2}, Lnet/aihelp/core/util/bus/AsyncPoster;->enqueue(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown thread mode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/Subscription;->subscriberMethod:Lnet/aihelp/core/util/bus/SubscriberMethod;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/SubscriberMethod;->threadMode:Lnet/aihelp/core/util/bus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lnet/aihelp/core/util/bus/EventBus;->backgroundPoster:Lnet/aihelp/core/util/bus/BackgroundPoster;

    invoke-virtual {p3, p1, p2}, Lnet/aihelp/core/util/bus/BackgroundPoster;->enqueue(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/bus/EventBus;->invokeSubscriber(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lnet/aihelp/core/util/bus/EventBus;->mainThreadPoster:Lnet/aihelp/core/util/bus/Poster;

    if-eqz p3, :cond_4

    invoke-interface {p3, p1, p2}, Lnet/aihelp/core/util/bus/Poster;->enqueue(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/bus/EventBus;->invokeSubscriber(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/bus/EventBus;->invokeSubscriber(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object p3, p0, Lnet/aihelp/core/util/bus/EventBus;->mainThreadPoster:Lnet/aihelp/core/util/bus/Poster;

    invoke-interface {p3, p1, p2}, Lnet/aihelp/core/util/bus/Poster;->enqueue(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/bus/EventBus;->invokeSubscriber(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private subscribe(Ljava/lang/Object;Lnet/aihelp/core/util/bus/SubscriberMethod;)V
    .locals 7

    iget-object v0, p2, Lnet/aihelp/core/util/bus/SubscriberMethod;->eventType:Ljava/lang/Class;

    new-instance v1, Lnet/aihelp/core/util/bus/Subscription;

    invoke-direct {v1, p1, p2}, Lnet/aihelp/core/util/bus/Subscription;-><init>(Ljava/lang/Object;Lnet/aihelp/core/util/bus/SubscriberMethod;)V

    iget-object v2, p0, Lnet/aihelp/core/util/bus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v3, p0, Lnet/aihelp/core/util/bus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v3, :cond_3

    if-eq v4, v3, :cond_2

    iget v5, p2, Lnet/aihelp/core/util/bus/SubscriberMethod;->priority:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/aihelp/core/util/bus/Subscription;

    iget-object v6, v6, Lnet/aihelp/core/util/bus/Subscription;->subscriberMethod:Lnet/aihelp/core/util/bus/SubscriberMethod;

    iget v6, v6, Lnet/aihelp/core/util/bus/SubscriberMethod;->priority:I

    if-le v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lnet/aihelp/core/util/bus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lnet/aihelp/core/util/bus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p2, Lnet/aihelp/core/util/bus/SubscriberMethod;->sticky:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lnet/aihelp/core/util/bus/EventBus;->eventInheritance:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lnet/aihelp/core/util/bus/EventBus;->checkPostStickyEventToSubscription(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lnet/aihelp/core/util/bus/EventBus;->checkPostStickyEventToSubscription(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    new-instance p2, Lnet/aihelp/core/util/bus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/core/util/bus/Subscription;

    iget-object v4, v3, Lnet/aihelp/core/util/bus/Subscription;->subscriber:Ljava/lang/Object;

    if-ne v4, p1, :cond_0

    iput-boolean v1, v3, Lnet/aihelp/core/util/bus/Subscription;->active:Z

    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelEventDelivery(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;

    iget-boolean v1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->isPosting:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->subscription:Lnet/aihelp/core/util/bus/Subscription;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/Subscription;->subscriberMethod:Lnet/aihelp/core/util/bus/SubscriberMethod;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/SubscriberMethod;->threadMode:Lnet/aihelp/core/util/bus/ThreadMode;

    sget-object v1, Lnet/aihelp/core/util/bus/ThreadMode;->POSTING:Lnet/aihelp/core/util/bus/ThreadMode;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->canceled:Z

    return-void

    :cond_0
    new-instance p1, Lnet/aihelp/core/util/bus/EventBusException;

    const-string v0, " event handlers may only abort the incoming event"

    invoke-direct {p1, v0}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/aihelp/core/util/bus/EventBusException;

    const-string v0, "Only the currently handled event may be aborted"

    invoke-direct {p1, v0}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/aihelp/core/util/bus/EventBusException;

    const-string v0, "Event may not be null"

    invoke-direct {p1, v0}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/aihelp/core/util/bus/EventBusException;

    const-string v0, "This method may only be called from inside event handling methods on the posting thread"

    invoke-direct {p1, v0}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getLogger()Lnet/aihelp/core/util/bus/Logger;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->logger:Lnet/aihelp/core/util/bus/Logger;

    return-object v0
.end method

.method public getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasSubscriberForEvent(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lnet/aihelp/core/util/bus/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lnet/aihelp/core/util/bus/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return v0
.end method

.method invokeSubscriber(Lnet/aihelp/core/util/bus/PendingPost;)V
    .locals 2

    iget-object v0, p1, Lnet/aihelp/core/util/bus/PendingPost;->event:Ljava/lang/Object;

    iget-object v1, p1, Lnet/aihelp/core/util/bus/PendingPost;->subscription:Lnet/aihelp/core/util/bus/Subscription;

    invoke-static {p1}, Lnet/aihelp/core/util/bus/PendingPost;->releasePendingPost(Lnet/aihelp/core/util/bus/PendingPost;)V

    iget-boolean p1, v1, Lnet/aihelp/core/util/bus/Subscription;->active:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, v1, v0}, Lnet/aihelp/core/util/bus/EventBus;->invokeSubscriber(Lnet/aihelp/core/util/bus/Subscription;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized isRegistered(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public post(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;

    iget-object v1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->eventQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->isPosting:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lnet/aihelp/core/util/bus/EventBus;->isMainThread()Z

    move-result p1

    iput-boolean p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->isMainThread:Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->isPosting:Z

    iget-boolean p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->canceled:Z

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lnet/aihelp/core/util/bus/EventBus;->postSingleEvent(Ljava/lang/Object;Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iput-boolean p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->isPosting:Z

    iput-boolean p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->isMainThread:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->isPosting:Z

    iput-boolean p1, v0, Lnet/aihelp/core/util/bus/EventBus$PostingThreadState;->isMainThread:Z

    throw v1

    :cond_1
    new-instance p1, Lnet/aihelp/core/util/bus/EventBusException;

    const-string v0, "Internal error. Abort state was not reset"

    invoke-direct {p1, v0}, Lnet/aihelp/core/util/bus/EventBusException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public postSticky(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/bus/EventBus;->subscriberMethodFinder:Lnet/aihelp/core/util/bus/SubscriberMethodFinder;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/util/bus/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/util/bus/SubscriberMethod;

    invoke-direct {p0, p1, v1}, Lnet/aihelp/core/util/bus/EventBus;->subscribe(Ljava/lang/Object;Lnet/aihelp/core/util/bus/SubscriberMethod;)V

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAllStickyEvents()V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeStickyEvent(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/core/util/bus/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventBus[indexCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/aihelp/core/util/bus/EventBus;->indexCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventInheritance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/aihelp/core/util/bus/EventBus;->eventInheritance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, p1, v1}, Lnet/aihelp/core/util/bus/EventBus;->unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/bus/EventBus;->logger:Lnet/aihelp/core/util/bus/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber to unregister was not registered before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lnet/aihelp/core/util/bus/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
