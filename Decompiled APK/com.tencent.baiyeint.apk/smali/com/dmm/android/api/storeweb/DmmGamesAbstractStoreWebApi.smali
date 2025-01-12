.class public abstract Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;
.super Ljava/lang/Object;
.source "DmmGamesAbstractStoreWebApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "android_storesdk"

.field private static final APP_KEY:[B

.field private static final HASH_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static final HEADER_KEY_APP_ID:Ljava/lang/String; = "STORE-API-AUTH-ID"

.field private static final HEADER_KEY_AUTH_CODE:Ljava/lang/String; = "STORE-API-AUTH-KEY"

.field private static endpoint:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;


# instance fields
.field private final callback:Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "4b8Af7D1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->APP_KEY:[B

    sget-object v0, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->PRODUCTION:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    sput-object v0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->endpoint:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    return-void
.end method

.method protected constructor <init>(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->callback:Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;)Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;
    .locals 0

    iget-object p0, p0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->callback:Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$Callback;

    return-object p0
.end method

.method private createRequestHeader()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->generateApiAuthKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "STORE-API-AUTH-ID"

    const-string v3, "android_storesdk"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "STORE-API-AUTH-KEY"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private generateApiAuthKey()Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->getRequestJson()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->APP_KEY:[B

    const-string v4, "HmacSHA256"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v3, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-byte v6, v0, v5

    const-string v7, "%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private getUrl()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->endpoint:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->getUrlPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setEndpoint(Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;)V
    .locals 1

    const-class v0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->endpoint:Lcom/dmm/android/api/storeweb/DmmGamesStoreWebApiEndpointRegistry;
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
.method public connectAsync()V
    .locals 9

    invoke-static {}, Lcom/dmm/android/net/volley/oauth/DmmOAuthRequestQueue;->getInstance()Lcom/dmm/games/android/volley/RequestQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/dmm/android/net/volley/DmmStringRequest;

    invoke-virtual {p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->getMethod()I

    move-result v2

    invoke-direct {p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->getRequestJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;->createRequestHeader()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$1;

    invoke-direct {v6, p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$1;-><init>(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;)V

    new-instance v7, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$2;

    invoke-direct {v7, p0}, Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi$2;-><init>(Lcom/dmm/android/api/storeweb/DmmGamesAbstractStoreWebApi;)V

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dmm/android/net/volley/DmmStringRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Lcom/dmm/games/android/volley/Response$Listener;Lcom/dmm/games/android/volley/Response$ErrorListener;)V

    invoke-virtual {v0, v8}, Lcom/dmm/games/android/volley/RequestQueue;->add(Lcom/dmm/games/android/volley/Request;)Lcom/dmm/games/android/volley/Request;

    return-void

    :cond_0
    new-instance v0, Lcom/dmm/android/api/error/DmmApiRuntimeException;

    const-string v1, "Uninitialized Request Queue"

    invoke-direct {v0, v1}, Lcom/dmm/android/api/error/DmmApiRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getMethod()I
.end method

.method protected abstract getRequestJson()Lorg/json/JSONObject;
.end method

.method protected abstract getUrlPath()Ljava/lang/String;
.end method
