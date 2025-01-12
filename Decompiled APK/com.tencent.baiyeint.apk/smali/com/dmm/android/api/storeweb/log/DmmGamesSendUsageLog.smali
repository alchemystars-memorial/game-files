.class public Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLog;
.super Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;
.source "DmmGamesSendUsageLog.java"


# static fields
.field private static final GSON:Lcom/dmm/games/gson/Gson;

.field private static final URL_PATH:Ljava/lang/String; = "/log/sdk/usage"


# instance fields
.field private requestJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/games/gson/Gson;

    invoke-direct {v0}, Lcom/dmm/games/gson/Gson;-><init>()V

    sput-object v0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLog;->GSON:Lcom/dmm/games/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;-><init>(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p2, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLog;->GSON:Lcom/dmm/games/gson/Gson;

    invoke-virtual {p2, p1}, Lcom/dmm/games/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLog;->requestJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getMethod()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getRequestJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLog;->requestJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected getUrlPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/log/sdk/usage"

    return-object v0
.end method
