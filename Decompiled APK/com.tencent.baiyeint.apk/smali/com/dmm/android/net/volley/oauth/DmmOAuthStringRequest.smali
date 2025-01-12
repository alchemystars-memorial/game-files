.class public Lcom/dmm/android/net/volley/oauth/DmmOAuthStringRequest;
.super Lcom/dmm/android/net/volley/DmmStringRequest;
.source "DmmOAuthStringRequest.java"

# interfaces
.implements Lcom/dmm/android/net/volley/oauth/DmmOAuthRequest;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/dmm/games/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/android/net/volley/DmmStringRequest;-><init>(ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/dmm/android/net/volley/DmmStringRequest;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/dmm/games/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/dmm/android/net/volley/DmmStringRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dmm/games/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/dmm/android/net/volley/DmmStringRequest;-><init>(Ljava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 1
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

    invoke-super {p0}, Lcom/dmm/android/net/volley/DmmStringRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
