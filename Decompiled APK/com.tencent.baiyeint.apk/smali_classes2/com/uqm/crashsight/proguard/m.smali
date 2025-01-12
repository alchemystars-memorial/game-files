.class public Lcom/uqm/crashsight/proguard/m;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Lcom/uqm/crashsight/proguard/m;


# instance fields
.field private c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/m;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/uqm/crashsight/proguard/m$1;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/proguard/m$1;-><init>(Lcom/uqm/crashsight/proguard/m;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/m;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[AsyncTaskHandler] ScheduledExecutorService is not valiable!"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/proguard/m;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/proguard/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/m;->b:Lcom/uqm/crashsight/proguard/m;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uqm/crashsight/proguard/m;

    invoke-direct {v1}, Lcom/uqm/crashsight/proguard/m;-><init>()V

    sput-object v1, Lcom/uqm/crashsight/proguard/m;->b:Lcom/uqm/crashsight/proguard/m;

    :cond_0
    sget-object v1, Lcom/uqm/crashsight/proguard/m;->b:Lcom/uqm/crashsight/proguard/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/proguard/m;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/proguard/m;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "[AsyncTaskHandler] Async handler was closed, should not post task."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return v1

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "[AsyncTaskHandler] Task input is null."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    const-string v0, "[AsyncTaskHandler] Post a normal task: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "[report] postANormalTask"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/m;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string p1, "[report] postANormalTask end"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    :try_start_4
    sget-boolean v0, Lcom/uqm/crashsight/b;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/proguard/m;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "[AsyncTaskHandler] Async handler was closed, should not post task."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    :try_start_1
    const-string v0, "[AsyncTaskHandler] Post a delay(time: %dms) task: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/m;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    :try_start_3
    sget-boolean p2, Lcom/uqm/crashsight/b;->c:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/m;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[AsyncTaskHandler] Close async handler."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/m;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/uqm/crashsight/proguard/m;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
