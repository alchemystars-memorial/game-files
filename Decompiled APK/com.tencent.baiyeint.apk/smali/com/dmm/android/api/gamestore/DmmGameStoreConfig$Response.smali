.class public Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;
.super Ljava/lang/Object;
.source "DmmGameStoreConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/android/api/gamestore/DmmGameStoreConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response$JsonKey;
    }
.end annotation


# instance fields
.field private mConfigGetEndpoint:Ljava/lang/String;

.field mResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUserCheckEndpoint:Ljava/lang/String;

.field private mUserStEndpoint:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/dmm/android/util/Util;->convertJsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mResponse:Ljava/util/Map;

    invoke-direct {p0}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->parse()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject;Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method private parse()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mResponse:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "endpoint"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v0, Ljava/util/Map;

    const-string v1, "get_config"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mConfigGetEndpoint:Ljava/lang/String;

    :cond_2
    const-string v1, "check_user"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mUserCheckEndpoint:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "update_security_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mUserStEndpoint:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mConfigGetEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mUserCheckEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mUserStEndpoint:Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mConfigGetEndpoint:Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mUserCheckEndpoint:Ljava/lang/String;

    iput-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mUserStEndpoint:Ljava/lang/String;

    :cond_6
    return-void
.end method


# virtual methods
.method public getConfigGetEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mConfigGetEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCheckEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mUserCheckEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/gamestore/DmmGameStoreConfig$Response;->mUserStEndpoint:Ljava/lang/String;

    return-object v0
.end method
