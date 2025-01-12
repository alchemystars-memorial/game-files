.class public Lcom/tdatamaster/tdm/system/TDMHttp;
.super Ljava/lang/Object;
.source "TDMHttp.java"


# static fields
.field private static final HTTP_ERROR_CODE_EXCEPTION:I = -0x2

.field private static final HTTP_ERROR_CODE_PARAMS:I = -0x1

.field private static final HTTP_KEY_CONNECT_TIMEOUT:Ljava/lang/String; = "connectTimeout"

.field private static final HTTP_KEY_READ_TIMEOUT:Ljava/lang/String; = "readTimeout"

.field private static final HTTP_KEY_USE_CACHE:Ljava/lang/String; = "useCache"

.field private static final HTTP_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final HTTP_METHOD_POST:Ljava/lang/String; = "POST"

.field private static final HTTP_READ_BUFFER_DEFAULT:I = 0x100

.field private static final TAG:Ljava/lang/String; = "[TDM]"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHttpUrlConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "[TDM]"

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http request connect info invalid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p3

    goto :goto_1

    :catch_1
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http request header info invalid:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string p2, "connectTimeout"

    const/16 p3, 0x1e

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string p2, "readTimeout"

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string p2, "useCache"

    const/4 p3, 0x0

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p2, "POST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_0
    const-string p1, "Content-Type"

    const-string p2, "text/plain"

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    return-object p0
.end method

.method public static httpGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "[TDM]"

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    :try_start_0
    const-string v3, "GET"

    invoke-static {p0, v3, p1, p2}, Lcom/tdatamaster/tdm/system/TDMHttp;->getHttpUrlConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 p2, 0x100

    new-array v3, p2, [B

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v1, :cond_1

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto :goto_1

    :cond_2
    move-object p0, v2

    :goto_1
    :try_start_1
    invoke-static {p1, v2}, Lcom/tdatamaster/tdm/system/TDMHttp;->makeResponseResult(I[B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tdatamaster/tdm/system/TDMHttp;->makeResponseResult(I[B)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-object p0

    :goto_5
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_6
    throw p0

    :cond_6
    :goto_7
    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMHttp;->makeResponseResult(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "[TDM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http post with url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", post body length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpNetwork"

    invoke-static {v2, v1}, Lcom/tdatamaster/tdm/system/TDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    :try_start_0
    const-string v3, "POST"

    invoke-static {p0, v3, p2, p3}, Lcom/tdatamaster/tdm/system/TDMHttp;->getHttpUrlConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 p2, 0x100

    new-array p3, p2, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-virtual {p0, p3, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_1

    :cond_2
    move-object p0, v2

    :goto_1
    :try_start_1
    invoke-static {p1, v2}, Lcom/tdatamaster/tdm/system/TDMHttp;->makeResponseResult(I[B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tdatamaster/tdm/system/TDMHttp;->makeResponseResult(I[B)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-object p0

    :goto_5
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tdatamaster/tdm/system/TDMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_6
    throw p0

    :cond_6
    :goto_7
    invoke-static {v1, v2}, Lcom/tdatamaster/tdm/system/TDMHttp;->makeResponseResult(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeResponseResult(I[B)Ljava/lang/String;
    .locals 2

    const-string v0, ";"

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
