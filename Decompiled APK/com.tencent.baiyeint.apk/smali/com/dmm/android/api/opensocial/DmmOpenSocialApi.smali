.class public interface abstract Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.super Ljava/lang/Object;
.source "DmmOpenSocialApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;,
        Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;,
        Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;,
        Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;,
        Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Builder;,
        Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$SupportApi;
    }
.end annotation


# virtual methods
.method public abstract addParameter(Lcom/dmm/android/api/opensocial/DmmParameterHelper;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract addParameter(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;"
        }
    .end annotation
.end method

.method public abstract addParameter(Lorg/json/JSONObject;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method

.method public abstract clearParameter()Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract connectAsync()V
.end method

.method public abstract connectSync()Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;
.end method

.method public abstract setCallback(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract setGuid(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract setGuid(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract setId(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract setId(Ljava/util/List;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;"
        }
    .end annotation
.end method

.method public abstract setId([Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract setMethod(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract setRequestType(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract setSelector(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract setSelector(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method

.method public abstract setTag(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
.end method
