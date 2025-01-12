.class public Lcom/gamesafe/ano/AnoInfoPublisher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamesafe/ano/AnoInfoPublisher$AnoInfoReceiver;
    }
.end annotation


# static fields
.field public static final ANO_INFO_TYPE_DETECT_RESULT:I = 0x1

.field public static final ANO_INFO_TYPE_HEARTBEAT:I = 0x2

.field private static volatile a:Lcom/gamesafe/ano/AnoInfoPublisher; = null

.field private static b:Ljava/lang/Thread; = null

.field private static volatile c:Z = false


# instance fields
.field private d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gamesafe/ano/AnoInfoPublisher;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private static a()I
    .locals 1

    :try_start_0
    const-string v0, "dgx_jkzi_kdkz"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gamesafe/ano/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/gamesafe/ano/AnoInfoPublisher;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/gamesafe/ano/AnoInfoPublisher;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gamesafe/ano/AnoInfoPublisher$AnoInfoReceiver;

    invoke-interface {v1, p1, p2}, Lcom/gamesafe/ano/AnoInfoPublisher$AnoInfoReceiver;->onReceive(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static b()V
    .locals 1

    :try_start_0
    const-string v0, "dgx_xgjnz_kdkz"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gamesafe/ano/b;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "dgx_mzxq_kdkz"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gamesafe/ano/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "-1"

    return-object v0
.end method

.method public static getInstance()Lcom/gamesafe/ano/AnoInfoPublisher;
    .locals 2

    sget-object v0, Lcom/gamesafe/ano/AnoInfoPublisher;->a:Lcom/gamesafe/ano/AnoInfoPublisher;

    if-nez v0, :cond_1

    const-class v0, Lcom/gamesafe/ano/AnoInfoPublisher;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/gamesafe/ano/AnoInfoPublisher;->a:Lcom/gamesafe/ano/AnoInfoPublisher;

    if-nez v1, :cond_0

    new-instance v1, Lcom/gamesafe/ano/AnoInfoPublisher;

    invoke-direct {v1}, Lcom/gamesafe/ano/AnoInfoPublisher;-><init>()V

    sput-object v1, Lcom/gamesafe/ano/AnoInfoPublisher;->a:Lcom/gamesafe/ano/AnoInfoPublisher;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/gamesafe/ano/AnoInfoPublisher;->a:Lcom/gamesafe/ano/AnoInfoPublisher;

    return-object v0
.end method


# virtual methods
.method public registAnoInfoReceiver(Lcom/gamesafe/ano/AnoInfoPublisher$AnoInfoReceiver;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/gamesafe/ano/AnoInfoPublisher;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gamesafe/ano/AnoInfoPublisher;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-boolean p1, Lcom/gamesafe/ano/AnoInfoPublisher;->c:Z

    if-nez p1, :cond_2

    const-class p1, Lcom/gamesafe/ano/AnoSdk;

    monitor-enter p1

    :try_start_1
    sget-boolean v0, Lcom/gamesafe/ano/AnoInfoPublisher;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gamesafe/ano/AnoInfoPublisher;->c:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-static {}, Lcom/gamesafe/ano/AnoInfoPublisher;->getInstance()Lcom/gamesafe/ano/AnoInfoPublisher;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/gamesafe/ano/AnoInfoPublisher;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public run()V
    .locals 5

    invoke-static {}, Lcom/gamesafe/ano/AnoInfoPublisher;->a()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sput-boolean v2, Lcom/gamesafe/ano/AnoInfoPublisher;->c:Z

    return-void

    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/gamesafe/ano/AnoInfoPublisher;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/gamesafe/ano/AnoInfoPublisher;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/gamesafe/ano/AnoInfoPublisher;->b()V

    sput-boolean v2, Lcom/gamesafe/ano/AnoInfoPublisher;->c:Z

    throw v0

    :catch_1
    :cond_4
    :goto_1
    invoke-static {}, Lcom/gamesafe/ano/AnoInfoPublisher;->b()V

    sput-boolean v2, Lcom/gamesafe/ano/AnoInfoPublisher;->c:Z

    return-void
.end method
