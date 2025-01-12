.class Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;
.super Landroid/os/AsyncTask;
.source "CriFsWebInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criware/filesystem/CriFsWebInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebInstallerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private http_connection:Ljava/net/HttpURLConnection;

.field private is_ssl:Z

.field private task_dst_path:Ljava/lang/String;

.field private task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

.field private task_src_path:Ljava/lang/String;

.field final synthetic this$0:Lcom/criware/filesystem/CriFsWebInstaller;

.field private tmp_file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/criware/filesystem/CriFsWebInstaller;)V
    .locals 1

    iput-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    new-instance v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    invoke-direct {v0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;-><init>(Lcom/criware/filesystem/CriFsWebInstaller;)V

    iput-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    return-void
.end method

.method private declared-synchronized SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_DNS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iput-object p1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iput p2, p1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private task_connect()Z
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v3, v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    const/16 v5, 0xc8

    if-lez v3, :cond_0

    if-ne v2, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_HTTP:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    return v1

    :cond_1
    if-ne v2, v5, :cond_2

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v5, v3

    goto :goto_1

    :cond_2
    const/16 v3, 0xce

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v5, v3

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v7, v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    add-long/2addr v5, v7

    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iput v2, v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iput-wide v5, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_3
    if-ltz v2, :cond_4

    sget-object v3, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_HTTP:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v3, v2}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    return v1

    :cond_4
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v3, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catch_1
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_SSL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    return v1

    :catch_2
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_HTTP:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    return v1

    :catch_3
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_SSL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    return v1

    :catch_4
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    return v1

    :catch_5
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    return v1

    :catch_6
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    return v1
.end method

.method private task_copyfile()Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/high16 v4, 0x10000

    new-array v4, v4, [B

    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->isCancelled()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_3

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez v6, :cond_1

    const-wide/16 v6, 0xa

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v7

    iget-boolean v7, v7, Lcom/criware/filesystem/CriFsWebInstallerManager;->crc_enabled:Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_2

    :try_start_4
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->this$0:Lcom/criware/filesystem/CriFsWebInstaller;

    invoke-static {v7}, Lcom/criware/filesystem/CriFsWebInstaller;->access$100(Lcom/criware/filesystem/CriFsWebInstaller;)Ljava/util/zip/CRC32;

    move-result-object v7

    invoke-virtual {v7, v4, v0, v6}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    :try_start_5
    sget-object v4, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v4, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_6
    invoke-virtual {v3, v4, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v7, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v2

    :catch_2
    sget-object v4, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v4, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_2

    :catch_3
    sget-object v4, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v4, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_3
    :goto_2
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_4
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_5
    :try_start_c
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-object v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    sget-object v3, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_NONE:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-object v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->error:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    sget-object v3, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return v0

    :cond_5
    :try_start_d
    invoke-virtual {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    iget-object v4, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v6, v4, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_dst_path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return v5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v2

    :try_start_e
    sget-object v3, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v3, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_7
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_3

    :catch_8
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    goto :goto_3

    :catch_9
    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_MEMORY:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    invoke-direct {p0, v2, v1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method

.method private task_setup()Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_src_path:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->is_ssl:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_src_path:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iput-boolean v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->is_ssl:Z

    :goto_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_src_path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_dst_path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/criware/filesystem/CriFsWebInstallerManager;->allow_insecure_ssl:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->is_ssl:Z

    if-eqz v3, :cond_1

    new-array v3, v2, [Ljavax/net/ssl/X509TrustManager;

    new-instance v5, Lcom/criware/filesystem/CriFsWebInstallerManager$LooseTrustManager;

    invoke-direct {v5}, Lcom/criware/filesystem/CriFsWebInstallerManager$LooseTrustManager;-><init>()V

    aput-object v5, v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-nez v5, :cond_3

    if-eqz v3, :cond_5

    :cond_3
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    invoke-virtual {v6, v4, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    if-eqz v5, :cond_4

    new-instance v3, Lcom/criware/filesystem/TLSSocketFactory;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/criware/filesystem/TLSSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_3
    move-object v4, v3

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v3

    iget-object v3, v3, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v3

    iget-short v3, v3, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    if-eqz v3, :cond_6

    new-instance v3, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v7

    iget-object v7, v7, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v8

    iget-short v8, v8, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v1, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v3

    const-string v5, "http.proxyHost"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    if-eqz v5, :cond_8

    const-string v3, "http.proxyPort"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v5

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    const-string v3, "-1"

    :goto_4
    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, v5, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    new-instance v3, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v7

    iget-object v7, v7, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_host:Ljava/lang/String;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v8

    iget-short v8, v8, Lcom/criware/filesystem/CriFsWebInstallerManager;->proxy_port:S

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v1, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_5
    :try_start_2
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const-string v3, "User-Agent"

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v5

    iget-object v5, v5, Lcom/criware/filesystem/CriFsWebInstallerManager;->user_agent:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const-string v3, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v1, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v0

    :goto_6
    :try_start_3
    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v3

    iget-object v3, v3, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    invoke-virtual {v3}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v5

    iget-object v5, v5, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    invoke-virtual {v5, v1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/criware/filesystem/CriFsWebInstaller;->access$000()Lcom/criware/filesystem/CriFsWebInstallerManager;

    move-result-object v6

    iget-object v6, v6, Lcom/criware/filesystem/CriFsWebInstallerManager;->request_headers:Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;

    invoke-virtual {v6, v1}, Lcom/criware/filesystem/CriFsWebInstallerManager$RequestHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    if-eqz v4, :cond_a

    :try_start_4
    iget-boolean v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->is_ssl:Z

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_a
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v3, v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_LOCALFS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v1, v2}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    return v0

    :cond_b
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget-wide v5, v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v1, v2}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    return v0

    :cond_c
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_e
    :goto_7
    return v2

    :catch_0
    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v1, v2}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    return v0

    :catch_1
    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v1, v2}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    return v0

    :cond_f
    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v1, v2}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return v0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_INTERNAL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v3, v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v2, v3}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/criware/filesystem/CriFsWebInstaller;->ErrorEntry(I)Z

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_SSL:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v3, v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v2, v3}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    return v0

    :catch_4
    move-exception v1

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_CONNECTION:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v3, v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v2, v3}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    return v0

    :catch_5
    move-exception v1

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_DNS:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v3, v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v2, v3}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    return v0

    :catch_6
    move-exception v1

    sget-object v2, Lcom/criware/filesystem/CriFsWebInstaller$Error;->CRIFSWEBINSTALLER_ERROR_MEMORY:Lcom/criware/filesystem/CriFsWebInstaller$Error;

    iget-object v3, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    iget v3, v3, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->http_status_code:I

    invoke-direct {p0, v2, v3}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->SetError(Lcom/criware/filesystem/CriFsWebInstaller$Error;I)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public Cancel()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->cancel(Z)Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOPPING:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized GetTaskStatusInfo()Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected varargs doInBackground([Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_src_path:Ljava/lang/String;

    iput-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_src_path:Ljava/lang/String;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_dst_path:Ljava/lang/String;

    iput-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_dst_path:Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_contents_size:J

    iput-wide v3, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->contents_size:J

    iget-object v2, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    aget-object p1, p1, v0

    iget-wide v3, p1, Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;->param_received_size:J

    iput-wide v3, v2, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->received_size:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_setup()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->tmp_file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_2
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_connect()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->http_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_3
    invoke-direct {p0}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_copyfile()Z

    move-result p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;

    invoke-virtual {p0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->doInBackground([Lcom/criware/filesystem/CriFsWebInstaller$AsyncTaskParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v1, v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->task_internal_info:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;

    sget-object v0, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;->STOP:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    iput-object v0, p1, Lcom/criware/filesystem/CriFsWebInstaller$TaskStatusInfo;->status:Lcom/criware/filesystem/CriFsWebInstaller$TaskStatus;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/criware/filesystem/CriFsWebInstaller$WebInstallerTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
