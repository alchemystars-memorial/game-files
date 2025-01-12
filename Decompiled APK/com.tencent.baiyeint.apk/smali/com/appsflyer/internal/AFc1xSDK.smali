.class public final Lcom/appsflyer/internal/AFc1xSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFc1zSDK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFc1xSDK$AFa1vSDK;
    }
.end annotation


# instance fields
.field private final AFInAppEventParameterName:I

.field private AFInAppEventType:Ljava/util/concurrent/ExecutorService;

.field private AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

.field private AFLogger:Lcom/appsflyer/PurchaseHandler;

.field private AFLogger$LogLevel:Lcom/appsflyer/internal/AFa1pSDK;

.field private AFVersionDeclaration:Lcom/appsflyer/internal/AFc1mSDK;

.field private afDebugLog:Lcom/appsflyer/internal/AFb1zSDK;

.field private afErrorLog:Lcom/appsflyer/internal/AFb1aSDK;

.field private afInfoLog:Lcom/appsflyer/internal/AFd1bSDK;

.field private afRDLog:Lcom/appsflyer/CreateOneLinkHttpTask;

.field private afWarnLog:Lcom/appsflyer/internal/AFd1gSDK;

.field private getLevel:Lcom/appsflyer/internal/AFe1iSDK;

.field private valueOf:Ljava/util/concurrent/ExecutorService;

.field public final values:Lcom/appsflyer/internal/AFb1bSDK;


# direct methods
.method public static synthetic $r8$lambda$zm00wyN-VltadOjPgRhmfAWnJFo(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventType(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName:I

    new-instance v0, Lcom/appsflyer/internal/AFb1bSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1bSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    return-void
.end method

.method private static synthetic AFInAppEventType(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method private declared-synchronized onAppOpenAttributionNative()Lcom/appsflyer/internal/AFb1zSDK;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:Lcom/appsflyer/internal/AFb1zSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/internal/AFb1zSDK;

    new-instance v1, Lcom/appsflyer/internal/AFc1tSDK;

    iget v2, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName:I

    invoke-direct {v1, v2}, Lcom/appsflyer/internal/AFc1tSDK;-><init>(I)V

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFb1zSDK;-><init>(Lcom/appsflyer/internal/AFc1tSDK;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:Lcom/appsflyer/internal/AFb1zSDK;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:Lcom/appsflyer/internal/AFb1zSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog:Lcom/appsflyer/internal/AFb1aSDK;

    if-nez v0, :cond_1

    new-instance v0, Lcom/appsflyer/internal/AFb1aSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFb1bSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFc1ySDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/appsflyer/internal/AFc1ySDK;-><init>(Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFb1aSDK;-><init>(Lcom/appsflyer/internal/AFb1bSDK;Lcom/appsflyer/internal/AFd1qSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog:Lcom/appsflyer/internal/AFb1aSDK;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog:Lcom/appsflyer/internal/AFb1aSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final AFInAppEventType()Lcom/appsflyer/internal/AFc1uSDK;
    .locals 4

    new-instance v0, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1xSDK;->onAppOpenAttributionNative()Lcom/appsflyer/internal/AFb1zSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v2

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFc1uSDK;-><init>(Lcom/appsflyer/internal/AFb1zSDK;Lcom/appsflyer/internal/AFb1aSDK;Lcom/appsflyer/AppsFlyerProperties;)V

    return-object v0
.end method

.method public final declared-synchronized AFKeystoreWrapper()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFLogger()Lcom/appsflyer/PurchaseHandler;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/PurchaseHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/PurchaseHandler;

    invoke-direct {v0, p0}, Lcom/appsflyer/PurchaseHandler;-><init>(Lcom/appsflyer/internal/AFc1zSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/PurchaseHandler;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/PurchaseHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFLogger$LogLevel()Lcom/appsflyer/internal/AFb1bSDK;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1gSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/internal/AFd1gSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFb1bSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFd1jSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFd1jSDK;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFd1gSDK;-><init>(Lcom/appsflyer/internal/AFb1bSDK;Lcom/appsflyer/internal/AFd1jSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1gSDK;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1gSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized afDebugLog()Lcom/appsflyer/CreateOneLinkHttpTask;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afRDLog:Lcom/appsflyer/CreateOneLinkHttpTask;

    if-nez v0, :cond_0

    new-instance v5, Lcom/appsflyer/internal/AFd1lSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->afRDLog()Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/appsflyer/internal/AFd1lSDK;-><init>(Lcom/appsflyer/internal/AFd1qSDK;)V

    new-instance v7, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v0

    invoke-direct {v7, v0, v5}, Lcom/appsflyer/internal/AFd1kSDK;-><init>(Lcom/appsflyer/internal/AFb1aSDK;Lcom/appsflyer/internal/AFd1lSDK;)V

    new-instance v0, Lcom/appsflyer/CreateOneLinkHttpTask;

    new-instance v2, Lcom/appsflyer/internal/AFd1nSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFd1nSDK;-><init>()V

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v3

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFd1gSDK;

    move-result-object v4

    new-instance v6, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1xSDK;->onAppOpenAttributionNative()Lcom/appsflyer/internal/AFb1zSDK;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v8

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v9

    invoke-direct {v6, v1, v8, v9}, Lcom/appsflyer/internal/AFc1uSDK;-><init>(Lcom/appsflyer/internal/AFb1zSDK;Lcom/appsflyer/internal/AFb1aSDK;Lcom/appsflyer/AppsFlyerProperties;)V

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/appsflyer/CreateOneLinkHttpTask;-><init>(Lcom/appsflyer/internal/AFd1nSDK;Lcom/appsflyer/internal/AFb1aSDK;Lcom/appsflyer/internal/AFd1gSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFc1uSDK;Lcom/appsflyer/internal/AFd1kSDK;Lcom/appsflyer/internal/AFc1mSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afRDLog:Lcom/appsflyer/CreateOneLinkHttpTask;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afRDLog:Lcom/appsflyer/CreateOneLinkHttpTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFc1mSDK;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x6

    const-wide/16 v4, 0x12c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/appsflyer/internal/AFc1xSDK$4;

    invoke-direct {v7}, Lcom/appsflyer/internal/AFc1xSDK$4;-><init>()V

    new-instance v8, Lcom/appsflyer/internal/AFc1xSDK$AFa1vSDK;

    invoke-direct {v8}, Lcom/appsflyer/internal/AFc1xSDK$AFa1vSDK;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v1, Lcom/appsflyer/internal/AFc1xSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFc1xSDK$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v1, Lcom/appsflyer/internal/AFc1mSDK;

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFc1mSDK;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFc1mSDK;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFc1mSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized afInfoLog()Lcom/appsflyer/internal/AFd1bSDK;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afInfoLog:Lcom/appsflyer/internal/AFd1bSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/internal/AFd1bSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->afRDLog()Lcom/appsflyer/internal/AFd1qSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFd1bSDK;-><init>(Lcom/appsflyer/internal/AFd1qSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afInfoLog:Lcom/appsflyer/internal/AFd1bSDK;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afInfoLog:Lcom/appsflyer/internal/AFd1bSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final afRDLog()Lcom/appsflyer/internal/AFd1qSDK;
    .locals 2

    new-instance v0, Lcom/appsflyer/internal/AFc1ySDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1xSDK;->values:Lcom/appsflyer/internal/AFb1bSDK;

    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1xSDK;->valueOf(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFc1ySDK;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized afWarnLog()Lcom/appsflyer/internal/AFb1qSDK;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFb1qSDK;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLevel()Lcom/appsflyer/internal/AFa1pSDK;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFa1pSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/internal/AFa1pSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFb1bSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFa1pSDK;-><init>(Lcom/appsflyer/internal/AFb1bSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFa1pSDK;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFa1pSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized init()Lcom/appsflyer/internal/AFe1iSDK;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->getLevel:Lcom/appsflyer/internal/AFe1iSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/internal/AFe1iSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1iSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->getLevel:Lcom/appsflyer/internal/AFe1iSDK;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->getLevel:Lcom/appsflyer/internal/AFe1iSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized valueOf()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized values()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->valueOf:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->valueOf:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->valueOf:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
