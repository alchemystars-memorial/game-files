.class Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/games/android/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/dmm/games/android/volley/Request;

.field private final mResponse:Lcom/dmm/games/android/volley/Response;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/dmm/games/android/volley/Request;

    iput-object p2, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/dmm/games/android/volley/Response;

    iput-object p3, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/dmm/games/android/volley/Request;

    invoke-virtual {v0}, Lcom/dmm/games/android/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/dmm/games/android/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/Request;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/dmm/games/android/volley/Response;

    invoke-virtual {v0}, Lcom/dmm/games/android/volley/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/dmm/games/android/volley/Request;

    iget-object v1, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/dmm/games/android/volley/Response;

    iget-object v1, v1, Lcom/dmm/games/android/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/Request;->deliverResponse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/dmm/games/android/volley/Request;

    iget-object v1, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/dmm/games/android/volley/Response;

    iget-object v1, v1, Lcom/dmm/games/android/volley/Response;->error:Lcom/dmm/games/android/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/Request;->deliverError(Lcom/dmm/games/android/volley/VolleyError;)V

    :goto_0
    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/dmm/games/android/volley/Response;

    iget-boolean v0, v0, Lcom/dmm/games/android/volley/Response;->intermediate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/dmm/games/android/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/Request;->addMarker(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/dmm/games/android/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/dmm/games/android/volley/Request;->finish(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/dmm/games/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
