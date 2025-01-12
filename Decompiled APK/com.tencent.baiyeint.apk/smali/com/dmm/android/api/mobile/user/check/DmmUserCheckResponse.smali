.class public Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;
.super Lcom/dmm/android/api/mobile/DmmApiResponse;
.source "DmmUserCheckResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse$JsonKey;
    }
.end annotation


# instance fields
.field private mOAuthToken:Ljava/lang/String;

.field private mOAuthTokenSecret:Ljava/lang/String;

.field private mSecurityToken:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dmm/android/api/mobile/DmmApiResponse;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/dmm/android/api/mobile/DmmApiResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "user_id"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->mUserId:Ljava/lang/String;

    const-string p1, "oauth_token"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->mOAuthToken:Ljava/lang/String;

    const-string p1, "oauth_token_secret"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->mOAuthTokenSecret:Ljava/lang/String;

    const-string/jumbo p1, "st"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->mSecurityToken:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getOAuthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->mOAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->mOAuthTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->mSecurityToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/mobile/user/check/DmmUserCheckResponse;->mUserId:Ljava/lang/String;

    return-object v0
.end method
