.class public Lcom/dmm/games/android/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/dmm/games/android/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dmm/games/android/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/dmm/games/android/volley/ExecutorDelivery$1;-><init>(Lcom/dmm/games/android/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/games/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public postError(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;",
            "Lcom/dmm/games/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/dmm/games/android/volley/Response;->error(Lcom/dmm/games/android/volley/VolleyError;)Lcom/dmm/games/android/volley/Response;

    move-result-object p2

    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;",
            "Lcom/dmm/games/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dmm/games/android/volley/ExecutorDelivery;->postResponse(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;",
            "Lcom/dmm/games/android/volley/Response<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->markDelivered()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p1, p2, p3}, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
