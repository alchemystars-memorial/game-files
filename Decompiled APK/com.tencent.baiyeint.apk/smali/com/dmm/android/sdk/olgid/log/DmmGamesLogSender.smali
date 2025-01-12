.class public Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;
.super Ljava/lang/Object;
.source "DmmGamesLogSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;,
        Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;
    }
.end annotation


# static fields
.field private static final SDK_TYPE_FORMAT:Ljava/lang/String; = "ANDROID_OLGID_%s"

.field public static final SDK_TYPE_NATIVE_SDK:Ljava/lang/String; = "NATIVE"

.field private static isUsageLogEnable:Z = true

.field private static requestModel:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

.field private static sdkType:Ljava/lang/String;

.field private static sdkVersion:Ljava/lang/String;

.field private static userUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSdkInfo(Ljava/lang/String;Z)V
    .locals 7

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->requestModel:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;

    sget-object v2, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sdkType:Ljava/lang/String;

    sget-object v3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sdkVersion:Ljava/lang/String;

    sget-object v5, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->userUUID:Ljava/lang/String;

    move-object v1, v0

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

    invoke-direct {p0, v0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;-><init>(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$SdkInfo;)V

    sput-object p0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->requestModel:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->PRODUCTION:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    invoke-static {p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->setEndpoint(Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;)V

    sput-boolean v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->isUsageLogEnable:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isSandbox()Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->isUsageLogEnable:Z

    return-void

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->isUsageLogEnable:Z

    sget-object v2, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->PRODUCTION:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isDevelop()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->DEVELOP:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isStaging()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->STAGING:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->setEndpoint(Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;)V

    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogUserId;->getUserIdForLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->userUUID:Ljava/lang/String;

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "ANDROID_OLGID_%s"

    invoke-static {p0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sdkType:Ljava/lang/String;

    sput-object p3, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->getApplicationID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgIdSetting;->isEmulator()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->createSdkInfo(Ljava/lang/String;Z)V

    sget-object p0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->INIT:Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;

    invoke-static {p0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V

    return-void
.end method

.method public static sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V

    return-void
.end method

.method public static sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Lcom/dmm/games/android/volley/VolleyError;)V

    return-void
.end method

.method public static sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 16

    move-object/from16 v0, p4

    if-nez v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v6}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/dmm/games/android/volley/VolleyError;->networkResponse:Lcom/dmm/games/android/volley/NetworkResponse;

    if-nez v1, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/dmm/games/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-static/range {v2 .. v8}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v15, Ljava/lang/String;

    iget-object v0, v1, Lcom/dmm/games/android/volley/NetworkResponse;->data:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v13, 0x0

    iget v0, v1, Lcom/dmm/games/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-static/range {v9 .. v15}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static sendErrorLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->requestModel:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

    move-result-object v0

    new-instance v7, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;

    invoke-virtual {p2}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$ErrorKind;->name()Ljava/lang/String;

    move-result-object v2

    move-object v1, v7

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->setError(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;)V

    new-instance p2, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->setEvent(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;)V

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendLog(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;)V

    return-void
.end method

.method public static sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventLog(Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->requestModel:Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->clone()Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->setError(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Error;)V

    new-instance v1, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;

    invoke-virtual {p0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender$EventKind;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;->setEvent(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel$Event;)V

    invoke-static {v0}, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->sendLog(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;)V

    return-void
.end method

.method private static sendLog(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;)V
    .locals 2

    sget-boolean v0, Lcom/dmm/android/sdk/olgid/log/DmmGamesLogSender;->isUsageLogEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLog;-><init>(Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLogRequestModel;Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;)V

    invoke-virtual {v0}, Lcom/dmm/android/api/storeweb/log/DmmGamesSendUsageLog;->connectAsync()V

    return-void
.end method
