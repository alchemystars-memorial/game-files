.class public final Lcom/intlgame/dmm/task/DmmTaskDispatcher;
.super Ljava/lang/Object;
.source "DmmTaskDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/dmm/task/DmmTaskDispatcher$SingletonHolder;
    }
.end annotation


# instance fields
.field private volatile stop:Z

.field private volatile taskQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/intlgame/dmm/task/DmmSerialTask;",
            ">;"
        }
    .end annotation
.end field

.field private volatile taskRunning:Z

.field private thread:Landroid/os/HandlerThread;

.field final timerHandler:Landroid/os/Handler;

.field private workingHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->stop:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->timerHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/dmm/task/DmmTaskDispatcher$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/intlgame/dmm/task/DmmTaskDispatcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->stop:Z

    return p0
.end method

.method static synthetic access$200(Lcom/intlgame/dmm/task/DmmTaskDispatcher;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getInstance()Lcom/intlgame/dmm/task/DmmTaskDispatcher;
    .locals 1

    sget-object v0, Lcom/intlgame/dmm/task/DmmTaskDispatcher$SingletonHolder;->mInstance:Lcom/intlgame/dmm/task/DmmTaskDispatcher;

    return-object v0
.end method

.method private init()V
    .locals 2

    const-string v0, "Dmm task manager initialized."

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->stop:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskQueue:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Dmm working thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->workingHandler:Landroid/os/Handler;

    return-void
.end method

.method private runTask()V
    .locals 6

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskRunning:Z

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->workingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/intlgame/dmm/task/DmmTaskDispatcher$1;

    invoke-direct {v1, p0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher$1;-><init>(Lcom/intlgame/dmm/task/DmmTaskDispatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->timerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/intlgame/dmm/task/DmmTaskDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/intlgame/dmm/task/DmmTaskDispatcher;)V

    const/16 v2, 0x2d

    invoke-static {v2}, Lcom/intlgame/api/auth/INTLAuth;->getPluginWebAuthOverTime(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskRunning:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized dispatch(Lcom/intlgame/dmm/task/DmmSerialTask;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->stop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->init()V

    :cond_0
    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskRunning:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->runTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized dispatchNext()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->runTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->stop:Z

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskRunning:Z

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->taskQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intlgame/dmm/task/DmmTaskDispatcher;->workingHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
