.class public Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;
.super Ljava/lang/Object;
.source "DmmAccessTokenUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$SingletonHolder;,
        Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;
    }
.end annotation


# static fields
.field private static final TWENTY_FOURS_HOUR_OF_MILLIS:J = 0x5265c00L

.field private static final UPDATE_CHECK_INTERVAL:J = 0x927c0L


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private volatile hasStop:Z

.field private updateHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->hasStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->hasStop:Z

    return p0
.end method

.method static synthetic access$300(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->postTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static getInstance()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;
    .locals 1

    invoke-static {}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$SingletonHolder;->access$000()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    const-string v0, "DmmAccessTokenUpdater initialized"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Dmm_access_token_update_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->updateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->hasStop:Z

    return-void
.end method

.method private postTask(Ljava/lang/Runnable;J)V
    .locals 3

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->updateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->updateHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    iget-boolean v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->hasStop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->init()V

    new-instance v0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$UpdateTask;-><init>(Lcom/intlgame/dmm/task/DmmAccessTokenUpdater$1;)V

    const-wide/32 v1, 0x927c0

    invoke-direct {p0, v0, v1, v2}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->postTask(Ljava/lang/Runnable;J)V

    const-string v0, "DmmAccessTokenUpdater started"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->hasStop:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->updateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->updateHandler:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->hasStop:Z

    iget-object v0, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->handlerThread:Landroid/os/HandlerThread;

    :cond_1
    const-string v0, "DmmAccessTokenUpdater has stopped"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
