.class public final Lp/b;
.super Ljava/lang/Thread;


# instance fields
.field public a:Ljava/net/URL;

.field public b:Ljavax/net/ssl/HttpsURLConnection;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lp/b;->a:Ljava/net/URL;

    iput-object v0, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, ""

    iput-object v0, p0, Lp/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iget-object v1, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APHttpsReport"

    invoke-static {v1, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "APHttpsReport"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    const/16 v3, 0x400

    new-array v3, v3, [B

    iget-object v4, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v1, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_5

    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    iget-object v1, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v1, :cond_5

    goto :goto_1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    return-object v0

    :goto_6
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_7
    iget-object v1, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_9
    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lp/b;->c:Ljava/lang/String;

    const-string p1, "ReportData: "

    invoke-static {p1}, Lcom/centauri/api/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lp/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APHttpsReport"

    invoke-static {v0, p1}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final run()V
    .locals 4

    invoke-static {}, Lcom/centauri/oversea/comm/GlobalData;->singleton()Lcom/centauri/oversea/comm/GlobalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/centauri/oversea/comm/GlobalData;->getReportDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "APHttpsReport"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/heartbeat/overseas_common_android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/centauri/comm/CTILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lp/b;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lp/b;->a:Ljava/net/URL;

    if-nez v0, :cond_1

    const-string v0, "url is null."

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Lp/b;->a()V

    iget-object v0, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Content-Length"

    iget-object v3, p0, Lp/b;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lp/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lp/b;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lp/b;->b:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method
