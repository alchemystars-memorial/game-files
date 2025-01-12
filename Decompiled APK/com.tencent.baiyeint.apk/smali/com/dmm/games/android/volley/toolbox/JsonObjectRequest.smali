.class public Lcom/dmm/games/android/volley/toolbox/JsonObjectRequest;
.super Lcom/dmm/games/android/volley/toolbox/JsonRequest;
.source "JsonObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dmm/games/android/volley/toolbox/JsonRequest<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/dmm/games/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/dmm/games/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/dmm/games/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/dmm/games/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v2, v0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/dmm/games/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/dmm/games/android/volley/NetworkResponse;)Lcom/dmm/games/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/NetworkResponse;",
            ")",
            "Lcom/dmm/games/android/volley/Response<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/dmm/games/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/dmm/games/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string/jumbo v3, "utf-8"

    invoke-static {v2, v3}, Lcom/dmm/games/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dmm/games/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/dmm/games/android/volley/NetworkResponse;)Lcom/dmm/games/android/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/dmm/games/android/volley/Response;->success(Ljava/lang/Object;Lcom/dmm/games/android/volley/Cache$Entry;)Lcom/dmm/games/android/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/dmm/games/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/dmm/games/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/dmm/games/android/volley/Response;->error(Lcom/dmm/games/android/volley/VolleyError;)Lcom/dmm/games/android/volley/Response;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lcom/dmm/games/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/dmm/games/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/dmm/games/android/volley/Response;->error(Lcom/dmm/games/android/volley/VolleyError;)Lcom/dmm/games/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
