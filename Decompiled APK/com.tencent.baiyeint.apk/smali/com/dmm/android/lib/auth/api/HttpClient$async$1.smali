.class final Lcom/dmm/android/lib/auth/api/HttpClient$async$1;
.super Ljava/lang/Object;
.source "HttpClient.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dmm/android/lib/auth/api/HttpClient;->async(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        "call"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/dmm/android/lib/auth/api/HttpCallback;

.field final synthetic $request:Lcom/dmm/android/lib/auth/api/HttpRequest;


# direct methods
.method constructor <init>(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1;->$request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    iput-object p2, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1;->$callback:Lcom/dmm/android/lib/auth/api/HttpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lcom/dmm/android/lib/auth/api/HttpResponse;
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v3, v1

    check-cast v3, Lcom/dmm/android/lib/auth/api/HttpResponse;

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :try_start_0
    sget-object v3, Lcom/dmm/android/lib/auth/api/HttpConnection;->INSTANCE:Lcom/dmm/android/lib/auth/api/HttpConnection;

    iget-object v4, p0, Lcom/dmm/android/lib/auth/api/HttpClient$async$1;->$request:Lcom/dmm/android/lib/auth/api/HttpRequest;

    invoke-virtual {v3, v4}, Lcom/dmm/android/lib/auth/api/HttpConnection;->connect(Lcom/dmm/android/lib/auth/api/HttpRequest;)Lcom/dmm/android/lib/auth/api/HttpResponse;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    iput-boolean v3, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/dmm/android/lib/auth/api/HttpClient$async$1$1;-><init>(Lcom/dmm/android/lib/auth/api/HttpClient$async$1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/dmm/android/lib/auth/api/HttpResponse;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/HttpClient$async$1;->call()Lcom/dmm/android/lib/auth/api/HttpResponse;

    move-result-object v0

    return-object v0
.end method
