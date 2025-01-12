.class public Lcom/intlgame/auth/TwitterAuth;
.super Ljava/lang/Object;
.source "TwitterAuth.java"

# interfaces
.implements Lcom/intlgame/core/auth/AuthInterface;


# static fields
.field private static final INTL_TWITTER_CONFIG_USE_SDK:Ljava/lang/String; = "TWITTER_CONSUMER_USE_SDK"

.field private static final INTL_TWITTER_CONSUMER_DEBUG:Ljava/lang/String; = "TWITTER_CONSUMER_DEBUG"

.field private static final INTL_TWITTER_CONSUMER_KEY:Ljava/lang/String; = "TWITTER_CONSUMER_KEY"

.field private static final INTL_TWITTER_CONSUMER_SECRET:Ljava/lang/String; = "TWITTER_CONSUMER_SECRET"

.field public static final TWITTER_CHANNEL:Ljava/lang/String; = "Twitter"

.field public static final TWITTER_CHANNELID:I = 0x9


# instance fields
.field private final CLEAR_TWITTER_COOKIE:Ljava/lang/String;

.field private final DEFAULT_TWITTER_WEB_LOGIN_URL:Ljava/lang/String;

.field private final LABEL_GAME_ID:Ljava/lang/String;

.field private final LABEL_TWITTER_WEB_LOGIN_URL:Ljava/lang/String;

.field private final TWITTER_LOGIN_REPORT_TYPE:Ljava/lang/String;

.field private isSDKInitSuccess:Z

.field private isSupportSDKLogin:Z

.field private isUseSDKLoginMode:Z

.field private loginCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

.field private paramsInfo:Lcom/intlgame/api/INTLBaseParams;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "clearTwitterCookie"

    iput-object v0, p0, Lcom/intlgame/auth/TwitterAuth;->CLEAR_TWITTER_COOKIE:Ljava/lang/String;

    const-string v0, "TwitterLogin"

    iput-object v0, p0, Lcom/intlgame/auth/TwitterAuth;->TWITTER_LOGIN_REPORT_TYPE:Ljava/lang/String;

    const-string v0, "TWITTER_WEB_LOGIN_URL"

    iput-object v0, p0, Lcom/intlgame/auth/TwitterAuth;->LABEL_TWITTER_WEB_LOGIN_URL:Ljava/lang/String;

    const-string v0, "https://image.intlgame.com/v2/release/jssdk/twitterlogin.html"

    iput-object v0, p0, Lcom/intlgame/auth/TwitterAuth;->DEFAULT_TWITTER_WEB_LOGIN_URL:Ljava/lang/String;

    const-string v0, "GAME_ID"

    iput-object v0, p0, Lcom/intlgame/auth/TwitterAuth;->LABEL_GAME_ID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intlgame/auth/TwitterAuth;->isUseSDKLoginMode:Z

    iput-boolean v0, p0, Lcom/intlgame/auth/TwitterAuth;->isSupportSDKLogin:Z

    iput-boolean v0, p0, Lcom/intlgame/auth/TwitterAuth;->isSDKInitSuccess:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] TwitterLogin initialize start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/intlgame/common/TwitterUtil;->initialize(Ljava/lang/String;)V

    const-string p1, "TWITTER_CONSUMER_USE_SDK"

    invoke-static {p1, v0}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/intlgame/auth/TwitterAuth;->isSupportSDKLogin:Z

    const-string p1, "TWITTER_CONSUMER_KEY"

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "TWITTER_CONSUMER_SECRET"

    invoke-static {v2, v1}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TWITTER_CONSUMER_DEBUG"

    invoke-static {v2, v0}, Lcom/intlgame/api/config/INTLConfig;->getConfig(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v2, p0, Lcom/intlgame/auth/TwitterAuth;->isSupportSDKLogin:Z

    if-eqz v2, :cond_1

    const-string v2, "Twitter Login Use SDK. now initialize..."

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, v1, v0}, Lcom/intlgame/wrapper/TwitterWrapper;->initialize(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/intlgame/auth/TwitterAuth;->isSDKInitSuccess:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Twitter Login Use SDK. now initialize "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/intlgame/auth/TwitterAuth;->isSDKInitSuccess:Z

    if-eqz v0, :cond_0

    const-string v0, "OK"

    goto :goto_0

    :cond_0
    const-string v0, "failed"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/intlgame/auth/TwitterAuth$1;

    invoke-direct {p1, p0}, Lcom/intlgame/auth/TwitterAuth$1;-><init>(Lcom/intlgame/auth/TwitterAuth;)V

    iput-object p1, p0, Lcom/intlgame/auth/TwitterAuth;->loginCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/intlgame/auth/TwitterAuth;)Lcom/intlgame/api/INTLBaseParams;
    .locals 0

    iget-object p0, p0, Lcom/intlgame/auth/TwitterAuth;->paramsInfo:Lcom/intlgame/api/INTLBaseParams;

    return-object p0
.end method

.method static synthetic access$100(Lcom/intlgame/auth/TwitterAuth;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/intlgame/auth/TwitterAuth;->fillParamsWithAccessToken(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/intlgame/auth/TwitterAuth;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/intlgame/auth/TwitterAuth;->isUseSDKLoginMode:Z

    return p0
.end method

.method private fillParamsWithAccessToken(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "[ "

    const-string v1, "clearTwitterCookie"

    new-instance v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;

    invoke-direct {v2, p2}, Lcom/intlgame/api/auth/INTLAuthPluginResult;-><init>(I)V

    const-string v3, "Twitter"

    iput-object v3, v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channel_:Ljava/lang/String;

    const/16 v3, 0x9

    iput v3, v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;->channelid_:I

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "oauth_token"

    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "oauth_secret"

    invoke-virtual {v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " ] Twitter extraJson has clearTwitterCookie  : "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/intlgame/api/auth/INTLAuthPluginResult;->plugin_data_:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " ] Twitter login json op error : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ] Twitter methodID : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", pluginResult : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/intlgame/api/auth/INTLAuthPluginResult;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/16 p1, 0x6a

    invoke-static {p1, v2, p3}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthOverTime()I
    .locals 2

    const-string v0, "getAuthOverTime from channel twitter"

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const-string v0, "com.twitter.android"

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/intlgame/api/auth/INTLAuth;->getPluginAuthOverTime(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public login(Lcom/intlgame/api/INTLBaseParams;Ljava/lang/String;)V
    .locals 9

    const-string v0, "clearTwitterCookie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] methodID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Twitter login with permissions : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/intlgame/auth/TwitterAuth;->paramsInfo:Lcom/intlgame/api/INTLBaseParams;

    iget-boolean p2, p0, Lcom/intlgame/auth/TwitterAuth;->isSupportSDKLogin:Z

    iput-boolean p2, p0, Lcom/intlgame/auth/TwitterAuth;->isUseSDKLoginMode:Z

    invoke-static {}, Lcom/intlgame/api/config/INTLConfig;->getTwitterUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/EmptyUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/intlgame/auth/TwitterAuth;->isUseSDKLoginMode:Z

    if-nez v1, :cond_0

    const/16 p2, 0x65

    new-instance v0, Lcom/intlgame/api/auth/INTLAuthResult;

    iget v4, p1, Lcom/intlgame/api/INTLBaseParams;->method_id_:I

    const/16 v5, 0xb

    const/4 v7, -0x1

    const-string v6, "Twitter using web login but login url is empty"

    const-string v8, ""

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/intlgame/api/auth/INTLAuthResult;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ] Twitter using web login but login url is empty"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] TwitterLoginUsingWeb, TwitterWeb login with url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget-object v1, Lcom/intlgame/TwitterLifeCycleObserver;->mActivityMessageQueue:Landroid/util/SparseArray;

    const/4 v3, 0x1

    new-instance v4, Lcom/intlgame/auth/TwitterAuth$2;

    invoke-direct {v4, p0, p1}, Lcom/intlgame/auth/TwitterAuth$2;-><init>(Lcom/intlgame/auth/TwitterAuth;Lcom/intlgame/api/INTLBaseParams;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_0
    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->extra_json_:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/intlgame/api/INTLBaseParams;->extra_json_:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/intlgame/auth/TwitterAuth;->isUseSDKLoginMode:Z

    invoke-static {v0, v1}, Lcom/intlgame/wrapper/TwitterWrapper;->logout(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] Twitter login json op error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/intlgame/auth/TwitterAuth;->isUseSDKLoginMode:Z

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/intlgame/auth/TwitterAuth;->loginCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    invoke-static {v0, v1, p2, v2}, Lcom/intlgame/wrapper/TwitterWrapper;->login(ZLandroid/app/Activity;Ljava/lang/String;Lcom/intlgame/wrapper/TwitterWrapperCallback;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const-string p2, "TwitterLogin"

    invoke-static {p2, p1}, Lcom/intlgame/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logout(Lcom/intlgame/api/INTLBaseParams;)V
    .locals 3

    invoke-static {}, Lcom/intlgame/api/INTLSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/intlgame/auth/TwitterAuth;->isUseSDKLoginMode:Z

    invoke-static {v0, v1}, Lcom/intlgame/wrapper/TwitterWrapper;->logout(Landroid/content/Context;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ] Twitter logout success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/intlgame/api/INTLResult;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intlgame/api/INTLResult;-><init>(II)V

    iget-object v1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const/16 v2, 0x69

    invoke-static {v2, v0, v1}, Lcom/intlgame/tools/IT;->onPluginRetCallback(ILcom/intlgame/api/INTLResult;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/intlgame/api/INTLBaseParams;->seq_id_:Ljava/lang/String;

    const-string v0, "TwitterLogin"

    invoke-static {v0, p1}, Lcom/intlgame/tools/IT;->reportLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
