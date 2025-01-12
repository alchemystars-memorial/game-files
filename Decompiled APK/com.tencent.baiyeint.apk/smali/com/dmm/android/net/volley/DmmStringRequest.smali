.class public Lcom/dmm/android/net/volley/DmmStringRequest;
.super Lcom/dmm/games/android/volley/toolbox/StringRequest;
.source "DmmStringRequest.java"


# instance fields
.field protected mBodyJsonObject:Lorg/json/JSONObject;

.field protected mBodyParameter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected requestHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/games/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->mBodyParameter:Ljava/util/Map;

    iput-object p1, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->mBodyJsonObject:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->requestHeader:Ljava/util/Map;

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

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/dmm/android/net/volley/DmmStringRequest;-><init>(ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->mBodyParameter:Ljava/util/Map;

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

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/dmm/android/net/volley/DmmStringRequest;-><init>(ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->mBodyJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
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

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dmm/android/net/volley/DmmStringRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    iput-object p4, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->requestHeader:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 1
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

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dmm/android/net/volley/DmmStringRequest;-><init>(ILjava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dmm/games/android/volley/AuthFailureError;
        }
    .end annotation

    invoke-super {p0}, Lcom/dmm/games/android/volley/toolbox/StringRequest;->getBody()[B

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->mBodyJsonObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dmm/android/net/volley/DmmStringRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->mBodyJsonObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v0, "application/json"

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/dmm/games/android/volley/toolbox/StringRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->requestHeader:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/dmm/games/android/volley/toolbox/StringRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/dmm/android/net/volley/DmmStringRequest;->mBodyParameter:Ljava/util/Map;

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/dmm/games/android/volley/toolbox/StringRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
