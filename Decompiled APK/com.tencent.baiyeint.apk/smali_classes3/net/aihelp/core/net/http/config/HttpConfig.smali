.class public Lnet/aihelp/core/net/http/config/HttpConfig;
.super Ljava/lang/Object;
.source "HttpConfig.java"


# static fields
.field public static final MEDIA_OBJECT_STREAM:Lokhttp3/MediaType;

.field public static final MEDIA_TYPE_JSON:Lokhttp3/MediaType;

.field public static final MEDIA_TYPE_URLENCODED:Lokhttp3/MediaType;

.field private static final TIME_OUT_LIMIT:I = 0x3c

.field private static final spec:Lokhttp3/ConnectionSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/net/http/config/HttpConfig;->MEDIA_TYPE_URLENCODED:Lokhttp3/MediaType;

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/net/http/config/HttpConfig;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/net/http/config/HttpConfig;->MEDIA_OBJECT_STREAM:Lokhttp3/MediaType;

    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    const/4 v2, 0x3

    new-array v3, v2, [Lokhttp3/TlsVersion;

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    aput-object v4, v3, v1

    sget-object v4, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    const/16 v3, 0xc

    new-array v3, v3, [Lokhttp3/CipherSuite;

    sget-object v4, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v4, v3, v5

    sget-object v4, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v4, v3, v1

    sget-object v1, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v1, v3, v6

    sget-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    aput-object v1, v3, v2

    sget-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    const/4 v2, 0x4

    aput-object v1, v3, v2

    sget-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    const/4 v2, 0x5

    aput-object v1, v3, v2

    sget-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    const/4 v2, 0x6

    aput-object v1, v3, v2

    sget-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

    const/4 v2, 0x7

    aput-object v1, v3, v2

    sget-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_RC4_128_SHA:Lokhttp3/CipherSuite;

    const/16 v2, 0x8

    aput-object v1, v3, v2

    sget-object v1, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    const/16 v2, 0x9

    aput-object v1, v3, v2

    sget-object v1, Lokhttp3/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    const/16 v2, 0xa

    aput-object v1, v3, v2

    sget-object v1, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    const/16 v2, 0xb

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/net/http/config/HttpConfig;->spec:Lokhttp3/ConnectionSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInsecureHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    new-instance v0, Lnet/aihelp/core/net/http/config/HttpConfig$2;

    invoke-direct {v0}, Lnet/aihelp/core/net/http/config/HttpConfig$2;-><init>()V

    return-object v0
.end method

.method public static getOkHttpClient(Z)Lokhttp3/OkHttpClient;
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-static {}, Lnet/aihelp/core/net/http/config/HttpConfig;->createInsecureHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/http/config/HttpConfig$1;

    invoke-direct {v1}, Lnet/aihelp/core/net/http/config/HttpConfig$1;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/aihelp/core/net/http/interceptor/HeaderInterceptor;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/interceptor/HeaderInterceptor;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    new-instance p0, Lnet/aihelp/core/net/http/interceptor/LogInterceptor;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/interceptor/LogInterceptor;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    new-instance p0, Lnet/aihelp/core/net/http/interceptor/SignInterceptor;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/interceptor/SignInterceptor;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    const/4 p0, 0x3

    new-array p0, p0, [Lokhttp3/ConnectionSpec;

    const/4 v1, 0x0

    sget-object v2, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v2, p0, v1

    const/4 v1, 0x1

    sget-object v2, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    aput-object v2, p0, v1

    const/4 v1, 0x2

    sget-object v2, Lnet/aihelp/core/net/http/config/HttpConfig;->spec:Lokhttp3/ConnectionSpec;

    aput-object v2, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge p0, v1, :cond_1

    invoke-static {v0}, Lnet/aihelp/core/net/http/config/HttpConfig;->getSpecsBelowLollipopMR1(Lokhttp3/OkHttpClient$Builder;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private static getSpecsBelowLollipopMR1(Lokhttp3/OkHttpClient$Builder;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient$Builder;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v2, Lnet/aihelp/core/net/http/config/Tls12SocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-direct {v2, v1}, Lnet/aihelp/core/net/http/config/Tls12SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p0, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    new-instance p0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {p0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lokhttp3/TlsVersion;

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getUploadRequest(Ljava/lang/String;Ljava/io/File;)Lokhttp3/Request;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "form-data;name=file;filename=%s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_0

    return-object v2

    :cond_0
    new-instance v4, Lnet/aihelp/core/net/http/FileProgressRequestBody;

    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-direct {v4, v5, p1, v2}, Lnet/aihelp/core/net/http/FileProgressRequestBody;-><init>(Lokhttp3/MediaType;Ljava/io/File;Lnet/aihelp/core/net/http/FileProgressRequestBody$ProgressListener;)V

    new-instance p1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {p1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "Content-Disposition"

    aput-object v5, v2, v0

    aput-object v3, v2, v1

    invoke-static {v2}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    sget-object v0, Lnet/aihelp/common/API;->UPLOAD_VIDEO_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/aihelp/common/API;->UPLOAD_FILE_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/aihelp/common/API;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {p1, v3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "random"

    invoke-virtual {v2, v3, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "timespan"

    invoke-virtual {v2, v3, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    sget-object v3, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    const-string v4, "userId"

    invoke-virtual {v2, v4, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    invoke-static {v0, v1}, Lnet/aihelp/core/net/http/config/HttpConfig;->getUploadVideoSig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "siga"

    invoke-virtual {v2, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_2
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private static getUploadVideoSig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "random_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "timespan_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "userId_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/aihelp/core/net/http/config/HttpConfig;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-array p0, v0, [B

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v0, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method
