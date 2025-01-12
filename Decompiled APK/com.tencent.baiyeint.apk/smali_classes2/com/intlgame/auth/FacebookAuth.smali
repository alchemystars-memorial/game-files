.class public Lcom/intlgame/auth/FacebookAuth;
.super Ljava/lang/Object;
.source "FacebookAuth.java"

# interfaces
.implements Lcom/intlgame/core/auth/AuthInterface;


# instance fields
.field private final FACEBOOK_LOGIN_REPORT_TYPE:Ljava/lang/String;

.field private final HANDLE_ERROR_INTERNALLY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FacebookAuth"

    iput-object v0, p0, Lcom/intlgame/auth/FacebookAuth;->FACEBOOK_LOGIN_REPORT_TYPE:Ljava/lang/String;

    const-string v0, "handleErrorInternally"

    iput-object v0, p0, Lcom/intlgame/auth/FacebookAuth;->HANDLE_ERROR_INTERNALLY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Facebook Login initialize start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/intlgame/common/FacebookUtil;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/auth/FacebookAuth;Ljava/lang/String;ILcom/facebook/AccessToken;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/intlgame/auth/FacebookAuth;->notifyLoginParams(Ljava/lang/String;ILcom/facebook/AccessToken;)V

    return-void
.end method

.method static synthetic access$100(Lcom/intlgame/auth/FacebookAuth;Lcom/intlgame/api/auth/INTLAuthResult;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/intlgame/auth/FacebookAuth;->notifyError(Lcom/intlgame/api/auth/INTLAuthResult;Ljava/lang/String;Z)V

    return-void
.end method

.method private handleWebViewError(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;Z)V
    .locals 7

    new-instance v6, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v1, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/16 v2, 0x5dd

    const-string v3, "facebook error occur"

    const/16 v4, 0x5dd

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-direct {p0, v6, p1, p3}, Lcom/intlgame/auth/FacebookAuth;->notifyError(Lcom/intlgame/api/auth/INTLAuthResult;Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyError(Lcom/intlgame/api/auth/INTLAuthResult;Ljava/lang/String;Z)V
    .locals 1

    if-nez p3, :cond_0

    const/16 p3, 0x65

    invoke-static {p3, p1, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance p3, Lcom/intlgame/api/auth/INTLAuthPluginResult;

    invoke-virtual {p1}, Lcom/intlgame/api/auth/INTLAuthResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/intlgame/api/auth/INTLAuthPluginResult;-><init>(Lorg/json/JSONObject;)V

    const-string p1, "Facebook"

    iput-object p1, p3, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channel_:Ljava/lang/String;

    const/4 p1, 0x4

    iput p1, p3, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channelid_:I

    const/16 p1, 0x6a

    invoke-static {p1, p3, p2}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] notifyError JSON parse error: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private notifyLoginParams(Ljava/lang/String;ILcom/facebook/AccessToken;)V
    .locals 6

    const-string v0, "[ "

    new-instance v1, Lcom/intlgame/api/auth/INTLAuthPluginResult;

    invoke-direct {v1, p2}, Lcom/intlgame/api/auth/INTLAuthPluginResult;-><init>(I)V

    const-string v2, "Facebook"

    iput-object v2, v1, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channel_:Ljava/lang/String;

    const/4 v2, 0x4

    iput v2, v1, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channelid_:I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "FACEBOOK_APP_ID"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "access_token"

    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/intlgame/api/auth/INTLAuthPluginResult;->plugin_data_:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ] login json op error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ] methodID : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", pluginResult : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/intlgame/api/auth/INTLAuthPluginResult;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", graph domain : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 p2, 0x6a

    invoke-static {p2, v1, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthOverTime()I
    .locals 2

    const-string v0, "getAuthOverTime from channel faceBook"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const-string v0, "com.facebook.katana"

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/intlgame/api/auth/INTLAuth;->getPluginAuthOverTime(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public login(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] methodID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", login with permissions : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->extra_json_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/intlgame/api/INTLBaseParams;->extra_json_:Ljava/lang/String;

    const-string v2, "handleErrorInternally"

    invoke-static {v0, v2}, Lcom/intlgame/tools/IT;->getJsonBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/login/LoginManager;->logOut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/intlgame/foundation/EmptyUtils;->isNonEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v3, "\\s+,\\s+"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "email"

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "public_profile"

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] facebook permission list : "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p2

    sget-object v3, Lcom/intlgame/FacebookLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/4 v4, 0x1

    new-instance v5, Lcom/intlgame/auth/FacebookAuth$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/intlgame/auth/FacebookAuth$1;-><init>(Lcom/intlgame/auth/FacebookAuth;Lcom/intlgame/api/INTLBaseParams;Lcom/facebook/CallbackManager;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v3

    new-instance v4, Lcom/intlgame/auth/FacebookAuth$2;

    invoke-direct {v4, p0, p1, v0}, Lcom/intlgame/auth/FacebookAuth$2;-><init>(Lcom/intlgame/auth/FacebookAuth;Lcom/intlgame/api/INTLBaseParams;Z)V

    invoke-virtual {v3, p2, v4}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    :try_start_1
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] logInWithReadPermissions error, message : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->w(Ljava/lang/String;)V

    new-instance v1, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v3, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/16 v4, 0x270f

    const/16 v6, 0xb

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v5, "facebook error occur"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object p2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v0}, Lcom/intlgame/auth/FacebookAuth;->notifyError(Lcom/intlgame/api/auth/INTLAuthResult;Ljava/lang/String;Z)V

    :goto_0
    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const-string p2, "FacebookAuth"

    invoke-static {p2, p1}, Lcom/intlgame/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/intlgame/auth/FacebookAuth;->handleWebViewError(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;Z)V

    return-void
.end method

.method public logout(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginManager;->logOut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] logout success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v1, Lcom/intlgame/api/INTLResult;

    const/16 v2, 0x6b

    invoke-direct {v1, v2, v0}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 v0, 0x69

    invoke-static {v0, v1, p1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/intlgame/auth/FacebookAuth;->handleWebViewError(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;Z)V

    return-void
.end method
