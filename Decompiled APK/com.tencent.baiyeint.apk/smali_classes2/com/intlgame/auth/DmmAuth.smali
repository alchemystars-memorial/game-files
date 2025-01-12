.class public Lcom/intlgame/auth/DmmAuth;
.super Ljava/lang/Object;
.source "DmmAuth.java"

# interfaces
.implements Lcom/intlgame/core/auth/AuthInterface;
.implements Lcom/intlgame/core/auth/AutoLoginInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] DmmLogin initialize start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/intlgame/dmm/DmmUtil;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method public static handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v1, p0, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    move-object v0, v6

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    const/16 p2, 0x65

    iget-object p3, p0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {p2, p3, p1, v6}, Lcom/intlgame/auth/DmmAuth;->handleAuthResult(ILjava/lang/String;ILcom/intlgame/api/INTLResult;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[ "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] Dmm auth error happened, detail: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static handleAuthResult(ILjava/lang/String;ILcom/intlgame/api/INTLResult;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] methodID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", pluginResult : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/intlgame/api/INTLResult;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {p0, p3, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static handleAuthSuccess(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    iget v0, p0, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    iget-object v1, p0, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    new-instance v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;

    invoke-direct {v2, v0}, Lcom/intlgame/api/auth/INTLAuthPluginResult;-><init>(I)V

    const-string v3, "Dmm"

    iput-object v3, v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channel_:Ljava/lang/String;

    const/16 v3, 0x1e

    iput v3, v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channelid_:I

    const/4 v3, 0x0

    iput v3, v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;->ret_code_:I

    invoke-static {v3}, Lcom/intlgame/tools/IT;->getRetMsg(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;->ret_msg_:Ljava/lang/String;

    const/16 v4, 0x65

    if-eq v0, v4, :cond_0

    const/16 v4, 0xa3

    if-ne v0, v4, :cond_1

    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "autoLoginFlags"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;->extra_json_:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget p0, p0, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/16 v3, 0x67

    if-eq p0, v3, :cond_2

    invoke-static {}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->getInstance()Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/intlgame/dmm/task/DmmAccessTokenUpdater;->start()V

    :cond_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "access_token"

    invoke-virtual {p0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "user_id"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "expires_in"

    invoke-virtual {p0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "code"

    invoke-virtual {p0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "platform"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;->plugin_data_:Ljava/lang/String;

    const/16 p0, 0x6a

    invoke-static {p0, v1, v0, v2}, Lcom/intlgame/auth/DmmAuth;->handleAuthResult(ILjava/lang/String;ILcom/intlgame/api/INTLResult;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[ "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] login json op error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public autoLogin(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;)V
    .locals 6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Dmm autoLogin start "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isLoggedIn()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isAccessTokenExpired()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchPublishSessionTask(Lcom/intlgame/api/INTLBaseParams;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isLoggedIn()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "dmm access token expired"

    goto :goto_0

    :cond_1
    const-string p2, "need login"

    :goto_0
    move-object v5, p2

    const/16 v1, 0x65

    const/16 v2, 0xa

    const/16 v4, 0xa

    const-string v3, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/intlgame/auth/DmmAuth;->handleAuthError(Lcom/intlgame/api/INTLBaseParams;IILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public getAuthOverTime()I
    .locals 1

    const-string v0, "getAuthOverTime from channel dmm"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/intlgame/api/auth/INTLAuth;->getPluginWebAuthOverTime(I)I

    move-result v0

    return v0
.end method

.method public login(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Dmm login start "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isLoggedIn()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->isAccessTokenExpired()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->logout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/intlgame/dmm/DmmTaskManager;->dispatchDmmLoginTask(Lcom/intlgame/api/INTLBaseParams;)V

    return-void
.end method

.method public logout(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Dmm logout"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/intlgame/dmm/DmmUtil;->logout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/intlgame/dmm/DmmTaskManager;->getInstance()Lcom/intlgame/dmm/DmmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intlgame/dmm/DmmTaskManager;->stopTask()V

    const/16 v0, 0x69

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] dmm logout success"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v1, Lcom/intlgame/api/INTLResult;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method
