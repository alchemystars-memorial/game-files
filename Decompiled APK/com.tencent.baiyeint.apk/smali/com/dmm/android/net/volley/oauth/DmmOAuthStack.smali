.class public Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;
.super Lcom/dmm/games/android/volley/toolbox/HurlStack;
.source "DmmOAuthStack.java"


# static fields
.field private static final OAUTH_REALM:Ljava/lang/String; = "realm"


# instance fields
.field private final mConsumer:Loauth/signpost/OAuthConsumer;

.field private mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final mSignRequiredUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dmm/games/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;Loauth/signpost/OAuthConsumer;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dmm/games/android/volley/toolbox/HurlStack;-><init>(Lcom/dmm/games/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mSignRequiredUrls:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object p3, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mConsumer:Loauth/signpost/OAuthConsumer;

    if-eqz p4, :cond_0

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/dmm/android/net/sandbox/DmmDisabledHostnameVerifier;

    invoke-direct {p1}, Lcom/dmm/android/net/sandbox/DmmDisabledHostnameVerifier;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/dmm/games/android/volley/toolbox/HurlStack$UrlRewriter;Loauth/signpost/OAuthConsumer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;-><init>(Lcom/dmm/games/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;Loauth/signpost/OAuthConsumer;Z)V

    return-void
.end method

.method public constructor <init>(Loauth/signpost/OAuthConsumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;-><init>(Lcom/dmm/games/android/volley/toolbox/HurlStack$UrlRewriter;Loauth/signpost/OAuthConsumer;)V

    return-void
.end method

.method public constructor <init>(Loauth/signpost/OAuthConsumer;Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;-><init>(Lcom/dmm/games/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;Loauth/signpost/OAuthConsumer;Z)V

    return-void
.end method


# virtual methods
.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mSignRequiredUrls:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mSignRequiredUrls:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mSignRequiredUrls:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {p1, v0}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    :try_end_0
    .catch Loauth/signpost/exception/OAuthException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    instance-of p1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_2

    move-object p1, v0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_2
    return-object v0
.end method

.method public executeRequest(Lcom/dmm/games/android/volley/Request;Ljava/util/Map;)Lcom/dmm/games/android/volley/toolbox/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dmm/games/android/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dmm/games/android/volley/AuthFailureError;
        }
    .end annotation

    instance-of v0, p1, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequest;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->getMethod()I

    move-result v1

    iget-object v2, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mSignRequiredUrls:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    new-instance v1, Loauth/signpost/http/HttpParameters;

    invoke-direct {v1}, Loauth/signpost/http/HttpParameters;-><init>()V

    move-object v2, p1

    check-cast v2, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequest;

    invoke-interface {v2}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequest;->getParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "realm"

    invoke-virtual {v1, v2, v0}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getInstance()Lcom/dmm/android/oauth/DmmApiAuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getOAuthRequesterId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "xoauth_requestor_id"

    invoke-virtual {v1, v2, v0}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/dmm/android/net/volley/oauth/DmmOAuthStack;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0, v1}, Loauth/signpost/OAuthConsumer;->setAdditionalParameters(Loauth/signpost/http/HttpParameters;)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/dmm/games/android/volley/toolbox/HurlStack;->executeRequest(Lcom/dmm/games/android/volley/Request;Ljava/util/Map;)Lcom/dmm/games/android/volley/toolbox/HttpResponse;

    move-result-object p1

    return-object p1
.end method
