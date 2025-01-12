.class public Lcom/intlgame/wrapper/TwitterWrapper;
.super Ljava/lang/Object;
.source "TwitterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TwitterWrapper"

.field public static final SDK_LOGIN_ERROR_CODE:I = 0x270f

.field private static final TWITTER_API_URL:Ljava/lang/String; = "https://api.twitter.com"

.field private static final TWITTER_COOKIE_NAME:Ljava/lang/String; = "auth_token="

.field private static final TWITTER_COOKIE_URL:Ljava/lang/String; = "https://.twitter.com"

.field public static final WEBVIEW_LOGIN_ERROR_CODE:I = -0x2

.field private static mWebCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

.field private static twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAuthorize(Z)V
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/intlgame/wrapper/TwitterWrapper;->twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-eqz p0, :cond_0

    const-string p0, "user cancel login"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    sget-object p0, Lcom/intlgame/wrapper/TwitterWrapper;->twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->cancelAuthorize()V

    goto :goto_0

    :cond_0
    const-string p0, "twitter webview login mode user cancel login"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static deleteCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookieGlob\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TwitterWrapper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, v1, v5

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/intlgame/wrapper/TwitterWrapper;->getDomainSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v6, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "=; Expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_2

    :cond_4
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete domain cookie\uff1a"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private static getDomainSet(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static getRequestCode(Z)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/intlgame/wrapper/TwitterWrapper;->twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->getRequestCode()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getSession()Lcom/intlgame/wrapper/TwitterWrapperSession;
    .locals 1

    invoke-static {}, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->getSession()Lcom/intlgame/wrapper/TwitterWrapperSession;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTwitterConfig(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/TwitterConfig;
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->debug(Z)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    new-instance p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object p0

    return-object p0
.end method

.method public static handleWebLoginResult(Ljava/lang/String;)V
    .locals 9

    const-string v0, "user_id"

    const-string v1, "screen_name"

    const-string v2, "oauth_token_secret"

    const-string v3, "oauth_token"

    const-string v4, "code"

    sget-object v5, Lcom/intlgame/wrapper/TwitterWrapper;->mWebCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    const-string v6, "TwitterWrapper"

    if-eqz v5, :cond_7

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "msg"

    const-string v8, ""

    if-nez p0, :cond_5

    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v8

    :goto_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v8

    :goto_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v8

    :goto_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-static {v3, v2, v8, v1}, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->setSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/intlgame/wrapper/TwitterWrapper;->mWebCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    invoke-static {}, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->getSession()Lcom/intlgame/wrapper/TwitterWrapperSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intlgame/wrapper/TwitterWrapperCallback;->onSuccess(Lcom/intlgame/wrapper/TwitterWrapperSession;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    sget-object v0, Lcom/intlgame/wrapper/TwitterWrapper;->mWebCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    invoke-virtual {v0, p0, v8}, Lcom/intlgame/wrapper/TwitterWrapperCallback;->onFailure(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterWeb page data parse with exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/intlgame/wrapper/TwitterWrapper;->mWebCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    const/4 v1, -0x3

    invoke-virtual {v0, v1, p0}, Lcom/intlgame/wrapper/TwitterWrapperCallback;->onFailure(ILjava/lang/String;)V

    :goto_4
    return-void

    :cond_7
    :goto_5
    const-string p0, "web login result or callback is null"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/intlgame/wrapper/TwitterWrapper;->getTwitterConfig(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    const-string p0, "Twitter initialize success"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decrypt catch exception : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "Twitter Login Use SDK, activity or config lost"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return v0
.end method

.method public static isChannelLogin()Z
    .locals 1

    invoke-static {}, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public static login(ZLandroid/app/Activity;Ljava/lang/String;Lcom/intlgame/wrapper/TwitterWrapperCallback;)V
    .locals 0

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1, p3}, Lcom/intlgame/wrapper/TwitterWrapper;->loginWithSDK(Landroid/app/Activity;Lcom/intlgame/wrapper/TwitterWrapperCallback;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "web login url is null"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    sput-object p3, Lcom/intlgame/wrapper/TwitterWrapper;->mWebCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    new-instance p0, Landroid/content/Intent;

    const-class p3, Lcom/intlgame/wrapper/TwitterWebActivity;

    invoke-direct {p0, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "url"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "activity or callback is null"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static loginWithSDK(Landroid/app/Activity;Lcom/intlgame/wrapper/TwitterWrapperCallback;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/intlgame/wrapper/TwitterWrapper$1;

    invoke-direct {v0, p1}, Lcom/intlgame/wrapper/TwitterWrapper$1;-><init>(Lcom/intlgame/wrapper/TwitterWrapperCallback;)V

    new-instance p1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    sput-object p1, Lcom/intlgame/wrapper/TwitterWrapper;->twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-virtual {p1, p0, v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "activity or callback is null"

    invoke-static {p0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static logout(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/twitter/sdk/android/core/SessionManager;->clearActiveSession()V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/intlgame/wrapper/TwitterWrapper;->logoutWebView(Landroid/content/Context;Z)V

    return-void
.end method

.method public static logoutWebView(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/intlgame/wrapper/TwitterWrapper$TwitterWebSession;->clearSession()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const-string v1, "https://.twitter.com"

    const-string v2, "auth_token="

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "https://api.twitter.com"

    invoke-static {p0, p1}, Lcom/intlgame/wrapper/TwitterWrapper;->deleteCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onActivityResult(ZIILandroid/content/Intent;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/intlgame/wrapper/TwitterWrapper;->twitterAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    if-nez p0, :cond_1

    if-eqz p3, :cond_1

    const-string p0, "msg"

    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/intlgame/wrapper/TwitterWrapper;->mWebCallback:Lcom/intlgame/wrapper/TwitterWrapperCallback;

    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/intlgame/wrapper/TwitterWrapperCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
