.class Lcom/gcore/abase/URLRequest$RequestTask;
.super Ljava/lang/Object;
.source "URLRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gcore/abase/URLRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestTask"
.end annotation


# instance fields
.field mBody:[B

.field final synthetic this$0:Lcom/gcore/abase/URLRequest;


# direct methods
.method constructor <init>(Lcom/gcore/abase/URLRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gcore/abase/URLRequest$RequestTask;->mBody:[B

    return-void
.end method

.method constructor <init>(Lcom/gcore/abase/URLRequest;[B)V
    .locals 0

    iput-object p1, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/gcore/abase/URLRequest$RequestTask;->mBody:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "URLRequest"

    new-instance v1, Lcom/gcore/abase/URLResponse;

    invoke-direct {v1}, Lcom/gcore/abase/URLResponse;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x6

    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v5}, Lcom/gcore/abase/URLRequest;->access$000(Lcom/gcore/abase/URLRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v5}, Lcom/gcore/abase/URLRequest;->access$100(Lcom/gcore/abase/URLRequest;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v5, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v5}, Lcom/gcore/abase/URLRequest;->access$100(Lcom/gcore/abase/URLRequest;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v5, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-static {v5, v4}, Lcom/gcore/abase/URLRequest;->access$200(Lcom/gcore/abase/URLRequest;Ljava/net/HttpURLConnection;)V

    iget-object v5, p0, Lcom/gcore/abase/URLRequest$RequestTask;->mBody:[B

    if-eqz v5, :cond_0

    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v6, p0, Lcom/gcore/abase/URLRequest$RequestTask;->mBody:[B

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :cond_0
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "\\ "

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    iput-object v2, v1, Lcom/gcore/abase/URLResponse;->version:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/gcore/abase/URLResponse;->headers:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Lcom/gcore/abase/URLResponse;->status:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iput v5, v1, Lcom/gcore/abase/URLResponse;->status:I

    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/gcore/abase/URLResponse;->statusMsg:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "No Status Message!"

    iput-object v0, v1, Lcom/gcore/abase/URLResponse;->statusMsg:Ljava/lang/String;

    :goto_4
    :try_start_3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x1800

    new-array v4, v4, [B

    :goto_5
    :try_start_4
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :cond_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/gcore/abase/URLResponse;->body:[B

    iget-object v0, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-virtual {v0, v1, v5}, Lcom/gcore/abase/URLRequest;->response2cpp(Lcom/gcore/abase/URLResponse;I)V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-virtual {v0, v1, v3}, Lcom/gcore/abase/URLRequest;->response2cpp(Lcom/gcore/abase/URLResponse;I)V

    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-virtual {v0, v1, v3}, Lcom/gcore/abase/URLRequest;->response2cpp(Lcom/gcore/abase/URLResponse;I)V

    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-virtual {v0, v1, v3}, Lcom/gcore/abase/URLRequest;->response2cpp(Lcom/gcore/abase/URLResponse;I)V

    return-void

    :cond_6
    :goto_6
    const-string v1, "headerFields == null || headerFields.entrySet() == null"

    invoke-static {v0, v1}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_5
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-virtual {v0, v1, v2}, Lcom/gcore/abase/URLRequest;->response2cpp(Lcom/gcore/abase/URLResponse;I)V

    return-void

    :catch_6
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/gcore/abase/URLRequest;->response2cpp(Lcom/gcore/abase/URLResponse;I)V

    return-void

    :catch_7
    move-exception v2

    const-string v4, "IOException"

    invoke-static {v0, v4}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    invoke-virtual {v0, v1, v3}, Lcom/gcore/abase/URLRequest;->response2cpp(Lcom/gcore/abase/URLResponse;I)V

    return-void

    :catch_8
    const-string v2, "SocketTimeoutException"

    invoke-static {v0, v2}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/gcore/abase/URLRequest;->response2cpp(Lcom/gcore/abase/URLResponse;I)V

    return-void

    :catch_9
    const-string v2, "UnknownHost"

    invoke-static {v0, v2}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gcore/abase/URLRequest$RequestTask;->this$0:Lcom/gcore/abase/URLRequest;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/gcore/abase/URLRequest;->response2cpp(Lcom/gcore/abase/URLResponse;I)V

    return-void
.end method
