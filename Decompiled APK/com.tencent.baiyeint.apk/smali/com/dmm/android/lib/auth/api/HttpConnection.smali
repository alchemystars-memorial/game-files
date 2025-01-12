.class public final Lcom/dmm/android/lib/auth/api/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpConnection.kt\ncom/dmm/android/lib/auth/api/HttpConnection\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,186:1\n181#2,2:187\n1#3:189\n*E\n*S KotlinDebug\n*F\n+ 1 HttpConnection.kt\ncom/dmm/android/lib/auth/api/HttpConnection\n*L\n88#1,2:187\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dmm/android/lib/auth/api/HttpConnection;",
        "",
        "()V",
        "CONNECTION_CLOSE",
        "",
        "PROTOCOL_TLS",
        "config",
        "Lcom/dmm/android/lib/auth/Config;",
        "connect",
        "Lcom/dmm/android/lib/auth/api/HttpResponse;",
        "request",
        "Lcom/dmm/android/lib/auth/api/HttpRequest;",
        "createResponse",
        "connection",
        "Ljava/net/HttpURLConnection;",
        "send",
        "",
        "setRequest",
        "setSslIgnore",
        "Ljavax/net/ssl/HttpsURLConnection;",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final CONNECTION_CLOSE:Ljava/lang/String; = "close"

.field public static final INSTANCE:Lcom/dmm/android/lib/auth/api/HttpConnection;

.field private static final PROTOCOL_TLS:Ljava/lang/String; = "TLS"

.field private static final config:Lcom/dmm/android/lib/auth/Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/android/lib/auth/api/HttpConnection;

    invoke-direct {v0}, Lcom/dmm/android/lib/auth/api/HttpConnection;-><init>()V

    sput-object v0, Lcom/dmm/android/lib/auth/api/HttpConnection;->INSTANCE:Lcom/dmm/android/lib/auth/api/HttpConnection;

    sget-object v0, Lcom/dmm/android/lib/auth/service/ConfigService;->INSTANCE:Lcom/dmm/android/lib/auth/service/ConfigService;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/service/ConfigService;->getConfig()Lcom/dmm/android/lib/auth/Config;

    move-result-object v0

    sput-object v0, Lcom/dmm/android/lib/auth/api/HttpConnection;->config:Lcom/dmm/android/lib/auth/Config;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createResponse(Ljava/net/HttpURLConnection;Lcom/dmm/android/lib/auth/api/HttpRequest;)Lcom/dmm/android/lib/auth/api/HttpResponse;
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getMethod()Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->getDoInput()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpStatus;->Companion:Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;

    invoke-virtual {v1, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;->isSuccess(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpStatus;->Companion:Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;

    invoke-virtual {v1, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;->isServerError(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/dmm/android/lib/auth/api/constant/HttpStatus;->Companion:Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;

    invoke-virtual {v1, v4}, Lcom/dmm/android/lib/auth/api/constant/HttpStatus$Companion;->isClientError(I)Z

    move-result v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    :try_start_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_6

    check-cast v1, Ljava/io/Closeable;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0x400

    :goto_2
    invoke-direct {v5, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v3, 0x100

    new-array v3, v3, [B

    :goto_3
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v6, :cond_5

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v0

    :goto_4
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :try_start_7
    invoke-virtual {v5, v3, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_9
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    move-object v2, v0

    :goto_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    const-string v1, "connection.responseMessage"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    const-string p1, "connection.headerFields"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    new-instance v0, Ljava/lang/String;

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_7
    move-object v7, v0

    new-instance p1, Lcom/dmm/android/lib/auth/api/HttpResponse;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/dmm/android/lib/auth/api/HttpResponse;-><init>(Lcom/dmm/android/lib/auth/api/HttpRequest;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    new-instance p2, Lcom/dmm/android/lib/auth/api/NetworkException$NotFoundResponse;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Lcom/dmm/android/lib/auth/api/NetworkException$NotFoundResponse;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lcom/dmm/android/lib/auth/api/NetworkException$ReadTimeoutException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Lcom/dmm/android/lib/auth/api/NetworkException$ReadTimeoutException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final send(Ljava/net/HttpURLConnection;Lcom/dmm/android/lib/auth/api/HttpRequest;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getMethod()Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->getDoOutput()Z

    move-result p2

    if-eqz p2, :cond_1

    array-length p2, v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    xor-int/2addr p2, v1

    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    move-object v1, p2

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v1, p1

    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/dmm/android/lib/auth/api/NetworkException$FailedSendException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Lcom/dmm/android/lib/auth/api/NetworkException$FailedSendException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/dmm/android/lib/auth/api/NetworkException$FailedConnectException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Lcom/dmm/android/lib/auth/api/NetworkException$FailedConnectException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/dmm/android/lib/auth/api/NetworkException$ConnectionTimeoutException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Lcom/dmm/android/lib/auth/api/NetworkException$ConnectionTimeoutException;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final setRequest(Ljava/net/HttpURLConnection;Lcom/dmm/android/lib/auth/api/HttpRequest;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getMethod()Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/dmm/android/lib/auth/api/HttpConnection;->config:Lcom/dmm/android/lib/auth/Config;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getConnectionTimeoutMills()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/Config;->getReadTimeoutMills()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getHeader()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/dmm/android/lib/auth/api/constant/HttpHeader;->Connection:Lcom/dmm/android/lib/auth/api/constant/HttpHeader;

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/api/constant/HttpHeader;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getMethod()Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->getDoOutput()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getMethod()Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->getDoInput()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getMethod()Lcom/dmm/android/lib/auth/api/constant/HttpMethod;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dmm/android/lib/auth/api/constant/HttpMethod;->name()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "method"

    invoke-direct {v0, v1, p2, p1}, Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final setSslIgnore(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/dmm/android/lib/auth/api/HttpConnection$setSslIgnore$1;->INSTANCE:Lcom/dmm/android/lib/auth/api/HttpConnection$setSslIgnore$1;

    check-cast v0, Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    new-instance v0, Lcom/dmm/android/lib/auth/api/HttpConnection$setSslIgnore$trustManager$1;

    invoke-direct {v0}, Lcom/dmm/android/lib/auth/api/HttpConnection$setSslIgnore$trustManager$1;-><init>()V

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/dmm/android/lib/auth/api/HttpConnection$setSslIgnore$trustManager$1;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    check-cast v3, [Ljavax/net/ssl/TrustManager;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    const-string/jumbo v0, "sslContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/dmm/android/lib/auth/api/NetworkException$UnknownException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/api/NetworkException$UnknownException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/dmm/android/lib/auth/api/NetworkException$UnknownException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/dmm/android/lib/auth/api/NetworkException$UnknownException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final connect(Lcom/dmm/android/lib/auth/api/HttpRequest;)Lcom/dmm/android/lib/auth/api/HttpResponse;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/dmm/android/lib/auth/api/HttpConnection;->config:Lcom/dmm/android/lib/auth/Config;

    invoke-virtual {v1}, Lcom/dmm/android/lib/auth/Config;->isIgnoreSSL()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p0, v1}, Lcom/dmm/android/lib/auth/api/HttpConnection;->setSslIgnore(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/dmm/android/lib/auth/api/HttpConnection;->setRequest(Ljava/net/HttpURLConnection;Lcom/dmm/android/lib/auth/api/HttpRequest;)V

    invoke-direct {p0, v0, p1}, Lcom/dmm/android/lib/auth/api/HttpConnection;->send(Ljava/net/HttpURLConnection;Lcom/dmm/android/lib/auth/api/HttpRequest;)V

    invoke-direct {p0, v0, p1}, Lcom/dmm/android/lib/auth/api/HttpConnection;->createResponse(Ljava/net/HttpURLConnection;Lcom/dmm/android/lib/auth/api/HttpRequest;)Lcom/dmm/android/lib/auth/api/HttpResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;

    invoke-virtual {p1}, Lcom/dmm/android/lib/auth/api/HttpRequest;->getUrl()Ljava/net/URL;

    move-result-object p1

    check-cast v0, Ljava/lang/Throwable;

    const-string/jumbo v2, "url"

    invoke-direct {v1, v2, p1, v0}, Lcom/dmm/android/lib/auth/api/NetworkException$IllegalParameterException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
