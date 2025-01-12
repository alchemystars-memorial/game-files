.class public final Li/f;
.super Ljava/lang/Object;

# interfaces
.implements Li/h;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Li/k;


# direct methods
.method public constructor <init>(Li/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/f;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Li/f;->b:Li/k;

    return-void
.end method

.method public static h(Ljava/net/HttpURLConnection;Li/l;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Li/l;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p1, Li/l;->n:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_3
    iget-object p1, p1, Li/l;->o:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Li/l;Li/m;)Li/m;
    .locals 7

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p2, p0, Li/f;->b:Li/k;

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget p2, p2, Li/k;->g:I

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 p2, 0x1

    if-gtz v0, :cond_3

    move v2, p2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    invoke-virtual {p0, p1, v2}, Li/f;->e(Li/l;Z)Li/m;

    move-result-object v2

    invoke-virtual {v2}, Li/m;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_6

    :cond_4
    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Li/l;->e:I

    iget-object v5, p0, Li/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    iget-object v5, p0, Li/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li/e;

    invoke-interface {v6, v4, v0, p1, v2}, Li/e;->a(IILi/l;Li/m;)V

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ne v3, v2, :cond_7

    move v2, p2

    goto :goto_5

    :cond_7
    move v2, v1

    :goto_5
    invoke-virtual {p0, p1, v2}, Li/f;->e(Li/l;Z)Li/m;

    move-result-object v2

    invoke-virtual {v2}, Li/m;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    move v3, v4

    goto :goto_2

    :cond_9
    :goto_6
    return-object v2
.end method

.method public final b(Li/l;)V
    .locals 2

    iget-object v0, p0, Li/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/e;

    invoke-interface {v1, p1}, Li/e;->c(Li/l;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Li/l;Li/m;)V
    .locals 2

    iget-object v0, p0, Li/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Li/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/e;

    invoke-interface {v1, p1, p2}, Li/e;->b(Li/l;Li/m;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public final e(Li/l;Z)Li/m;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Network response exception = "

    const-string v4, ""

    const-string v5, "Network response message = "

    const-string v6, "Network response code = "

    const-string v7, "Network response param = "

    const-string v8, "Network response url = "

    const-string v9, " Is stop = "

    const-string v10, "HTTP"

    new-instance v11, Li/m;

    invoke-direct {v11}, Li/m;-><init>()V

    if-nez v2, :cond_0

    return-object v11

    :cond_0
    invoke-virtual {v11, v2}, Li/m;->b(Li/l;)V

    invoke-virtual/range {p0 .. p1}, Li/f;->b(Li/l;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v2, Li/l;->a:J

    const/16 v12, 0xc8

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Li/l;->q()V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_3c
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_39
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Li/l;->d()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_38
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_37
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_39
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    :try_start_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_35
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_33
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-wide v13, v2, Li/l;->a:J

    sub-long v13, v16, v13

    iput-wide v13, v2, Li/l;->b:J

    if-eqz p2, :cond_1

    iget v0, v11, Li/m;->a:I

    if-eq v0, v12, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, v2, Li/l;->f:Z

    :cond_1
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v7}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Li/m;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_35
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_34
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_33
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v16, v3

    iget-wide v3, v2, Li/l;->a:J

    sub-long/2addr v13, v3

    iput-wide v13, v2, Li/l;->b:J

    if-eqz p2, :cond_3

    iget v0, v11, Li/m;->a:I

    if-eq v0, v12, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, v2, Li/l;->f:Z

    :cond_3
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v7}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Li/m;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v5, v9

    goto/16 :goto_b

    :cond_4
    :try_start_4
    instance-of v13, v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_35
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_34
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_33
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    if-nez v13, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v16, v3

    iget-wide v3, v2, Li/l;->a:J

    sub-long/2addr v13, v3

    iput-wide v13, v2, Li/l;->b:J

    if-eqz p2, :cond_5

    iget v0, v11, Li/m;->a:I

    if-eq v0, v12, :cond_5

    const/4 v3, 0x1

    iput-boolean v3, v2, Li/l;->f:Z

    :cond_5
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v7}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Li/m;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    move-object/from16 v3, v16

    goto :goto_0

    :cond_6
    :try_start_5
    move-object v13, v0

    check-cast v13, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_36
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_33
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    const/4 v14, 0x0

    :try_start_6
    invoke-virtual {v13, v14}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1, v13, v2}, Li/f;->g(Ljava/net/HttpURLConnection;Li/l;)V

    invoke-static {v13, v2}, Li/f;->h(Ljava/net/HttpURLConnection;Li/l;)V

    invoke-virtual {v1, v13, v2}, Li/f;->f(Ljava/net/HttpURLConnection;Li/l;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual/range {p1 .. p1}, Li/l;->c()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_32
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_31
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2f
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Li/l;->k()Z

    move-result v0
    :try_end_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_2e
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2b
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    const-string v14, "UTF-8"

    if-eqz v0, :cond_a

    :try_start_8
    const-string v0, "POST"

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p1 .. p1}, Li/l;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v12, v0

    move-object/from16 v18, v14

    const-string v14, "Content-Length"
    :try_end_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v19, v9

    :try_start_9
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v14, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Li/l;->m()Z

    move-result v9
    :try_end_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v9, :cond_8

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v14, v5

    move-object v9, v6

    iget-wide v5, v2, Li/l;->a:J

    sub-long/2addr v12, v5

    iput-wide v12, v2, Li/l;->b:J

    if-eqz p2, :cond_7

    iget v0, v11, Li/m;->a:I

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_7

    const/4 v5, 0x1

    iput-boolean v5, v2, Li/l;->f:Z

    :cond_7
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Li/m;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v14

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v3

    goto/16 :goto_a

    :cond_8
    move-object v9, v6

    :try_start_a
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v13}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22
    :try_end_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v12, v3

    move-object v14, v4

    sub-long v3, v22, v20

    :try_start_b
    iput-wide v3, v2, Li/l;->c:J

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_2a
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :try_start_c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_d
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_2a
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_29
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_28
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto/16 :goto_1c

    :catch_1
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto/16 :goto_1a

    :catch_3
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto/16 :goto_1f

    :catch_4
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto/16 :goto_21

    :catchall_1
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    goto :goto_8

    :cond_9
    move-object v12, v3

    move-object/from16 v19, v9

    move-object/from16 v18, v14

    move-object v14, v4

    move-object v9, v6

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    move-object/from16 v19, v9

    :goto_2
    move-object v9, v6

    move-object/from16 v6, v19

    goto/16 :goto_2b

    :catch_9
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    move-object/from16 v19, v9

    :goto_3
    move-object v9, v6

    :goto_4
    move-object v3, v14

    :goto_5
    move-object v14, v5

    goto/16 :goto_18

    :catch_a
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    move-object/from16 v19, v9

    :goto_6
    move-object v9, v6

    move-object/from16 v6, v19

    goto/16 :goto_2e

    :catch_b
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    move-object/from16 v19, v9

    :goto_7
    move-object v9, v6

    move-object/from16 v6, v19

    goto/16 :goto_30

    :catch_c
    move-exception v0

    move-object v12, v3

    move-object v14, v4

    move-object/from16 v19, v9

    :goto_8
    move-object v9, v6

    move-object/from16 v6, v19

    goto/16 :goto_32

    :cond_a
    move-object v12, v3

    move-object/from16 v19, v9

    move-object/from16 v18, v14

    move-object v14, v4

    move-object v9, v6

    :try_start_e
    invoke-virtual/range {p1 .. p1}, Li/l;->i()Z

    move-result v0
    :try_end_e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_e} :catch_2a
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_29
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_27
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v0, :cond_b

    :try_start_f
    const-string v0, "GET"

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_f} :catch_2a
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_29
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_9

    :catch_d
    move-exception v0

    goto :goto_4

    :cond_b
    :goto_9
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Li/l;->m()Z

    move-result v0
    :try_end_10
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10 .. :try_end_10} :catch_2a
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_29
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_27
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    if-eqz v0, :cond_d

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v6, v14

    iget-wide v13, v2, Li/l;->a:J

    sub-long/2addr v3, v13

    iput-wide v3, v2, Li/l;->b:J

    if-eqz p2, :cond_c

    iget v0, v11, Li/m;->a:I

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_c

    const/4 v3, 0x1

    iput-boolean v3, v2, Li/l;->f:Z

    :cond_c
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Li/m;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_a

    :cond_d
    move-object v3, v14

    :try_start_11
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v11, Li/m;->a:I
    :try_end_11
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_11 .. :try_end_11} :catch_26
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_25
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_23
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_11

    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Li/l;->m()Z

    move-result v0
    :try_end_12
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_12 .. :try_end_12} :catch_26
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_25
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_24
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_22
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-eqz v0, :cond_f

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object v6, v5

    iget-wide v4, v2, Li/l;->a:J

    sub-long/2addr v13, v4

    iput-wide v13, v2, Li/l;->b:J

    if-eqz p2, :cond_e

    iget v0, v11, Li/m;->a:I

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_e

    const/4 v4, 0x1

    iput-boolean v4, v2, Li/l;->f:Z

    :cond_e
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Li/m;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    :goto_b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    invoke-virtual/range {p1 .. p1}, Li/l;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_f
    move-object v6, v5

    move-object/from16 v5, v19

    :try_start_13
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_13
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_13 .. :try_end_13} :catch_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_20
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1e
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22
    :try_end_14
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_14 .. :try_end_14} :catch_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1a
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v19, v5

    move-object v14, v6

    sub-long v5, v22, v20

    :try_start_15
    iput-wide v5, v2, Li/l;->d:J

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_15 .. :try_end_15} :catch_19
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_17
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_16
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    const/16 v0, 0x400

    :try_start_16
    new-array v0, v0, [B

    :goto_d
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_16
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_16 .. :try_end_16} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_14
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_13
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_12
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object/from16 v20, v4

    if-lez v6, :cond_10

    const/4 v4, 0x0

    :try_start_17
    invoke-virtual {v5, v0, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object/from16 v4, v20

    goto :goto_d

    :cond_10
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    move-object/from16 v6, v18

    invoke-direct {v4, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, v11, Li/m;->b:Ljava/lang/String;
    :try_end_17
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-object/from16 v0, v20

    goto/16 :goto_19

    :catchall_3
    move-exception v0

    goto :goto_e

    :catch_e
    move-exception v0

    goto :goto_f

    :catch_f
    move-exception v0

    goto :goto_10

    :catch_10
    move-exception v0

    goto :goto_11

    :catch_11
    move-exception v0

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object/from16 v20, v4

    :goto_e
    move-object v6, v5

    move-object v5, v14

    move-object v4, v15

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    goto/16 :goto_42

    :catch_12
    move-exception v0

    move-object/from16 v20, v4

    :goto_f
    move-object v4, v3

    move-object v3, v5

    move-object v5, v14

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    goto/16 :goto_35

    :catch_13
    move-exception v0

    move-object/from16 v20, v4

    :goto_10
    move-object v4, v3

    move-object v3, v5

    move-object v5, v14

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    goto/16 :goto_39

    :catch_14
    move-exception v0

    move-object/from16 v20, v4

    :goto_11
    move-object v6, v5

    move-object v5, v14

    move-object v4, v15

    move-object/from16 v14, v20

    goto/16 :goto_3d

    :catch_15
    move-exception v0

    move-object/from16 v20, v4

    :goto_12
    move-object v6, v5

    move-object v5, v14

    move-object v4, v15

    move-object/from16 v14, v20

    goto/16 :goto_40

    :catchall_5
    move-exception v0

    move-object/from16 v20, v4

    goto :goto_13

    :catch_16
    move-exception v0

    move-object/from16 v20, v4

    goto :goto_14

    :catch_17
    move-exception v0

    move-object/from16 v20, v4

    goto :goto_15

    :catch_18
    move-exception v0

    move-object/from16 v20, v4

    goto :goto_16

    :catch_19
    move-exception v0

    move-object/from16 v20, v4

    goto :goto_17

    :catchall_6
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object v14, v6

    :goto_13
    move-object v5, v14

    move-object v4, v15

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    goto/16 :goto_2c

    :catch_1a
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object v14, v6

    :goto_14
    move-object v4, v3

    move-object v5, v14

    move-object/from16 v6, v19

    goto/16 :goto_26

    :catch_1b
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object v14, v6

    :goto_15
    move-object v4, v3

    move-object v5, v14

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    const/4 v3, 0x0

    goto/16 :goto_39

    :catch_1c
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object v14, v6

    :goto_16
    move-object v5, v14

    move-object v4, v15

    move-object/from16 v14, v20

    const/4 v6, 0x0

    goto/16 :goto_3d

    :catch_1d
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object v14, v6

    :goto_17
    move-object v5, v14

    move-object v4, v15

    move-object/from16 v14, v20

    const/4 v6, 0x0

    goto/16 :goto_40

    :catchall_7
    move-exception v0

    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    goto/16 :goto_1d

    :catch_1e
    move-exception v0

    move-object/from16 v19, v5

    move-object v14, v6

    goto :goto_18

    :catch_1f
    move-exception v0

    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    goto/16 :goto_1b

    :catch_20
    move-exception v0

    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    goto/16 :goto_20

    :catch_21
    move-exception v0

    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    goto/16 :goto_22

    :catch_22
    move-exception v0

    goto/16 :goto_5

    :goto_18
    move-object v4, v3

    move-object v5, v14

    move-object/from16 v6, v19

    const/4 v3, 0x0

    goto/16 :goto_34

    :cond_11
    move-object v14, v5

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_19
    invoke-virtual {v1, v0, v5}, Li/f;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, v14

    iget-wide v13, v2, Li/l;->a:J

    sub-long/2addr v4, v13

    iput-wide v4, v2, Li/l;->b:J

    if-eqz p2, :cond_12

    iget v0, v11, Li/m;->a:I

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_12

    const/4 v4, 0x1

    iput-boolean v4, v2, Li/l;->f:Z

    :cond_12
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Li/m;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_36

    :catchall_8
    move-exception v0

    goto :goto_1c

    :catch_23
    move-exception v0

    goto :goto_1e

    :catch_24
    move-exception v0

    :goto_1a
    move-object/from16 v6, v19

    :goto_1b
    move-object v4, v3

    goto/16 :goto_2e

    :catch_25
    move-exception v0

    goto :goto_1f

    :catch_26
    move-exception v0

    goto :goto_21

    :catchall_9
    move-exception v0

    move-object v3, v14

    :goto_1c
    move-object/from16 v6, v19

    :goto_1d
    move-object v4, v3

    goto/16 :goto_2b

    :catch_27
    move-exception v0

    move-object v3, v14

    :goto_1e
    move-object/from16 v6, v19

    move-object v4, v3

    goto :goto_25

    :catch_28
    move-exception v0

    move-object v3, v14

    goto :goto_1a

    :catch_29
    move-exception v0

    move-object v3, v14

    :goto_1f
    move-object/from16 v6, v19

    :goto_20
    move-object v4, v3

    goto/16 :goto_30

    :catch_2a
    move-exception v0

    move-object v3, v14

    :goto_21
    move-object/from16 v6, v19

    :goto_22
    move-object v4, v3

    goto/16 :goto_32

    :catchall_a
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto :goto_23

    :catch_2b
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto :goto_24

    :catch_2c
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto :goto_27

    :catch_2d
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto :goto_28

    :catch_2e
    move-exception v0

    move-object v12, v3

    move-object v3, v4

    goto :goto_29

    :catchall_b
    move-exception v0

    move-object v12, v3

    :goto_23
    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    goto/16 :goto_2b

    :catch_2f
    move-exception v0

    move-object v12, v3

    :goto_24
    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    :goto_25
    const/16 v20, 0x0

    :goto_26
    move-object/from16 v14, v20

    const/4 v3, 0x0

    goto/16 :goto_35

    :catch_30
    move-exception v0

    move-object v12, v3

    :goto_27
    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    goto/16 :goto_2e

    :catch_31
    move-exception v0

    move-object v12, v3

    :goto_28
    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    goto :goto_30

    :catch_32
    move-exception v0

    move-object v12, v3

    :goto_29
    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    goto :goto_32

    :catchall_c
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    goto :goto_2a

    :catch_33
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    goto/16 :goto_33

    :catch_34
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    goto :goto_2d

    :catch_35
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    goto :goto_2f

    :catch_36
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    goto :goto_31

    :goto_2a
    const/4 v13, 0x0

    :goto_2b
    move-object v3, v4

    move-object v4, v15

    const/4 v14, 0x0

    move-object v15, v6

    :goto_2c
    const/4 v6, 0x0

    goto/16 :goto_42

    :goto_2d
    const/4 v13, 0x0

    :goto_2e
    const/4 v3, 0x0

    goto/16 :goto_38

    :goto_2f
    const/4 v13, 0x0

    :goto_30
    move-object v3, v4

    move-object/from16 v19, v6

    move-object v4, v15

    const/4 v6, 0x0

    goto/16 :goto_3c

    :goto_31
    const/4 v13, 0x0

    :goto_32
    move-object v3, v4

    move-object/from16 v19, v6

    move-object v4, v15

    const/4 v6, 0x0

    goto/16 :goto_3f

    :catch_37
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    move-object v3, v4

    move-object/from16 v19, v6

    goto/16 :goto_3b

    :catch_38
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    move-object v3, v4

    move-object/from16 v19, v6

    goto/16 :goto_3e

    :catchall_d
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    move-object v3, v4

    move-object v15, v6

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_42

    :catch_39
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    move-object v15, v4

    :goto_33
    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_34
    const/4 v14, 0x0

    :goto_35
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v0, v11, Li/m;->c:Ljava/lang/Exception;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    invoke-virtual {v1, v14, v3}, Li/f;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    iget-wide v5, v2, Li/l;->a:J

    sub-long/2addr v13, v5

    iput-wide v13, v2, Li/l;->b:J

    if-eqz p2, :cond_14

    iget v0, v11, Li/m;->a:I

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_14

    const/4 v3, 0x1

    iput-boolean v3, v2, Li/l;->f:Z

    :cond_14
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Li/m;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_36
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :goto_37
    move-object/from16 v19, v6

    goto/16 :goto_3a

    :catch_3a
    move-exception v0

    move-object v12, v3

    move-object/from16 v24, v9

    move-object v9, v6

    move-object/from16 v6, v24

    move-object v15, v4

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_38
    const/4 v14, 0x0

    :goto_39
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v0, v11, Li/m;->c:Ljava/lang/Exception;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    invoke-virtual {v1, v14, v3}, Li/f;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_15

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    iget-wide v5, v2, Li/l;->a:J

    sub-long/2addr v13, v5

    iput-wide v13, v2, Li/l;->b:J

    if-eqz p2, :cond_16

    iget v0, v11, Li/m;->a:I

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_16

    const/4 v3, 0x1

    iput-boolean v3, v2, Li/l;->f:Z

    :cond_16
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Li/m;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_41

    :catchall_e
    move-exception v0

    goto/16 :goto_37

    :goto_3a
    move-object v6, v3

    move-object v3, v4

    move-object v4, v15

    move-object/from16 v15, v19

    goto/16 :goto_42

    :catch_3b
    move-exception v0

    move-object v12, v3

    move-object/from16 v19, v9

    move-object v9, v6

    move-object v3, v4

    :goto_3b
    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_3c
    const/4 v14, 0x0

    :goto_3d
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v0, v11, Li/m;->c:Ljava/lang/Exception;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    invoke-virtual {v1, v14, v6}, Li/f;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_17

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v17, v5

    iget-wide v5, v2, Li/l;->a:J

    sub-long/2addr v13, v5

    iput-wide v13, v2, Li/l;->b:J

    if-eqz p2, :cond_18

    iget v0, v11, Li/m;->a:I

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_18

    const/4 v5, 0x1

    iput-boolean v5, v2, Li/l;->f:Z

    :cond_18
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Li/m;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_41

    :catch_3c
    move-exception v0

    move-object v12, v3

    move-object/from16 v19, v9

    move-object v9, v6

    move-object v3, v4

    :goto_3e
    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_3f
    const/4 v14, 0x0

    :goto_40
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v0, v11, Li/m;->c:Ljava/lang/Exception;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    invoke-virtual {v1, v14, v6}, Li/f;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_19

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v17, v5

    iget-wide v5, v2, Li/l;->a:J

    sub-long/2addr v13, v5

    iput-wide v13, v2, Li/l;->b:J

    if-eqz p2, :cond_1a

    iget v0, v11, Li/m;->a:I

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_1a

    const/4 v5, 0x1

    iput-boolean v5, v2, Li/l;->f:Z

    :cond_1a
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Li/m;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_41
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Li/m;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :catchall_f
    move-exception v0

    move-object/from16 v15, v19

    move-object/from16 v24, v4

    move-object v4, v3

    move-object/from16 v3, v24

    move-object/from16 v25, v14

    move-object v14, v13

    move-object/from16 v13, v25

    move-object/from16 v24, v4

    move-object v4, v3

    move-object/from16 v3, v24

    move-object/from16 v25, v14

    move-object v14, v13

    move-object/from16 v13, v25

    :goto_42
    invoke-virtual {v1, v14, v6}, Li/f;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    if-eqz v13, :cond_1b

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v17, v5

    iget-wide v5, v2, Li/l;->a:J

    sub-long/2addr v13, v5

    iput-wide v13, v2, Li/l;->b:J

    if-eqz p2, :cond_1c

    iget v5, v11, Li/m;->a:I

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1c

    const/4 v5, 0x1

    iput-boolean v5, v2, Li/l;->f:Z

    :cond_1c
    invoke-virtual {v1, v2, v11}, Li/f;->c(Li/l;Li/m;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Li/m;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Li/m;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/centauri/comm/CTILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Li/m;->c:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Li/l;->m()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/centauri/comm/CTILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Ljava/net/HttpURLConnection;Li/l;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Li/l;->j:Ljava/util/HashMap;

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final g(Ljava/net/HttpURLConnection;Li/l;)V
    .locals 4

    iget-object v0, p0, Li/f;->b:Li/k;

    const/16 v1, 0x3a98

    if-eqz v0, :cond_0

    iget v2, v0, Li/k;->h:I

    iget v0, v0, Li/k;->i:I

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    iget v3, p2, Li/l;->l:I

    if-lez v3, :cond_1

    move v2, v3

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p2, Li/l;->m:I

    if-lez p2, :cond_2

    move v0, p2

    :cond_2
    if-gtz v2, :cond_3

    move v2, v1

    :cond_3
    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method
