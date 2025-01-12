.class public Lnet/aihelp/ui/helper/ElvaBotHelper;
.super Ljava/lang/Object;
.source "ElvaBotHelper.java"


# static fields
.field private static sBotInstance:Lnet/aihelp/core/util/elva/ElvaBot;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultReply()Lnet/aihelp/data/model/cs/ElvaBotMsg;
    .locals 1

    const-string v0, "DEFAULTWELCOMETEXT"

    invoke-static {v0}, Lnet/aihelp/ui/helper/ElvaBotHelper;->getLocalReply(Ljava/lang/String;)Lnet/aihelp/data/model/cs/ElvaBotMsg;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalReply(Ljava/lang/String;)Lnet/aihelp/data/model/cs/ElvaBotMsg;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "name"

    const-string v2, "reply"

    const-string v3, "orderInfo"

    const-string v4, "alicekm"

    const-string v5, "tags"

    const-string v6, "action"

    const-string v7, "url2"

    const-string v8, "url"

    const-string v9, "actions"

    const-string v10, "msg"

    const-string v11, "tag"

    new-instance v12, Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {v12}, Lnet/aihelp/data/model/cs/ElvaBotMsg;-><init>()V

    invoke-virtual {v12, v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setUserInput(Ljava/lang/String;)V

    invoke-static {}, Lnet/aihelp/ui/helper/ElvaBotHelper;->isElvaPrepared()Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_d

    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    sget-object v15, Lnet/aihelp/ui/helper/ElvaBotHelper;->sBotInstance:Lnet/aihelp/core/util/elva/ElvaBot;

    invoke-virtual {v15, v0}, Lnet/aihelp/core/util/elva/ElvaBot;->respondXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/core/util/elva/xml/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v15, "msgs"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v12, v14}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotStupid(Z)V

    :cond_0
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "null"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v12, v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotMsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v12, v14}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotStupid(Z)V

    :cond_3
    :goto_1
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13, v9}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v15, v10, :cond_5

    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v12, v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setActions(Ljava/util/List;)V

    :cond_6
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "id"

    const-string v6, "title"

    const-string v9, "type"

    if-eqz v0, :cond_8

    :try_start_1
    invoke-static {v13, v8}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "content"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    new-instance v15, Lnet/aihelp/data/model/cs/storyline/BotUrl;

    invoke-direct {v15, v8, v10}, Lnet/aihelp/data/model/cs/storyline/BotUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotUrl(Lnet/aihelp/data/model/cs/storyline/BotUrl;)V

    :cond_7
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "externalName"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "interfaceUrl"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v15, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    invoke-direct {v15, v0, v8, v10, v3}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotOrderInfo(Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V

    :cond_8
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v13, v7}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "formurl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;

    invoke-direct {v7, v3, v6, v0}, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotFormUrl(Lnet/aihelp/data/model/cs/storyline/BotFormUrl;)V

    :cond_9
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13, v5}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v11}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v10, v5, :cond_b

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v5, v11}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    new-instance v6, Lnet/aihelp/data/model/cs/storyline/BotTag;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lnet/aihelp/data/model/cs/storyline/BotTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {v12, v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotTagList(Ljava/util/List;)V

    :cond_c
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "wildcard"

    invoke-static {v13, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v12, v14}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotStupid(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v12, v14}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotStupid(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ElvaBot getLocalReply() Exception -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    const-string v1, "ElvaBot getLocalReply exception"

    invoke-static {v1, v0}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v12, v14}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotStupid(Z)V

    :cond_e
    :goto_4
    invoke-static {v12}, Lnet/aihelp/ui/helper/ElvaBotHelper;->prepareRawResponseForMsg(Lnet/aihelp/data/model/cs/ElvaBotMsg;)Lnet/aihelp/data/model/cs/ElvaBotMsg;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMqttReply(Ljava/lang/String;[Z)Lnet/aihelp/data/model/cs/ConversationMsg;
    .locals 14

    const-string v0, "tag"

    const-string v1, "alicekm"

    const-string v2, "orderInfo"

    const-string v3, "template"

    const-string v4, "tags"

    const-string v5, "url2"

    const-string v6, "url"

    const-string v7, "actions"

    const-string v8, "msg"

    const-string v9, "timeMillis"

    new-instance v10, Lnet/aihelp/data/model/cs/ElvaBotMsg;

    invoke-direct {v10}, Lnet/aihelp/data/model/cs/ElvaBotMsg;-><init>()V

    array-length p1, p1

    if-nez p1, :cond_0

    invoke-virtual {v10, p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setRawResponse(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setTimeStamp(J)V

    :cond_1
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotMsg(Ljava/lang/String;)V

    :cond_2
    const-string p0, "isSimilarMatch"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v10, p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setSimilarMatched(Z)V

    const-string p0, "question"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setUserInput(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v8, 0x0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v7}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v9, v8

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_3

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "reply"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v10, p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setActions(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "title"

    const-string v9, "type"

    const-string v11, "id"

    if-eqz p0, :cond_6

    :try_start_1
    invoke-static {p1, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "content"

    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    new-instance v13, Lnet/aihelp/data/model/cs/storyline/BotUrl;

    invoke-direct {v13, v6, v12}, Lnet/aihelp/data/model/cs/storyline/BotUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotUrl(Lnet/aihelp/data/model/cs/storyline/BotUrl;)V

    :cond_5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "externalName"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "interfaceUrl"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    invoke-direct {v13, p0, v6, v12, v2}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotOrderInfo(Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V

    :cond_6
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_7

    invoke-static {p1, v5}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "formurl"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v7, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;

    invoke-direct {v7, v5, v6, p0}, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotFormUrl(Lnet/aihelp/data/model/cs/storyline/BotFormUrl;)V

    invoke-virtual {v10}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getTimeStamp()J

    move-result-wide v5

    invoke-static {v5, v6, v2}, Lnet/aihelp/ui/helper/StatisticHelper;->whenFormEventHappened(JI)V

    :cond_7
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v8

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "name"

    if-eqz v7, :cond_8

    :try_start_2
    invoke-static {v6, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lnet/aihelp/data/model/cs/storyline/BotTag;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v13, v6}, Lnet/aihelp/data/model/cs/storyline/BotTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Lnet/aihelp/data/model/cs/storyline/BotTag;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v13, v6}, Lnet/aihelp/data/model/cs/storyline/BotTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v10, p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotTagList(Ljava/util/List;)V

    :cond_b
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setTemplate(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {p1, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x45eaca26

    if-eq v1, v3, :cond_e

    const v3, 0x18b16

    if-eq v1, v3, :cond_d

    goto :goto_3

    :cond_d
    const-string v1, "faq"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_4

    :cond_e
    const-string v1, "wildcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    move v8, v2

    goto :goto_4

    :cond_f
    :goto_3
    move v8, v0

    :goto_4
    if-eqz v8, :cond_11

    if-eq v8, v2, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {v10, v2}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setBotStupid(Z)V

    const-string p0, "3"

    invoke-static {p0}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->updateType(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    const/4 p1, 0x5

    invoke-virtual {v10, p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setMsgType(I)V

    const/16 p1, 0x64

    invoke-virtual {v10, p1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setMsgStatus(I)V

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setFaqMainId(Ljava/lang/String;)V

    const-string p0, "5"

    invoke-static {p0}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->updateType(Ljava/lang/String;)V

    invoke-static {v10}, Lnet/aihelp/ui/helper/ElvaBotHelper;->logElvaFAQViewed(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "ElvaBot getMqttReply exception"

    invoke-static {p1, p0}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_5
    return-object v10
.end method

.method public static initBot(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Lnet/aihelp/init/ConfigUtil;->prepareElvaBotConfigs(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/aihelp/core/util/elva/util/Searcher;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/util/Searcher;-><init>()V

    new-instance v1, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;

    sget-object v2, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    sget-object v3, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/AIHelp/bot/context.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/AIHelp/bot/splitters.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/AIHelp/bot/substitutions.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/AIHelp/AIML/"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, ".*\\.aiml"

    invoke-virtual {v0, p0, v5}, Lnet/aihelp/core/util/elva/util/Searcher;->search(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v1, v2, v3, v4, p0}, Lnet/aihelp/core/util/elva/parser/ElvaBotParser;->parse(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;[Ljava/io/InputStream;)Lnet/aihelp/core/util/elva/ElvaBot;

    move-result-object p0

    sput-object p0, Lnet/aihelp/ui/helper/ElvaBotHelper;->sBotInstance:Lnet/aihelp/core/util/elva/ElvaBot;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    sget-object p0, Lnet/aihelp/ui/helper/ElvaBotHelper;->sBotInstance:Lnet/aihelp/core/util/elva/ElvaBot;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Lnet/aihelp/ui/helper/ElvaBotHelper;->sBotInstance:Lnet/aihelp/core/util/elva/ElvaBot;

    invoke-virtual {v0}, Lnet/aihelp/core/util/elva/ElvaBot;->getContext()Lnet/aihelp/core/util/elva/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/elva/Context;->outputStream(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static isElvaPrepared()Z
    .locals 3

    sget-object v0, Lnet/aihelp/ui/helper/ElvaBotHelper;->sBotInstance:Lnet/aihelp/core/util/elva/ElvaBot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/UnknownError;

    const-string v2, "sBotInstance == null"

    invoke-direct {v1, v2}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    const-string v2, "isElvaPrepared"

    invoke-static {v2, v1}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method private static logElvaFAQViewed(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 0

    return-void
.end method

.method private static prepareRawResponseForMsg(Lnet/aihelp/data/model/cs/ElvaBotMsg;)Lnet/aihelp/data/model/cs/ElvaBotMsg;
    .locals 8

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isBotStupid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setRawResponse(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "timeMillis"

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "question"

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getUserInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msg"

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasAction()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "action"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "reply"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasUrl()Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "id"

    const-string v3, "type"

    const-string v4, "title"

    if-eqz v1, :cond_4

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotUrl()Lnet/aihelp/data/model/cs/storyline/BotUrl;

    move-result-object v5

    invoke-virtual {v5}, Lnet/aihelp/data/model/cs/storyline/BotUrl;->getUrlTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "content"

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotUrl()Lnet/aihelp/data/model/cs/storyline/BotUrl;

    move-result-object v6

    invoke-virtual {v6}, Lnet/aihelp/data/model/cs/storyline/BotUrl;->getUrlAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasOrderInfo()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotOrderInfo()Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    move-result-object v6

    invoke-virtual {v6}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotOrderInfo()Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    move-result-object v6

    invoke-virtual {v6}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "externalName"

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotOrderInfo()Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "interfaceUrl"

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotOrderInfo()Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    move-result-object v7

    invoke-virtual {v7}, Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "orderInfo"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v5, "url"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasFormUrl()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotFormUrl()Lnet/aihelp/data/model/cs/storyline/BotFormUrl;

    move-result-object v5

    invoke-virtual {v5}, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->getFormTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "formurl"

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotFormUrl()Lnet/aihelp/data/model/cs/storyline/BotFormUrl;

    move-result-object v5

    invoke-virtual {v5}, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->getFormAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotFormUrl()Lnet/aihelp/data/model/cs/storyline/BotFormUrl;

    move-result-object v4

    invoke-virtual {v4}, Lnet/aihelp/data/model/cs/storyline/BotFormUrl;->getFormType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "url2"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isHasTag()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotTagList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/aihelp/data/model/cs/storyline/BotTag;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4}, Lnet/aihelp/data/model/cs/storyline/BotTag;->getTagId()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "name"

    invoke-virtual {v4}, Lnet/aihelp/data/model/cs/storyline/BotTag;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_6
    const-string v2, "tags"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setRawResponse(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "ElvaBot prepareRawResponseForMsg exception"

    invoke-static {v1, v0}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object p0
.end method
