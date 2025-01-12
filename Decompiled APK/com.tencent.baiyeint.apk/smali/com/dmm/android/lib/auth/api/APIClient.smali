.class public abstract Lcom/dmm/android/lib/auth/api/APIClient;
.super Ljava/lang/Object;
.source "APIClient.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/dmm/android/lib/auth/api/HttpCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008 \u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u0017\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0010H$J\u0008\u0010\u0011\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/APIClient;",
        "T",
        "Lcom/dmm/android/lib/auth/api/HttpCallback;",
        "",
        "client",
        "Lcom/dmm/android/lib/auth/api/HttpClient;",
        "(Lcom/dmm/android/lib/auth/api/HttpClient;)V",
        "future",
        "Ljava/util/concurrent/Future;",
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        "cancel",
        "",
        "connect",
        "callback",
        "(Lcom/dmm/android/lib/auth/api/HttpCallback;)V",
        "createRequest",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "waiting",
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
.field private final client:Lcom/dmm/android/lib/auth/api/HttpClient;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/dmm/android/lib/auth/api/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dmm/android/lib/auth/api/HttpClient;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/APIClient;->client:Lcom/dmm/android/lib/auth/api/HttpClient;

    return-void
.end method

.method public static synthetic connect$default(Lcom/dmm/android/lib/auth/api/APIClient;Lcom/dmm/android/lib/auth/api/HttpCallback;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Lcom/dmm/android/lib/auth/api/HttpCallback;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dmm/android/lib/auth/api/APIClient;->connect(Lcom/dmm/android/lib/auth/api/HttpCallback;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: connect"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/APIClient;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final connect(Lcom/dmm/android/lib/auth/api/HttpCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/dmm/android/lib/auth/api/APIClient;->client:Lcom/dmm/android/lib/auth/api/HttpClient;

    invoke-virtual {p0}, Lcom/dmm/android/lib/auth/api/APIClient;->createRequest()Lcom/dmm/android/lib/auth/api/HttpRequest;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/dmm/android/lib/auth/api/HttpClient;->connect(Lcom/dmm/android/lib/auth/api/HttpRequest;Lcom/dmm/android/lib/auth/api/HttpCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/lib/auth/api/APIClient;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method protected abstract createRequest()Lcom/dmm/android/lib/auth/api/HttpRequest;
.end method

.method public final waiting()Lcom/dmm/android/lib/auth/api/HttpResponse;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/lib/auth/api/APIClient;->future:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dmm/android/lib/auth/api/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    return-object v0
.end method
