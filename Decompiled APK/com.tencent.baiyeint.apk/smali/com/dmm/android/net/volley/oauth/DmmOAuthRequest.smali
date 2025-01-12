.class public interface abstract Lcom/dmm/android/net/volley/oauth/DmmOAuthRequest;
.super Ljava/lang/Object;
.source "DmmOAuthRequest.java"


# virtual methods
.method public abstract getParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/games/android/volley/AuthFailureError;
        }
    .end annotation
.end method
