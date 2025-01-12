.class public Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;
.super Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;
.source "DmmSandboxLoginRequestCreatedHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper$ApiKey;
    }
.end annotation


# static fields
.field private static final ENDPOINT_URL:Ljava/lang/String; = "http://sba-netgame.dmm.com/sp/api/android/"

.field public static final SANDBOX_LOGIN_COMMAND:Ljava/lang/String; = "Auth.LoginSmartPhone"


# instance fields
.field private mApplicationId:Ljava/lang/String;

.field private mLoginId:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "http://sba-netgame.dmm.com/sp/api/android/"

    invoke-direct {p0, v0}, Lcom/dmm/android/api/mobile/DmmApiRequestCreatedHelper;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;->mLoginId:Ljava/lang/String;

    iput-object p2, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;->mPassword:Ljava/lang/String;

    iput-object p3, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;->mApplicationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "Auth.LoginSmartPhone"

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameter()Ljava/util/Map;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostParameter()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "1"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "loginId"

    iget-object v4, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;->mLoginId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "password"

    iget-object v4, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "jpStatus"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isAdult"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "remoteAddress"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "loginKind"

    const-string v3, "dmmportal"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "httpAcceptLanguage"

    const-string v3, "ja"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v3, "message"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginRequestCreatedHelper;->mApplicationId:Ljava/lang/String;

    const-string v3, "appid"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "params"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/dmm/android/api/mobile/DmmApiResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSandboxResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/dmm/android/api/mobile/sandbox/connection/DmmSandboxApiResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/dmm/android/api/mobile/sandbox/login/DmmSandboxLoginResponse;

    return-object v0
.end method
