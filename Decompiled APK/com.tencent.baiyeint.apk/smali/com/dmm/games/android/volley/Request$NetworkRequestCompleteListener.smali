.class interface abstract Lcom/dmm/games/android/volley/Request$NetworkRequestCompleteListener;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/games/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "NetworkRequestCompleteListener"
.end annotation


# virtual methods
.method public abstract onNoUsableResponseReceived(Lcom/dmm/games/android/volley/Request;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onResponseReceived(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;",
            "Lcom/dmm/games/android/volley/Response<",
            "*>;)V"
        }
    .end annotation
.end method
