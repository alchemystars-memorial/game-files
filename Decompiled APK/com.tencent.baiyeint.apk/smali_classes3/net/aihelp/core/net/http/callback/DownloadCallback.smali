.class public Lnet/aihelp/core/net/http/callback/DownloadCallback;
.super Ljava/lang/Object;
.source "DownloadCallback.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lokhttp3/Callback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestManager"


# instance fields
.field private final reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final targetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/http/callback/BaseCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    iput-object p2, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback;->targetPath:Ljava/lang/String;

    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private failedCallBack(Ljava/lang/String;Ljava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p3, p1, v0, p2}, Lnet/aihelp/core/net/http/callback/BaseCallback;->onAsyncFailure(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/http/callback/DownloadCallback$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lnet/aihelp/core/net/http/callback/DownloadCallback$2;-><init>(Lnet/aihelp/core/net/http/callback/DownloadCallback;Lnet/aihelp/core/net/http/callback/BaseCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private successCallBack(Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/http/callback/BaseCallback;->onAsyncReqSuccess(Ljava/lang/Object;)V

    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/http/callback/DownloadCallback$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/http/callback/DownloadCallback$1;-><init>(Lnet/aihelp/core/net/http/callback/DownloadCallback;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadCallback onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestManager"

    invoke-static {v1, v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-direct {p0, p1, v0, v1}, Lnet/aihelp/core/net/http/callback/DownloadCallback;->failedCallBack(Ljava/lang/String;Ljava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    invoke-static {p1, p2}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback;->targetPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_5

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback;->targetPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x2000

    :try_start_2
    new-array v1, v0, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/http/callback/DownloadCallback;->successCallBack(Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p2}, Lnet/aihelp/core/net/http/callback/DownloadCallback;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    invoke-direct {p0, v2}, Lnet/aihelp/core/net/http/callback/DownloadCallback;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_2
    move-object v1, p2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_3
    const-string p2, "RequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadCallback onResponse catch Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-direct {p0, p1, p2, v3}, Lnet/aihelp/core/net/http/callback/DownloadCallback;->failedCallBack(Ljava/lang/String;Ljava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    invoke-static {p1, v0}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-direct {p0, v1}, Lnet/aihelp/core/net/http/callback/DownloadCallback;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :goto_4
    return-void

    :catchall_3
    move-exception p1

    invoke-direct {p0, v1}, Lnet/aihelp/core/net/http/callback/DownloadCallback;->closeQuietly(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lnet/aihelp/core/net/http/callback/DownloadCallback;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_3
    :goto_5
    iget-object p2, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lnet/aihelp/core/net/http/callback/DownloadCallback;->failedCallBack(Ljava/lang/String;Ljava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    return-void
.end method
