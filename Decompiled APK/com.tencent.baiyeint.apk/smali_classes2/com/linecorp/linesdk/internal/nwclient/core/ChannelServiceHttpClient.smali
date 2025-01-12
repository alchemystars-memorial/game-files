.class public Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;
.super Ljava/lang/Object;
.source "ChannelServiceHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x15f90

.field private static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x15f90

.field private static final EMPTY_DATA:[B

.field private static final SERVER_SIDE_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "ChannelHttpClient"


# instance fields
.field private connectTimeoutMillis:I

.field private final errorResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

.field private readTimeoutMillis:I

.field private final userAgentGenerator:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->EMPTY_DATA:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    invoke-direct {v0, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;-><init>(Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;)V

    return-void
.end method

.method protected constructor <init>(Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->userAgentGenerator:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    new-instance p1, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    const-string v0, "UTF-8"

    invoke-direct {p1, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->errorResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    const p1, 0x15f90

    iput p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->connectTimeoutMillis:I

    iput p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->readTimeoutMillis:I

    return-void
.end method

.method private static convertPostDataToBytes(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->EMPTY_DATA:[B

    return-object p0

    :cond_0
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/linecorp/linesdk/utils/UriUtils;->appendQueryParams(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getChannelServiceResponse(Ljava/net/HttpURLConnection;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "TT;>;",
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->getInputStreamFrom(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v1, 0xc8

    if-eq p0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq p0, v1, :cond_0

    :try_start_0
    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->SERVER_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-interface {p2, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;->getResponseData(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/linecorp/linesdk/LineApiError;->createWithHttpResponseCode(ILjava/lang/String;)Lcom/linecorp/linesdk/LineApiError;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p1, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;->getResponseData(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p2, Lcom/linecorp/linesdk/LineApiError;

    sget-object v0, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->HTTP_RESPONSE_PARSE_ERROR:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    invoke-direct {p2, p0, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    invoke-static {p1, p2}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method private static getInputStreamFrom(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->isGzipUsed(Ljava/net/HttpURLConnection;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method private static isGzipUsed(Ljava/net/HttpURLConnection;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "gzip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static logExceptionForDebug(Lcom/linecorp/linesdk/LineApiResponse;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method private static logRequestForDebug(Ljava/net/HttpURLConnection;[B)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ChannelHttpClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string p0, "== Request body =="

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static logResponseBodyForDebug(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    const-string v0, "ChannelHttpClient"

    const-string v1, "== response body =="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-direct {v1}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;-><init>()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;->getResponseData(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method private static logResponseHeadersForDebug(Ljava/net/HttpURLConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ChannelHttpClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private openConnectionWithJson(Landroid/net/Uri;ILcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->openHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->userAgentGenerator:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Content-Length"

    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->connectTimeoutMillis:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget p2, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->readTimeoutMillis:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private openDeleteConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->openHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->userAgentGenerator:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    sget-object v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->DELETE:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method private openGetConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->openHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->userAgentGenerator:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    sget-object v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->GET:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method private openPostConnection(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->openHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->userAgentGenerator:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Content-Length"

    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->connectTimeoutMillis:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget p2, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->readTimeoutMillis:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    sget-object p2, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->POST:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private sendRequestWithJson(Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "TT;>;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p4

    invoke-direct {p0, p2, v1, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->openConnectionWithJson(Landroid/net/Uri;ILcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->setRequestHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->errorResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-static {v0, p5, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->getChannelServiceResponse(Ljava/net/HttpURLConnection;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p3, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p3, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2, p3}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->logExceptionForDebug(Lcom/linecorp/linesdk/LineApiResponse;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p1
.end method

.method private static setRequestHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "TT;>;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->openDeleteConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->setRequestHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->errorResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-static {v0, p3, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->getChannelServiceResponse(Ljava/net/HttpURLConnection;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p3, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p3, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2, p3}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->logExceptionForDebug(Lcom/linecorp/linesdk/LineApiResponse;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p1
.end method

.method public get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "TT;>;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p3}, Lcom/linecorp/linesdk/utils/UriUtils;->appendQueryParams(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->openGetConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->setRequestHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->errorResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-static {p3, p4, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->getChannelServiceResponse(Ljava/net/HttpURLConnection;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p4, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p4, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2, p4}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->logExceptionForDebug(Lcom/linecorp/linesdk/LineApiResponse;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p2

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p1
.end method

.method protected openHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0

    :cond_0
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance p1, Lcom/linecorp/android/security/TLSSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/linecorp/android/security/TLSSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The scheme of the server url must be https."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public post(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "TT;>;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->convertPostDataToBytes(Ljava/util/Map;)[B

    move-result-object p3

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p3

    invoke-direct {p0, p1, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->openPostConnection(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->setRequestHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->errorResponseParser:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-static {v0, p4, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->getChannelServiceResponse(Ljava/net/HttpURLConnection;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p3, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p3, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2, p3}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->logExceptionForDebug(Lcom/linecorp/linesdk/LineApiResponse;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p1
.end method

.method public postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "TT;>;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->POST:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->sendRequestWithJson(Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public putWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "TT;>;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->PUT:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->sendRequestWithJson(Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public setConnectTimeoutMillis(I)V
    .locals 0

    iput p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->connectTimeoutMillis:I

    return-void
.end method

.method public setReadTimeoutMillis(I)V
    .locals 0

    iput p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->readTimeoutMillis:I

    return-void
.end method
