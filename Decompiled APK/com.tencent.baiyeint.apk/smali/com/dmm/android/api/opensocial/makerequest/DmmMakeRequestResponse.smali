.class public Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse;
.super Ljava/lang/Object;
.source "DmmMakeRequestResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallbackResponseData(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->getJson()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->getJson()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v0

    :cond_1
    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;

    invoke-direct {v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;-><init>()V

    invoke-static {v2, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->access$002(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "body"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->access$102(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rc"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->access$202(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;I)I

    const-string v1, "headers"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v2, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->access$302(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;Ljava/util/Map;)Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->access$300(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2, v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;->access$302(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestResponse$CallbackResponse;Ljava/util/Map;)Ljava/util/Map;

    :cond_3
    return-object v2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v0
.end method
