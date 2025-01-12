.class public Lcom/dmm/android/api/mobile/DmmApiResponseParser;
.super Ljava/lang/Object;
.source "DmmApiResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;,
        Lcom/dmm/android/api/mobile/DmmApiResponseParser$ResultJsonKeys;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Lorg/json/JSONObject;)Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;-><init>(Lcom/dmm/android/api/mobile/DmmApiResponseParser$1;)V

    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->setCode(Ljava/lang/String;)V

    :cond_0
    const-string v1, "error_no"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->setErrorNo(I)V

    :cond_1
    const-string v1, "error_message"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->setErrorMessage(Ljava/lang/String;)V

    :cond_2
    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->setResult(Ljava/util/Map;)V

    :cond_5
    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/dmm/android/api/mobile/DmmApiResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/dmm/android/api/mobile/DmmApiResponse;",
            ">;)",
            "Lcom/dmm/android/api/mobile/DmmApiResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lcom/dmm/android/api/mobile/DmmApiResponseParser;->decode(Lorg/json/JSONObject;)Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;

    move-result-object p0

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/util/Map;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/Integer;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->access$000(Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p0}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->access$100(Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p0}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->access$200(Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p0}, Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;->access$300(Lcom/dmm/android/api/mobile/DmmApiResponseParser$JsonResponse;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dmm/android/api/mobile/DmmApiResponse;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
