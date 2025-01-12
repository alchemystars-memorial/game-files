.class public final Lcom/uqm/crashsight/proguard/k;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static b:Lcom/uqm/crashsight/proguard/k;


# instance fields
.field public a:Lcom/uqm/crashsight/proguard/j;

.field private final c:Lcom/uqm/crashsight/proguard/e;

.field private final d:Landroid/content/Context;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Object;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/k;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/k;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/k;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/k;->j:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/proguard/k;->k:I

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/k;->d:Landroid/content/Context;

    invoke-static {}, Lcom/uqm/crashsight/proguard/e;->a()Lcom/uqm/crashsight/proguard/e;

    move-result-object p1

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/k;->c:Lcom/uqm/crashsight/proguard/e;

    return-void
.end method

.method public static declared-synchronized a()Lcom/uqm/crashsight/proguard/k;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/proguard/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/k;->b:Lcom/uqm/crashsight/proguard/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/k;
    .locals 2

    const-class v0, Lcom/uqm/crashsight/proguard/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/proguard/k;->b:Lcom/uqm/crashsight/proguard/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uqm/crashsight/proguard/k;

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/proguard/k;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/uqm/crashsight/proguard/k;->b:Lcom/uqm/crashsight/proguard/k;

    :cond_0
    sget-object p0, Lcom/uqm/crashsight/proguard/k;->b:Lcom/uqm/crashsight/proguard/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/proguard/k;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/uqm/crashsight/proguard/k;->j:Ljava/lang/Object;

    return-object p0
.end method

.method private a(II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;IIZLjava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/uqm/crashsight/proguard/j;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/uqm/crashsight/proguard/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v13, p0

    :try_start_1
    iget-object v2, v13, Lcom/uqm/crashsight/proguard/k;->d:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/uqm/crashsight/proguard/l;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;IIZLjava/util/Map;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object p1, p0

    move-object/from16 p2, v0

    move/from16 p3, p9

    move/from16 p4, v1

    move-wide/from16 p5, v2

    invoke-direct/range {p1 .. p6}, Lcom/uqm/crashsight/proguard/k;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v13, p0

    :goto_0
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "[UploadManager] Upload task should not be null"

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "[UploadManager] Execute synchronized upload task (pid=%d | tid=%d) timeout (%d)"

    invoke-static {v2, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "CS_SYNC_UPLOAD"

    invoke-static {p1, v1}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_1

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue."

    invoke-static {p3, p2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v3}, Lcom/uqm/crashsight/proguard/k;->a(Ljava/lang/Runnable;Z)Z

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v1, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue."

    invoke-static {p2, p3}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v3}, Lcom/uqm/crashsight/proguard/k;->a(Ljava/lang/Runnable;Z)Z

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/proguard/k;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;ZZJ)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "[UploadManager] Add upload task (pid=%d | tid=%d)"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p4, p5}, Lcom/uqm/crashsight/proguard/k;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/uqm/crashsight/proguard/k;->a(Ljava/lang/Runnable;Z)Z

    invoke-direct {p0, v2}, Lcom/uqm/crashsight/proguard/k;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "[UploadManager] Upload task should not be null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "[UploadManager] Add upload task to queue (pid=%d | tid=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/uqm/crashsight/proguard/k;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    :try_start_1
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/k;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/uqm/crashsight/proguard/k;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "[UploadManager] Failed to add upload task to queue: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method static synthetic b(Lcom/uqm/crashsight/proguard/k;)I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/proguard/k;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/uqm/crashsight/proguard/k;->k:I

    return v0
.end method

.method private c(I)V
    .locals 13

    invoke-static {}, Lcom/uqm/crashsight/proguard/m;->a()Lcom/uqm/crashsight/proguard/m;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/proguard/k;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/k;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    iget-object v5, p0, Lcom/uqm/crashsight/proguard/k;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    const-string p1, "[UploadManager] There is no upload task in queue."

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/uqm/crashsight/proguard/m;->c()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move v5, v7

    :cond_2
    move v6, v7

    :goto_0
    if-ge v6, v3, :cond_3

    iget-object v9, p0, Lcom/uqm/crashsight/proguard/k;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v9, :cond_3

    :try_start_1
    invoke-virtual {v0, v9}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/uqm/crashsight/proguard/k;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_2
    const-string v10, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v7

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v7

    :goto_2
    if-ge v6, v5, :cond_4

    iget-object v9, p0, Lcom/uqm/crashsight/proguard/k;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v1, v9}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/uqm/crashsight/proguard/k;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v9

    :try_start_4
    const-string v10, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v7

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v2, 0x3

    if-lez v3, :cond_5

    const-string v6, "[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v6, v9}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    move v6, v7

    :goto_4
    if-ge v6, v3, :cond_8

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    if-eqz v9, :cond_8

    iget-object v10, p0, Lcom/uqm/crashsight/proguard/k;->j:Ljava/lang/Object;

    monitor-enter v10

    :try_start_5
    iget v11, p0, Lcom/uqm/crashsight/proguard/k;->k:I

    if-lt v11, v4, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1, v9}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :cond_6
    monitor-exit v10

    const-string v10, "[UploadManager] Create and start a new thread to execute a upload task: %s"

    new-array v11, v8, [Ljava/lang/Object;

    const-string v12, "CS_ASYNC_UPLOAD"

    aput-object v12, v11, v7

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v10, Lcom/uqm/crashsight/proguard/k$1;

    invoke-direct {v10, p0, v9}, Lcom/uqm/crashsight/proguard/k$1;-><init>(Lcom/uqm/crashsight/proguard/k;Ljava/lang/Runnable;)V

    const-string v11, "CS_ASYNC_UPLOAD"

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/u;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v9, p0, Lcom/uqm/crashsight/proguard/k;->j:Ljava/lang/Object;

    monitor-enter v9

    :try_start_6
    iget v10, p0, Lcom/uqm/crashsight/proguard/k;->k:I

    add-int/2addr v10, v8

    iput v10, p0, Lcom/uqm/crashsight/proguard/k;->k:I

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    monitor-exit v9

    throw p1

    :cond_7
    const-string v10, "[UploadManager] Failed to start a thread to execute asynchronous upload task, will try again next time."

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {p0, v9, v8}, Lcom/uqm/crashsight/proguard/k;->a(Ljava/lang/Runnable;Z)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catchall_3
    move-exception p1

    monitor-exit v10

    throw p1

    :cond_8
    if-lez v5, :cond_9

    const-string v0, "[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_9
    if-eqz p1, :cond_a

    new-instance v0, Lcom/uqm/crashsight/proguard/k$2;

    invoke-direct {v0, p0, v5, v1}, Lcom/uqm/crashsight/proguard/k$2;-><init>(Lcom/uqm/crashsight/proguard/k;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/proguard/m;->a(Ljava/lang/Runnable;)Z

    :cond_a
    return-void

    :catchall_4
    move-exception p1

    monitor-exit v2

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(I)J
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_4

    :try_start_0
    iget-object v4, p0, Lcom/uqm/crashsight/proguard/k;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/uqm/crashsight/proguard/k;->c:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v4, p1}, Lcom/uqm/crashsight/proguard/e;->a(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uqm/crashsight/proguard/g;

    iget-wide v4, v3, Lcom/uqm/crashsight/proguard/g;->e:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    iget-wide v0, v3, Lcom/uqm/crashsight/proguard/g;->e:J

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/k;->c:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v2, p1}, Lcom/uqm/crashsight/proguard/e;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/proguard/g;

    iget-wide v0, p1, Lcom/uqm/crashsight/proguard/g;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    :cond_4
    const-string v4, "[UploadManager] Unknown upload ID: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v4, v3}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :goto_1
    monitor-exit p0

    return-wide v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Z)J
    .locals 10

    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->b()J

    move-result-wide v0

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/uqm/crashsight/proguard/k;->c:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v4, v3}, Lcom/uqm/crashsight/proguard/e;->a(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/proguard/g;

    iget-wide v8, p1, Lcom/uqm/crashsight/proguard/g;->e:J

    cmp-long v0, v8, v0

    if-ltz v0, :cond_2

    iget-object v0, p1, Lcom/uqm/crashsight/proguard/g;->g:[B

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->c([B)J

    move-result-wide v6

    if-ne v3, v2, :cond_1

    iput-wide v6, p0, Lcom/uqm/crashsight/proguard/k;->f:J

    goto :goto_1

    :cond_1
    iput-wide v6, p0, Lcom/uqm/crashsight/proguard/k;->g:J

    :goto_1
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/uqm/crashsight/proguard/k;->c:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {p1, v4}, Lcom/uqm/crashsight/proguard/e;->a(Ljava/util/List;)V

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/k;->g:J

    goto :goto_3

    :cond_4
    iget-wide v0, p0, Lcom/uqm/crashsight/proguard/k;->f:J

    :goto_3
    move-wide v6, v0

    :cond_5
    :goto_4
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-wide/16 v0, 0x400

    div-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v5

    const-string v0, "[UploadManager] Local network consume: %d KB"

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-wide v6
.end method

.method public final a(IILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;JZ)V
    .locals 12

    :try_start_0
    new-instance v0, Lcom/uqm/crashsight/proguard/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    :try_start_1
    iget-object v2, v11, Lcom/uqm/crashsight/proguard/k;->d:Landroid/content/Context;

    const/16 v4, 0x366

    const/4 v9, 0x1

    move-object v1, v0

    move v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/uqm/crashsight/proguard/i;-><init>(Landroid/content/Context;IILcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;ZZ)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object p1, p0

    move-object p2, v0

    move p3, v1

    move/from16 p4, v2

    move-wide/from16 p5, p7

    invoke-direct/range {p1 .. p6}, Lcom/uqm/crashsight/proguard/k;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_0
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(IJ)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/uqm/crashsight/proguard/k;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/uqm/crashsight/proguard/g;

    invoke-direct {v2}, Lcom/uqm/crashsight/proguard/g;-><init>()V

    iput p1, v2, Lcom/uqm/crashsight/proguard/g;->b:I

    iput-wide p2, v2, Lcom/uqm/crashsight/proguard/g;->e:J

    const-string v3, ""

    iput-object v3, v2, Lcom/uqm/crashsight/proguard/g;->c:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v2, Lcom/uqm/crashsight/proguard/g;->d:Ljava/lang/String;

    new-array v3, v1, [B

    iput-object v3, v2, Lcom/uqm/crashsight/proguard/g;->g:[B

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/k;->c:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v3, p1}, Lcom/uqm/crashsight/proguard/e;->b(I)V

    iget-object v3, p0, Lcom/uqm/crashsight/proguard/k;->c:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/proguard/e;->a(Lcom/uqm/crashsight/proguard/g;)Z

    const-string v2, "[UploadManager] Uploading(ID:%d) time: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2, p3}, Lcom/uqm/crashsight/proguard/u;->a(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p2, "[UploadManager] Unknown uploading ID: %d"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;JZ)V
    .locals 13

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCmd()I

    move-result v4

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/lang/Object;)[B

    move-result-object v5

    :try_start_0
    new-instance v0, Lcom/uqm/crashsight/proguard/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, p0

    :try_start_1
    iget-object v2, v12, Lcom/uqm/crashsight/proguard/k;->d:Landroid/content/Context;

    const/4 v9, 0x1

    move-object v1, v0

    move v3, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/uqm/crashsight/proguard/l;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;ZZ)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v6, p0

    move-object v7, v0

    move-wide/from16 v10, p6

    invoke-direct/range {v6 .. v11}, Lcom/uqm/crashsight/proguard/k;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v12, p0

    :goto_0
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final a(ILcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;Ljava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;Z)V
    .locals 11

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/SightPkg$RequestPkg;->getCmd()I

    move-result v2

    invoke-static {p2}, Lcom/uqm/crashsight/proguard/g;->a(Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lcom/uqm/crashsight/proguard/k;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/uqm/crashsight/proguard/j;IIZLjava/util/Map;)V

    return-void
.end method

.method protected final declared-synchronized a(JZ)V
    .locals 4

    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    :try_start_0
    new-instance v1, Lcom/uqm/crashsight/proguard/g;

    invoke-direct {v1}, Lcom/uqm/crashsight/proguard/g;-><init>()V

    iput v0, v1, Lcom/uqm/crashsight/proguard/g;->b:I

    invoke-static {}, Lcom/uqm/crashsight/proguard/u;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/uqm/crashsight/proguard/g;->e:J

    const-string v2, ""

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/g;->c:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/g;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/u;->c(J)[B

    move-result-object v2

    iput-object v2, v1, Lcom/uqm/crashsight/proguard/g;->g:[B

    iget-object v2, p0, Lcom/uqm/crashsight/proguard/k;->c:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v2, v0}, Lcom/uqm/crashsight/proguard/e;->b(I)V

    iget-object v0, p0, Lcom/uqm/crashsight/proguard/k;->c:Lcom/uqm/crashsight/proguard/e;

    invoke-virtual {v0, v1}, Lcom/uqm/crashsight/proguard/e;->a(Lcom/uqm/crashsight/proguard/g;)Z

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/uqm/crashsight/proguard/k;->g:J

    goto :goto_1

    :cond_1
    iput-wide p1, p0, Lcom/uqm/crashsight/proguard/k;->f:J

    :goto_1
    const-string p3, "[UploadManager] Network total consume: %d KB"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-wide/16 v2, 0x400

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(I)Z
    .locals 7

    sget-boolean v0, Lcom/uqm/crashsight/b;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Uploading frequency will not be checked if SDK is in debug mode."

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/proguard/k;->a(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "[UploadManager] Time interval is %d seconds since last uploading(ID: %d)."

    invoke-static {p1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v5, 0x7530

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "[UploadManager] Data only be uploaded once in %d seconds."

    invoke-static {v0, p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v2

    :cond_1
    return v1
.end method
