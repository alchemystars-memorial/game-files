.class public final Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;
.super Ljava/lang/Object;
.source "DmmMakeRequest.java"

# interfaces
.implements Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$Query;,
        Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;
    }
.end annotation


# static fields
.field private static final AMPERSAND:C = '&'

.field private static final EQUAL:C = '='

.field private static final PARAMETER_SECURITY_TOKEN_PREFIX:Ljava/lang/String; = "&st="

.field private static configOauthSignaturePublicKey:Ljava/lang/String;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mCallback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

.field private mCallbackUrl:Ljava/lang/String;

.field private mOAuthSignaturePublicKey:Ljava/lang/String;

.field private final mPostData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mPostData:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mRequest:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mRequest:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->convertStringResponseToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->connectAsyncWithoutSecurityTokenUpdate(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V

    return-void
.end method

.method private connectAsync(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mRequest:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->getInstance()Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getInstance()Lcom/dmm/android/oauth/DmmApiAuthToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dmm/android/api/DmmApiSecurityToken;->getInstance()Lcom/dmm/android/api/DmmApiSecurityToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/api/DmmApiSecurityToken;->isNeedSecurityTokenUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->connectAsyncWithSecurityTokenUpdate(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->connectAsyncWithoutSecurityTokenUpdate(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V

    return-void

    :cond_1
    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;

    sget-object v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Uninitialized:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const-string v1, "Auth token is not initialized."

    invoke-direct {p1, v1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;-><init>(Ljava/lang/String;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;

    sget-object v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Uninitialized:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const-string v1, "Api endpoint is not initialized."

    invoke-direct {p1, v1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;-><init>(Ljava/lang/String;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Request now executing in this instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private connectAsyncWithSecurityTokenUpdate(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V
    .locals 3

    new-instance v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$2;

    invoke-direct {v0, p0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$2;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)V

    sget-object v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$3;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;Lcom/dmm/android/api/mobile/DmmApiRequest$Callback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private connectAsyncWithoutSecurityTokenUpdate(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V
    .locals 8

    invoke-static {}, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->getInstance()Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mPostData:Ljava/util/Map;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mCallbackUrl:Ljava/lang/String;

    invoke-static {}, Lcom/dmm/android/api/DmmApiSecurityToken;->getInstance()Lcom/dmm/android/api/DmmApiSecurityToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/api/DmmApiSecurityToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getInstance()Lcom/dmm/android/oauth/DmmApiAuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getOAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getInstance()Lcom/dmm/android/oauth/DmmApiAuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/oauth/DmmApiAuthToken;->getOAuthTokenSecret()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mOAuthSignaturePublicKey:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->createRequestURL(Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$1;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;Ljava/lang/String;Lcom/dmm/games/android/volley/RequestQueue;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;

    sget-object v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;->Uninitialized:Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;

    const-string v1, "Request Queue is not initialized."

    invoke-direct {p1, v1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException;-><init>(Ljava/lang/String;Lcom/dmm/android/api/opensocial/error/DmmOpenSocialRuntimeException$Kind;)V

    throw p1
.end method

.method private convertStringResponseToJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createRequestURL(Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/DmmOpenSocialEndpoint;->getMakeRequestEndpoint()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "httpMethod"

    const-string v0, "POST"

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "headers"

    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "postData"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "authz"

    const-string/jumbo p3, "signed"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "contentType"

    const-string p3, "JSON"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "numEntries"

    const-string p3, "3"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "getSummaries"

    const-string p3, "false"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo p2, "signOwner"

    const-string/jumbo v1, "true"

    invoke-virtual {p1, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo p2, "signViewer"

    invoke-virtual {p1, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "container"

    const-string v1, "dmm"

    invoke-virtual {p1, p2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "bypassSpecCache"

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "getFullHeaders"

    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "OAUTH_REQUEST_TOKEN"

    invoke-virtual {p1, p2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p2, "OAUTH_REQUEST_TOKEN_SECRET"

    invoke-virtual {p1, p2, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p7, :cond_2

    const-string p2, "OAUTH_SIGNATURE_PUBLICKEY"

    invoke-virtual {p1, p2, p7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&st="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getConfigOAuthSignaturePublicKey()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->configOauthSignaturePublicKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setConfigOAuthSignaturePublicKey(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->configOauthSignaturePublicKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addParameter(Lcom/dmm/android/api/opensocial/DmmParameterHelper;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    instance-of v0, p1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->getCallbackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->setCallbackUrl(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->getSignaturePublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->setOAuthSignaturePublicKey(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    invoke-virtual {p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequestParameter;->getPostData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->addPostData(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v0, "Must set DmmMakeRequestParameter class instance."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string p2, "addParameter not support in MakeRequest API."

    invoke-direct {p1, p2}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParameter(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;"
        }
    .end annotation

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v0, "addParameter(Map<String, Object>) not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addParameter(Lorg/json/JSONObject;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v0, "addParameter not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPostData(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mPostData:Ljava/util/Map;

    monitor-enter v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mPostData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mPostData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mPostData:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addPostData(Ljava/util/Map;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mPostData:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->addPostData(Ljava/lang/String;Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mRequest:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$300(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/games/android/volley/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/games/android/volley/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mRequest:Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;

    invoke-static {v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;->access$300(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$RequestInternal;)Lcom/dmm/games/android/volley/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/games/android/volley/Request;->cancel()V

    sget-object v0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$5;

    invoke-direct {v1, p0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$5;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public clearParameter()Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 2

    new-instance v0, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v1, "clearParameter not support in MakeRequest API."

    invoke-direct {v0, v1}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearPostData()Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;
    .locals 2

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mPostData:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mPostData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectAsync()V
    .locals 1

    iget-object v0, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mCallback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    invoke-direct {p0, v0}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->connectAsync(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V

    return-void
.end method

.method public connectSync()Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;
    .locals 5

    invoke-static {}, Lcom/dmm/android/util/Util;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;

    invoke-direct {v0}, Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;-><init>()V

    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    new-instance v2, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest$4;-><init>(Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;Lcom/dmm/android/api/opensocial/DmmOpenSocialResponse;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {p0, v2}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->connectAsync(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)V

    :goto_0
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method can not call from Main Thread..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setCallback(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->setCallback(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mCallback:Lcom/dmm/android/api/opensocial/DmmOpenSocialCallback;

    return-object p0
.end method

.method public setCallbackUrl(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mCallbackUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setGuid(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Guid;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v0, "setGuid not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGuid(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v0, "setGuid not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setId(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v0, "setId not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setId(Ljava/util/List;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;"
        }
    .end annotation

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v0, "setId not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setId([Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v0, "setId not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMethod(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Method;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string v0, "setMethod not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOAuthSignaturePublicKey(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mOAuthSignaturePublicKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->getConfigOAuthSignaturePublicKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mOAuthSignaturePublicKey:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setRequestType(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$RequestType;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string/jumbo v0, "setRequestType not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelector(Lcom/dmm/android/api/opensocial/DmmOpenSocialApi$Selector;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string/jumbo v0, "setSelector not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelector(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 1

    new-instance p1, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;

    const-string/jumbo v0, "setSelector not support in MakeRequest API."

    invoke-direct {p1, v0}, Lcom/dmm/android/api/opensocial/error/DmmOpenSocialNotSupportMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTag(Ljava/lang/String;)Lcom/dmm/android/api/opensocial/DmmOpenSocialApi;
    .locals 0

    iput-object p1, p0, Lcom/dmm/android/api/opensocial/makerequest/DmmMakeRequest;->mTag:Ljava/lang/String;

    return-object p0
.end method
