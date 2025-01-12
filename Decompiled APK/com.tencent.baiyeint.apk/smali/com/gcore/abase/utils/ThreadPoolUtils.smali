.class public Lcom/gcore/abase/utils/ThreadPoolUtils;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcore/abase/utils/ThreadPoolUtils$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "THREAD_POOL_UTILS"


# instance fields
.field private service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gcore/abase/utils/ThreadPoolUtils;->service:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    const-string v0, "THREAD_POOL_UTILS"

    const-string v1, "Get CPU number failed."

    invoke-static {v0, v1}, Lcom/gcore/abase/log/XLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/gcore/abase/utils/ThreadPoolUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/gcore/abase/utils/ThreadPoolUtils;-><init>()V

    return-void
.end method

.method public static getThreadPoolSingleton()Lcom/gcore/abase/utils/ThreadPoolUtils;
    .locals 1

    invoke-static {}, Lcom/gcore/abase/utils/ThreadPoolUtils$SingletonHolder;->access$100()Lcom/gcore/abase/utils/ThreadPoolUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/gcore/abase/utils/ThreadPoolUtils;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
