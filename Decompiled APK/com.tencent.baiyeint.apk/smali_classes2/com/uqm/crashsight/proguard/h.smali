.class public Lcom/uqm/crashsight/proguard/h;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static b:Lcom/uqm/crashsight/proguard/h; = null

.field private static synthetic d:Z = true


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uqm/crashsight/proguard/h;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/uqm/crashsight/proguard/h;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/h;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/proguard/h;->b:Lcom/uqm/crashsight/proguard/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/proguard/h;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/proguard/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uqm/crashsight/proguard/h;->b:Lcom/uqm/crashsight/proguard/h;

    :cond_0
    sget-object p0, Lcom/uqm/crashsight/proguard/h;->b:Lcom/uqm/crashsight/proguard/h;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 12

    const-string v0, "Host"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/h;->a()V

    invoke-static {p3, p1}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "[attach][UploadIdPost] Failed to get HttpURLConnection object."

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const-string v6, "POST"

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "x-cos-security-token"

    iget-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-virtual {p1, p3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "x-cos-storage-class"

    const-string v2, "STANDARD_IA"

    invoke-virtual {p1, p3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "x-cos-server-side-encryption-customer-algorithm"

    const-string v2, "AES256"

    invoke-virtual {p1, p3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "x-cos-server-side-encryption-customer-key"

    iget-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-virtual {p1, p3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "x-cos-server-side-encryption-customer-key-MD5"

    iget-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {p1, p3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-interface {v5, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v3, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-wide v7, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide v9, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    iget-object v11, p2, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Authorization"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x2710

    invoke-static {p2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uqm/crashsight/proguard/q;->a()Ljava/net/Proxy;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/uqm/crashsight/proguard/q;->a()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "wap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "http.proxyHost"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "http.proxyPort"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lcom/uqm/crashsight/proguard/h;->d:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance p0, Ljava/net/Proxy;

    sget-object p1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p0, p1, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    :goto_1
    const/16 p1, 0x7530

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 16

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const-string v2, "Content-MD5"

    const-string v3, "Host"

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/h;->a()V

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    invoke-static {v6, v5}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v0, "[attach][multiUploadPut] Failed to get HttpURLConnection object."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v4

    :cond_0
    const-string v10, "PUT"

    invoke-virtual {v5, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lcom/uqm/crashsight/proguard/n;->a([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {v5, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Length"

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-security-token"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-storage-class"

    const-string v8, "STANDARD_IA"

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-server-side-encryption-customer-algorithm"

    const-string v8, "AES256"

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-server-side-encryption-customer-key"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-server-side-encryption-customer-key-MD5"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v7, "partNumber"

    move-object/from16 v9, p3

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "uploadId"

    move-object/from16 v9, p2

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v9, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-wide v11, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide v13, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    iget-object v15, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    invoke-static/range {v6 .. v15}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v5, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[BLcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "Content-MD5"

    const-string v3, "Host"

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/h;->a()V

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    invoke-static {v6, v5}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v0, "[attach][cmpMultipartPost] Failed to get HttpURLConnection object."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v4

    :cond_0
    const-string v10, "POST"

    invoke-virtual {v5, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcom/uqm/crashsight/proguard/n;->a([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {v5, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Length"

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Type"

    const-string v8, "application/xml"

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-security-token"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-storage-class"

    const-string v8, "STANDARD_IA"

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-server-side-encryption-customer-algorithm"

    const-string v8, "AES256"

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-server-side-encryption-customer-key"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "x-cos-server-side-encryption-customer-key-MD5"

    iget-object v8, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v7, "uploadId"

    move-object/from16 v9, p2

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v9, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v7, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    iget-wide v11, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->i:J

    iget-wide v13, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->j:J

    iget-object v15, v1, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    invoke-static/range {v6 .. v15}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v5, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v4
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/net/HttpURLConnection;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "Content-MD5"

    const-string v4, "Host"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "[attach][uploadPut] destUrl is null."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v5

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/h;->a()V

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "[attach][uploadPut] Failed to get HttpURLConnection object."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v5

    :cond_1
    :try_start_0
    const-string v7, "PUT"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/uqm/crashsight/proguard/n;->a([B)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Content-Length"

    array-length v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "x-cos-security-token"

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "x-cos-storage-class"

    const-string v9, "STANDARD_IA"

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "x-cos-server-side-encryption-customer-algorithm"

    const-string v9, "AES256"

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "x-cos-server-side-encryption-customer-key"

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "x-cos-server-side-encryption-customer-key-MD5"

    iget-object v9, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v12, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->e:Ljava/lang/String;

    invoke-interface {v12, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long v14, v3, v7

    const-wide/16 v3, 0x384

    add-long v16, v14, v3

    iget-object v10, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->g:Ljava/lang/String;

    iget-object v11, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->f:Ljava/lang/String;

    const-string v13, "PUT"

    iget-object v2, v2, Lcom/uqm/crashsight/crashreport/common/info/b;->q:Ljava/lang/String;

    move-object/from16 v18, v2

    invoke-static/range {v10 .. v18}, Lcom/uqm/crashsight/proguard/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "[attach][uploadPut] Failed to upload, please check your network."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v5
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "destUrl is null."

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/proguard/h;->a()V

    invoke-static {p3, p1}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to get HttpURLConnection object."

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :try_start_0
    const-string v2, "wup_version"

    const-string v3, "3.0"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "utf-8"

    if-eqz p4, :cond_2

    :try_start_1
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p4, "A37"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "A38"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x2710

    invoke-static {p3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    if-nez p2, :cond_3

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_3
    const-string p4, "outputStream.write..."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p4, v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p2, "outputStream.write done"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Failed to upload, please check your network."

    invoke-static {p2, p1}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/uqm/crashsight/proguard/h$1;

    invoke-direct {v1}, Lcom/uqm/crashsight/proguard/h$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const-string v1, ""

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/h;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    :cond_0
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s resCode=[%d] resMsg=[%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[attach]"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 p3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, p3

    const/4 p3, 0x2

    aput-object v1, v3, p3

    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p4, :cond_1

    const-string p3, "[attach] saveCodeMsg ..."

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput v0, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->b:I

    iput-object p1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->a()V

    goto :goto_0

    :cond_1
    iput-object p1, p2, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v1, v0

    :goto_3
    :try_start_3
    invoke-static {p0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    return-object v0

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    throw p0
.end method


# virtual methods
.method public final a(Lcom/uqm/crashsight/proguard/i;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "[attach][uploadId] Failed for no URL."

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v4

    :cond_0
    move v0, v5

    move v6, v0

    move v7, v6

    :goto_0
    if-gtz v0, :cond_12

    if-gtz v6, :cond_12

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    move v7, v0

    move v9, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-le v0, v8, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[attach][uploadId] try time: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Random;-><init>(J)V

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x2710

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    move v9, v7

    move v7, v0

    :goto_1
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-array v0, v5, [Ljava/lang/Object;

    const-string v8, "[attach][uploadId] Failed to request for network not avail"

    invoke-static {v8, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_2
    move v0, v7

    move v7, v9

    goto :goto_0

    :cond_3
    const-wide/16 v10, 0x0

    invoke-virtual {v2, v10, v11}, Lcom/uqm/crashsight/proguard/i;->a(J)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "?uploads"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v12, v14, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v8, 0x2

    aput-object v15, v14, v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const-string v15, "[attach] request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v15, v14}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-direct {v1, v12, v3, v0}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v12

    if-eqz v12, :cond_11

    :try_start_0
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v14, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v15, "[uploadId]"

    invoke-direct {v1, v12, v14, v15, v5}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V

    const/16 v14, 0xc8

    if-ne v0, v14, :cond_8

    invoke-virtual {v2, v10, v11}, Lcom/uqm/crashsight/proguard/i;->b(J)V

    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/uqm/crashsight/proguard/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    iget-object v0, v0, Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;->c:Ljava/lang/String;

    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    if-ge v8, v13, :cond_5

    const-string v0, "[attach][uploadId] resStr split params length < 4"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v4

    :cond_5
    :try_start_2
    aget-object v0, v0, v16

    const-string v8, "<UploadId>"

    const-string v10, "</UploadId>"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "[attach][uploadId] uploadId:"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v0, v10}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    return-object v8

    :cond_7
    :goto_5
    move v8, v9

    goto :goto_7

    :cond_8
    :try_start_4
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/h;->a(I)Z

    move-result v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v9, :cond_c

    :try_start_5
    const-string v9, "Location"

    invoke-virtual {v12, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-nez v9, :cond_a

    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[attach][uploadId] Failed to redirect: %d"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_6
    return-object v4

    :catch_0
    move-exception v0

    const/4 v8, 0x1

    goto :goto_c

    :cond_a
    add-int/lit8 v6, v6, 0x1

    :try_start_8
    iput-object v9, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const-string v7, "[attach][uploadId] redirect code: %d ,to:%s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v5

    iget-object v0, v3, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v9, 0x1

    :try_start_9
    aput-object v0, v8, v9

    invoke-static {v7, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move v7, v5

    goto :goto_5

    :goto_7
    :try_start_a
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v13, v0

    cmp-long v0, v13, v10

    if-gez v0, :cond_b

    goto :goto_8

    :cond_b
    move-wide v10, v13

    :goto_8
    invoke-virtual {v2, v10, v11}, Lcom/uqm/crashsight/proguard/i;->b(J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v9, v0

    invoke-static {v9}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    const/4 v9, 0x1

    :goto_9
    move v7, v5

    goto :goto_b

    :catch_4
    move-exception v0

    const/4 v9, 0x1

    goto :goto_b

    :cond_c
    :try_start_c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_a
    return-object v4

    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_f

    :catch_5
    move-exception v0

    :goto_b
    move v8, v9

    :goto_c
    :try_start_d
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_e
    :try_start_e
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v9, v0

    invoke-static {v9}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f

    :goto_d
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_e
    move v0, v7

    move v7, v8

    goto/16 :goto_0

    :goto_f
    :try_start_f
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_10
    throw v2

    :cond_11
    new-array v0, v5, [Ljava/lang/Object;

    const-string v8, "[attach][uploadId] Failed to execute post."

    invoke-static {v8, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v2, v10, v11}, Lcom/uqm/crashsight/proguard/i;->b(J)V

    goto/16 :goto_2

    :cond_12
    return-object v4
.end method

.method public final a(Lcom/uqm/crashsight/proguard/i;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v11, "ETag"

    iget-object v0, v10, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    new-array v0, v13, [Ljava/lang/Object;

    const-string v1, "[attach][multiUpload] Failed for no URL."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v12

    :cond_0
    move-object/from16 v14, p5

    array-length v0, v14

    int-to-long v6, v0

    move v0, v13

    move v1, v0

    move v15, v1

    :goto_0
    if-gtz v0, :cond_10

    if-gtz v15, :cond_10

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    move/from16 v16, v0

    move/from16 v17, v13

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-le v0, v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach][multiUpload] try time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v16, 0x2710

    add-long v2, v2, v16

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    iget-object v0, v8, Lcom/uqm/crashsight/proguard/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-array v0, v13, [Ljava/lang/Object;

    const-string v1, "[attach][multiUpload] Failed to request for network not avail"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move/from16 v0, v16

    move/from16 v1, v17

    goto :goto_0

    :cond_3
    invoke-virtual {v9, v6, v7}, Lcom/uqm/crashsight/proguard/i;->a(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v10, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?partNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&uploadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v1, v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/4 v12, 0x2

    aput-object v18, v1, v12

    const/16 v18, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v1, v18

    const-string v5, "[attach] request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v5, v1}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    const/16 v18, 0x1

    move-object/from16 v5, p5

    move-wide/from16 v19, v6

    move-object/from16 v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_f

    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v4, v10, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v5, "[multiUpload]"

    invoke-direct {v8, v1, v4, v5, v13}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_6

    invoke-virtual {v9, v2, v3}, Lcom/uqm/crashsight/proguard/i;->b(J)V

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach][multiUpload] ETag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v2

    :cond_5
    move/from16 v5, v17

    goto :goto_5

    :cond_6
    :try_start_2
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/h;->a(I)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v4, :cond_a

    :try_start_3
    const-string v4, "Location"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach][multiUpload] Failed to redirect: %d"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    :goto_3
    const/4 v1, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_4
    return-object v1

    :cond_8
    add-int/lit8 v15, v15, 0x1

    :try_start_5
    iput-object v4, v10, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const-string v4, "[attach][multiUpload] redirect code: %d ,to:%s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v13

    iget-object v0, v10, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    aput-object v0, v5, v18

    invoke-static {v4, v5}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move/from16 v16, v13

    move/from16 v5, v18

    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v6, v2

    if-gez v0, :cond_9

    goto :goto_6

    :cond_9
    move-wide v2, v6

    :goto_6
    invoke-virtual {v9, v2, v3}, Lcom/uqm/crashsight/proguard/i;->b(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    move/from16 v16, v13

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_7
    move/from16 v5, v18

    goto :goto_a

    :cond_a
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_b
    :goto_8
    const/4 v1, 0x0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :goto_9
    return-object v1

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_d

    :catch_3
    move-exception v0

    move/from16 v5, v17

    :goto_a
    :try_start_9
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_c
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_c
    move v1, v5

    move/from16 v0, v16

    goto :goto_f

    :goto_d
    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_e
    throw v2

    :cond_f
    new-array v0, v13, [Ljava/lang/Object;

    const-string v1, "[attach][multiUpload] Failed to execute post."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v9, v2, v3}, Lcom/uqm/crashsight/proguard/i;->b(J)V

    move/from16 v0, v16

    move/from16 v1, v17

    :goto_f
    move-wide/from16 v6, v19

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_10
    move-object v1, v12

    return-object v1
.end method

.method public final a(Lcom/uqm/crashsight/proguard/i;Lcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;[B)Z
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "[attach][cmpMultipart] Failed for no URL."

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v10

    :cond_0
    move v0, v10

    move v1, v0

    move v11, v1

    :goto_0
    if-gtz v0, :cond_10

    if-gtz v11, :cond_10

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    move v13, v0

    move v14, v10

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-le v0, v12, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[attach][cmpMultipart] try time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    move v13, v0

    move v14, v1

    :goto_1
    iget-object v0, v7, Lcom/uqm/crashsight/proguard/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "[attach][cmpMultipart] Failed to request for network not avail"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v13

    move v1, v14

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    invoke-virtual {v8, v4, v5}, Lcom/uqm/crashsight/proguard/i;->a(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?uploadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p3

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v1

    const-string v1, "[attach] request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v1, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move v0, v3

    move-object/from16 v3, p3

    move/from16 v17, v11

    move-wide v10, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;[BLcom/uqm/crashsight/crashreport/common/info/b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_f

    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iget-object v3, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v4, "[cmpMultipart]"

    invoke-direct {v7, v1, v3, v4, v12}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_5

    invoke-virtual {v8, v10, v11}, Lcom/uqm/crashsight/proguard/i;->b(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return v12

    :cond_5
    :try_start_2
    invoke-static {v2}, Lcom/uqm/crashsight/proguard/h;->a(I)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v3, :cond_a

    :try_start_3
    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[attach][cmpMultipart] Failed to redirect: %d"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    :goto_3
    const/4 v1, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_4
    return v1

    :cond_7
    add-int/lit8 v4, v17, 0x1

    :try_start_5
    iput-object v3, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const-string v3, "[attach][cmpMultipart] redirect code: %d ,to:%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v0, v5

    iget-object v2, v9, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    aput-object v2, v0, v12

    invoke-static {v3, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_8

    move-wide v2, v10

    :cond_8
    invoke-virtual {v8, v2, v3}, Lcom/uqm/crashsight/proguard/i;->b(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_5
    move v11, v4

    const/4 v0, 0x0

    goto :goto_b

    :catch_0
    move-exception v0

    move v11, v4

    const/4 v13, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_a
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_b
    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_7
    return v1

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_c

    :catch_2
    move-exception v0

    move v12, v14

    :goto_8
    move/from16 v11, v17

    :goto_9
    :try_start_8
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_c
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_a
    move v0, v13

    :goto_b
    const/4 v1, 0x0

    goto :goto_e

    :goto_c
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_d
    throw v2

    :cond_f
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "[attach][cmpMultipart] Failed to execute post."

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v8, v10, v11}, Lcom/uqm/crashsight/proguard/i;->b(J)V

    move v0, v13

    move v12, v14

    move/from16 v11, v17

    :goto_e
    move v10, v1

    move v1, v12

    goto/16 :goto_0

    :cond_10
    move v1, v10

    return v1
.end method

.method public final a([BLcom/uqm/crashsight/proguard/i;Lcom/uqm/crashsight/crashreport/common/info/b;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "[attach][Upload] Failed for no URL."

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v5

    :cond_0
    const-wide/16 v6, 0x0

    if-nez v2, :cond_1

    move-wide v8, v6

    goto :goto_0

    :cond_1
    array-length v0, v2

    int-to-long v8, v0

    :goto_0
    move v0, v5

    move v10, v0

    move v11, v10

    :goto_1
    if-gtz v0, :cond_11

    if-gtz v10, :cond_11

    const/4 v12, 0x1

    if-eqz v11, :cond_2

    move v11, v0

    move v13, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-le v0, v12, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[attach][Upload] try time: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v13, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Random;-><init>(J)V

    const/16 v14, 0x2710

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x2710

    add-long/2addr v13, v15

    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    :cond_3
    move v13, v11

    move v11, v0

    :goto_2
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v12, "[attach][Upload] Failed to request for network not avail"

    invoke-static {v12, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_3
    move v0, v11

    move v11, v13

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v8, v9}, Lcom/uqm/crashsight/proguard/i;->a(J)V

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    iget-object v15, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    aput-object v15, v14, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v5, 0x2

    aput-object v15, v14, v5

    const/4 v15, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const-string v15, "[attach] request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v15, v14}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v14, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    invoke-direct {v1, v14, v2, v0, v4}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;[BLjava/lang/String;Lcom/uqm/crashsight/crashreport/common/info/b;)Ljava/net/HttpURLConnection;

    move-result-object v14

    if-eqz v14, :cond_10

    :try_start_0
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v15, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->v:Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;

    const-string v5, "[Upload]"

    invoke-direct {v1, v14, v15, v5, v12}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/net/HttpURLConnection;Lcom/uqm/crashsight/crashreport/common/info/CrashAttachUpTime;Ljava/lang/String;Z)V

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_6

    invoke-virtual {v3, v6, v7}, Lcom/uqm/crashsight/proguard/i;->b(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    return v12

    :cond_6
    :try_start_2
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/h;->a(I)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v5, :cond_b

    :try_start_3
    const-string v5, "Location"

    invoke-virtual {v14, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v5, :cond_8

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "[attach][Upload] Failed to redirect: %d"

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v0, v13}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    :goto_5
    const/4 v2, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_6
    return v2

    :catch_0
    move-exception v0

    goto :goto_b

    :cond_8
    add-int/lit8 v10, v10, 0x1

    :try_start_6
    iput-object v5, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    const-string v5, "[attach][Upload] redirect code: %d ,to:%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v13, 0x0

    aput-object v0, v11, v13

    iget-object v0, v4, Lcom/uqm/crashsight/crashreport/common/info/b;->t:Ljava/lang/String;

    aput-object v0, v11, v12

    invoke-static {v5, v11}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v12, v6

    if-gez v0, :cond_9

    move-wide v12, v6

    :cond_9
    invoke-virtual {v3, v12, v13}, Lcom/uqm/crashsight/proguard/i;->b(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v11, v0

    invoke-static {v11}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_7
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_8
    const/4 v12, 0x1

    goto :goto_b

    :cond_b
    :try_start_8
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_c
    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :goto_a
    return v2

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_d

    :catch_3
    move-exception v0

    move v12, v13

    :goto_b
    :try_start_9
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_d
    :try_start_a
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v5, v0

    invoke-static {v5}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_c
    move v0, v11

    move v11, v12

    const/4 v5, 0x0

    goto/16 :goto_1

    :goto_d
    :try_start_b
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_e
    throw v2

    :cond_10
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v12, "[attach][Upload] Failed to execute post."

    invoke-static {v12, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-virtual {v3, v6, v7}, Lcom/uqm/crashsight/proguard/i;->b(J)V

    goto/16 :goto_3

    :cond_11
    return v5
.end method

.method public final a(Ljava/lang/String;[BLcom/uqm/crashsight/proguard/l;Ljava/util/Map;)[B
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/uqm/crashsight/proguard/l;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v2, "Failed for no URL."

    invoke-static {v2, v0}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v4

    :cond_0
    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    array-length v0, v2

    int-to-long v8, v0

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v0, v11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v0, v12

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v0, v10

    const-string v10, "request: %s, send: %d (pid=%d | tid=%d)"

    invoke-static {v10, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    move v0, v5

    move v13, v0

    move v14, v13

    :goto_1
    if-gtz v0, :cond_10

    if-gtz v13, :cond_10

    if-eqz v14, :cond_2

    move v6, v0

    move v14, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-le v0, v11, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "try time: "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v6, v11, v12}, Ljava/util/Random;-><init>(J)V

    const/16 v11, 0x2710

    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v11, v6

    const-wide/16 v18, 0x2710

    add-long v11, v11, v18

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    :cond_3
    move v6, v0

    :goto_2
    iget-object v0, v1, Lcom/uqm/crashsight/proguard/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uqm/crashsight/crashreport/common/info/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v11, "Failed to request for network not avail"

    invoke-static {v11, v0}, Lcom/uqm/crashsight/proguard/p;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v8, v9}, Lcom/uqm/crashsight/proguard/l;->a(J)V

    move-object/from16 v11, p4

    invoke-direct {v1, v10, v2, v0, v11}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v12

    if-eqz v12, :cond_f

    :try_start_0
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_7

    invoke-static {v12}, Lcom/uqm/crashsight/proguard/h;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/uqm/crashsight/proguard/h;->a:Ljava/util/Map;

    invoke-static {v12}, Lcom/uqm/crashsight/proguard/h;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v7

    if-nez v7, :cond_5

    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_5
    array-length v0, v7

    int-to-long v4, v0

    :goto_3
    invoke-virtual {v3, v4, v5}, Lcom/uqm/crashsight/proguard/l;->b(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    return-object v7

    :cond_7
    :try_start_2
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/h;->a(I)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v4, :cond_a

    :try_start_3
    const-string v4, "Location"

    invoke-virtual {v12, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v4, :cond_9

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to redirect: %d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/uqm/crashsight/proguard/p;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    :goto_5
    const/4 v2, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_6
    return-object v2

    :catch_0
    move-exception v0

    const/4 v7, 0x2

    const/4 v14, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v13, v13, 0x1

    :try_start_6
    const-string v5, "redirect code: %d ,to:%s"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v7, 0x2

    :try_start_7
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v6, v10
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v15, 0x1

    :try_start_8
    aput-object v4, v6, v15

    invoke-static {v5, v6}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v10, v4

    move v14, v15

    const/4 v6, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    const/4 v7, 0x2

    :goto_7
    const/4 v15, 0x1

    :goto_8
    move-object v10, v4

    move v14, v15

    const/4 v6, 0x0

    goto :goto_b

    :catch_4
    move-exception v0

    const/4 v7, 0x2

    const/4 v15, 0x1

    move v14, v15

    goto :goto_b

    :cond_a
    const/4 v7, 0x2

    const/4 v15, 0x1

    :goto_9
    :try_start_9
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-gez v0, :cond_b

    const-wide/16 v4, 0x0

    :cond_b
    invoke-virtual {v3, v4, v5}, Lcom/uqm/crashsight/proguard/l;->b(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v4, v0

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_e

    :catch_6
    move-exception v0

    const/4 v7, 0x2

    :goto_a
    const/4 v15, 0x1

    :goto_b
    :try_start_b
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_c
    :try_start_c
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v4, v0

    invoke-static {v4}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_d
    move v0, v6

    const-wide/16 v4, 0x0

    goto :goto_10

    :goto_e
    :try_start_d
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uqm/crashsight/proguard/p;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_f
    throw v2

    :cond_f
    move v4, v5

    const/4 v7, 0x2

    const/4 v15, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v5, "Failed to execute post."

    invoke-static {v5, v0}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/uqm/crashsight/proguard/l;->b(J)V

    move v0, v6

    :goto_10
    move v12, v7

    move v11, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_10
    move-object v2, v4

    return-object v2
.end method
