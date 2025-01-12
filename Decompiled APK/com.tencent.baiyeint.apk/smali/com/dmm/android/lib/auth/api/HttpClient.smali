.class public final Lcom/dmm/android/lib/auth/api/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\"\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\"\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\"\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/HttpClient;",
        "",
        "connectCount",
        "",
        "(I)V",
        "executorService",
        "Ljava/util/concurrent/ExecutorService;",
        "(Ljava/util/concurrent/ExecutorService;)V",
        "isSync",
        "",
        "()Z",
        "setSync",
        "(Z)V",
        "async",
        "Ljava/util/concurrent/Future;",
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        "request",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "callback",
        "Lcom/dmm/android/lib/auth/api/HttpCallback;",
        "connect",
        "sync",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private isSync:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    :goto_0
    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/dmm/android/lib/auth/api/HttpClient;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    const-string v0, "executorService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private final async(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/lib/auth/api/HttpRequest;",
            "Lcom/dmm/android/lib/auth/api/HttpCallback;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/dmm/android/lib/auth/api/HttpResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/dmm/android/lib/auth/api/HttpClient$async$1;

    invoke-direct {v1, p1, p2}, Lcom/dmm/android/lib/auth/api/HttpClient$async$1;-><init>(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)V

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string p2, "executorService.submit(C\u2026@Callable response\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic connect$default(Lcom/dmm/android/lib/auth/api/HttpClient;Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;ILjava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lcom/dmm/android/lib/auth/api/HttpCallback;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/HttpClient;->connect(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method private final sync(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/lib/auth/api/HttpRequest;",
            "Lcom/dmm/android/lib/auth/api/HttpCallback;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/dmm/android/lib/auth/api/HttpResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/dmm/android/lib/auth/api/HttpClient$sync$future$1;

    invoke-direct {v1, p1}, Lcom/dmm/android/lib/auth/api/HttpClient$sync$future$1;-><init>(Lcom/dmm/android/lib/auth/api/HttpRequest;)V

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "future.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/dmm/android/lib/auth/api/HttpResponse;

    invoke-interface {p2, v0}, Lcom/dmm/android/lib/auth/api/HttpCallback;->onResponse(Lcom/dmm/android/lib/auth/api/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p2, v0}, Lcom/dmm/android/lib/auth/api/HttpCallback;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string p2, "future"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final connect(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/lib/auth/api/HttpRequest;",
            "Lcom/dmm/android/lib/auth/api/HttpCallback;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/dmm/android/lib/auth/api/HttpResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/dmm/android/lib/auth/api/HttpCallback;->onStart(Lcom/dmm/android/lib/auth/api/HttpRequest;)V

    :cond_0
    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient;->isSync:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/HttpClient;->sync(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/dmm/android/lib/auth/api/HttpClient;->async(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final isSync()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dmm/android/lib/auth/api/HttpClient;->isSync:Z

    return v0
.end method

.method public final setSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dmm/android/lib/auth/api/HttpClient;->isSync:Z

    return-void
.end method
