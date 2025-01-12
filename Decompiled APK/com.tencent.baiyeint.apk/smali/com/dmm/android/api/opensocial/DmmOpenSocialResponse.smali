.class public Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;
.super Ljava/lang/Object;
.source "DmmOpenSocialResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x298c071a1b96bcdfL


# instance fields
.field private mCause:Ljava/lang/Throwable;

.field private mHttpStatus:I

.field private mJsonInternal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient mJsonResponse:Lorg/json/JSONObject;

.field private mKind:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    iget v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mHttpStatus:I

    return v0
.end method

.method public getJson()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mJsonResponse:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mJsonInternal:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mJsonInternal:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mJsonResponse:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mJsonResponse:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getKind()Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mKind:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    return-object v0
.end method

.method public isCancel()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mKind:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    sget-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Cancel:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailure()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mKind:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    sget-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Failure:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mKind:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    sget-object v1, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;->Success:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCause(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mCause:Ljava/lang/Throwable;

    return-void
.end method

.method public setFrom(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->getKind()Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setKind(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;)V

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->getHttpStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setHttpStatus(I)V

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->getJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setJsonResponse(Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->setCause(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setHttpStatus(I)V
    .locals 0

    iput p1, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mHttpStatus:I

    return-void
.end method

.method public setJsonResponse(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mJsonInternal:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iput-object p1, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mJsonResponse:Lorg/json/JSONObject;

    return-void
.end method

.method public setKind(Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;->mKind:Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse$Kind;

    return-void
.end method
