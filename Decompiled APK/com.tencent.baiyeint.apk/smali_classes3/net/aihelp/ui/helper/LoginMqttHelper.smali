.class public Lnet/aihelp/ui/helper/LoginMqttHelper;
.super Ljava/lang/Object;
.source "LoginMqttHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoginParams()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appId"

    sget-object v2, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameId"

    sget-object v2, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameUid"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v1, Lnet/aihelp/common/Const;->PRIVACY_POLICY_ACCEPTED:Z

    if-eqz v1, :cond_0

    const-string v1, "userPlayerName"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userDisplayName"

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cmdBaseTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getLoginType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "gameInfo"

    invoke-static {}, Lnet/aihelp/utils/DeviceInfoUtil;->getInstance()Lnet/aihelp/utils/DeviceInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/utils/DeviceInfoUtil;->getGameInfo()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getLoginResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ConversationMsg;",
            ">;"
        }
    .end annotation

    const-string v0, "evaluation"

    const-string v1, "chat_private"

    const-string v2, "sdkConfig"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "errorCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mqtt login failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MQTT Login failed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/UnknownError;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getMqConfig()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v4, v2}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "isOpenResolveEvaluation"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isBotResolveQueryEnable:Z

    const-string v2, "enableUnhelpfulFaqStoryNode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lnet/aihelp/common/CustomConfig$CustomerService;->isUnhelpfulFaqStoryNodeEnable:Z

    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "{}"

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p0

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-lez p0, :cond_3

    move p0, v5

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketActive(Z)V

    const-string p0, "flag"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketFinished(Z)V

    const-string p0, "isShowResolve"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketWaitForAskingResolveStatus(Z)V

    sget-boolean p0, Lnet/aihelp/common/CustomConfig$CustomerService;->isTicketRatingEnable:Z

    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketWaitForRating(Z)V

    const-string p0, "yes"

    const-string v6, "storeReview"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setAppRatable(Z)V

    const-string p0, "status"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/16 v6, 0x9

    if-ne p0, v6, :cond_4

    move p0, v5

    goto :goto_2

    :cond_4
    move p0, v2

    :goto_2
    invoke-static {p0}, Lnet/aihelp/ui/helper/ResponseMqttHelper;->setTicketRejected(Z)V

    sget-object p0, Lnet/aihelp/common/Const;->CUSTOM_STORY_NODE:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    const-string v7, "re_type"

    if-eqz p0, :cond_5

    :try_start_1
    sget-boolean p0, Lnet/aihelp/common/Const;->isLocalWelcomeAvailable:Z

    if-nez p0, :cond_8

    :cond_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "msgs"

    invoke-static {v4, p0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v8, "contextType"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_6

    if-eq v8, v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_7

    invoke-static {p0, v2}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v8, v5, [Z

    aput-boolean v5, v8, v2

    invoke-static {p0, v8}, Lnet/aihelp/ui/helper/ElvaBotHelper;->getMqttReply(Ljava/lang/String;[Z)Lnet/aihelp/data/model/cs/ConversationMsg;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, Lnet/aihelp/db/bot/ConversationDBHelper;->clearElvaMsg()V

    :cond_8
    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lnet/aihelp/data/model/cs/ConversationMsg;

    const/16 v2, 0x3eb

    invoke-direct {p0, v5, v2}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>(II)V

    const-wide/16 v5, 0x64

    invoke-virtual {p0, v5, v6}, Lnet/aihelp/data/model/cs/ConversationMsg;->setTimeStamp(J)V

    const-string v2, "vip_wlcm_msg"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/ui/helper/LoginMqttHelper;->getWelcomeMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/aihelp/data/model/cs/ConversationMsg;->setMsgContent(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lnet/aihelp/ui/helper/ConversationHelper;->getRetrievedMsgList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->INSTANCE:Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    const-string v1, "detail"

    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->prepareDataSource(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_4
    return-object v3
.end method

.method private static getWelcomeMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/aihelp/common/Const;->CUSTOM_WELCOME_MSG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/aihelp/common/Const;->CUSTOM_WELCOME_MSG:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csWelcomeMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lnet/aihelp/common/CustomConfig$CustomerService;->csWelcomeMessage:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "How can we help you ?"

    return-object p0
.end method
