.class public Lcom/gcore/abase/URLRequest;
.super Ljava/lang/Object;
.source "URLRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gcore/abase/URLRequest$DownloadTask;,
        Lcom/gcore/abase/URLRequest$RequestTask;
    }
.end annotation


# static fields
.field private static final ABASE_WWW_FAILED:I = 0x1

.field private static final ABASE_WWW_IOEXCEPTION:I = 0x6

.field private static final ABASE_WWW_NETWORKEXCEPTION:I = 0x5

.field private static final ABASE_WWW_SECURITYEXCEPTION:I = 0x7

.field private static final ABASE_WWW_SUCC:I = 0x0

.field private static final ABASE_WWW_TIMEOUT:I = 0x2

.field private static final ABASE_WWW_UNKNOWNHOST:I = 0x3

.field private static final ABASE_WWW_UNSUPPORTEDURL:I = 0x4

.field private static final CHUNK:I = 0x1f400

.field private static final INIT:I = 0x0

.field private static final PAUSE:I = 0x2

.field private static final PROCESSING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "URLRequest"


# instance fields
.field private dataTask:J

.field private delegate:J

.field private downloadTask:J

.field private mDownloadDelegate:J

.field private mFileCurrentSize:J

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mUrlStr:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gcore/abase/URLRequest;->mHeaders:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    iput-wide v0, p0, Lcom/gcore/abase/URLRequest;->mFileCurrentSize:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/gcore/abase/URLRequest;->mState:I

    return-void
.end method

.method private JNITaskBegan(JJJ)V
    .locals 0

    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/gcore/abase/URLRequest;->nativeTaskBegan(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private JNITaskFinished(JIJJ)V
    .locals 0

    :try_start_0
    invoke-static/range {p1 .. p7}, Lcom/gcore/abase/URLRequest;->nativeTaskFinished(JIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private JNITaskProgress(JJJJ)V
    .locals 0

    :try_start_0
    invoke-static/range {p1 .. p8}, Lcom/gcore/abase/URLRequest;->nativeTaskProgress(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/gcore/abase/URLRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/gcore/abase/URLRequest;->mUrlStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gcore/abase/URLRequest;)I
    .locals 0

    iget p0, p0, Lcom/gcore/abase/URLRequest;->timeout:I

    return p0
.end method

.method static synthetic access$1000(Lcom/gcore/abase/URLRequest;JJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/gcore/abase/URLRequest;->JNITaskProgress(JJJJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/gcore/abase/URLRequest;JIJJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/gcore/abase/URLRequest;->JNITaskFinished(JIJJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/gcore/abase/URLRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/gcore/abase/URLRequest;->uninit()V

    return-void
.end method

.method static synthetic access$200(Lcom/gcore/abase/URLRequest;Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gcore/abase/URLRequest;->addHeadersToConn(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/gcore/abase/URLRequest;)I
    .locals 0

    iget p0, p0, Lcom/gcore/abase/URLRequest;->mState:I

    return p0
.end method

.method static synthetic access$302(Lcom/gcore/abase/URLRequest;I)I
    .locals 0

    iput p1, p0, Lcom/gcore/abase/URLRequest;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/gcore/abase/URLRequest;Ljava/net/HttpURLConnection;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/gcore/abase/URLRequest;->initDownload(Ljava/net/HttpURLConnection;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/gcore/abase/URLRequest;)J
    .locals 2

    iget-wide v0, p0, Lcom/gcore/abase/URLRequest;->mFileCurrentSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/gcore/abase/URLRequest;J)J
    .locals 0

    iput-wide p1, p0, Lcom/gcore/abase/URLRequest;->mFileCurrentSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/gcore/abase/URLRequest;)J
    .locals 2

    iget-wide v0, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/gcore/abase/URLRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/gcore/abase/URLRequest;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/gcore/abase/URLRequest;)J
    .locals 2

    iget-wide v0, p0, Lcom/gcore/abase/URLRequest;->mDownloadDelegate:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/gcore/abase/URLRequest;)J
    .locals 2

    iget-wide v0, p0, Lcom/gcore/abase/URLRequest;->downloadTask:J

    return-wide v0
.end method

.method private addHeadersToConn(Ljava/net/HttpURLConnection;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "URLRequest"

    const-string/jumbo v0, "urlConn is null!"

    invoke-static {p1, v0}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gcore/abase/URLRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/gcore/abase/URLRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static init()V
    .locals 2

    const-string v0, "URLRequest"

    const-string v1, "URLRequest init"

    invoke-static {v0, v1}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/gcore/abase/URLRequest;->nativeInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initDownload(Ljava/net/HttpURLConnection;)Z
    .locals 12

    const/4 v0, 0x0

    const-string v1, "URLRequest"

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v3, "urlConn is null"

    invoke-static {v1, v3}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    invoke-static {v2}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_1
    const-wide/16 v3, 0x0

    :try_start_1
    iput-wide v3, p0, Lcom/gcore/abase/URLRequest;->mFileCurrentSize:J

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/gcore/abase/URLRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v3, "createNewFile failed"

    invoke-static {v1, v3}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    invoke-static {v2}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rwd"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    const-string v2, "get fileSize Fail"

    invoke-static {v1, v2}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    invoke-static {v4}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :cond_5
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileSize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-wide v6, p0, Lcom/gcore/abase/URLRequest;->mDownloadDelegate:J

    iget-wide v8, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    iget-wide v10, p0, Lcom/gcore/abase/URLRequest;->downloadTask:J

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/gcore/abase/URLRequest;->JNITaskBegan(JJJ)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    invoke-static {v4}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v2, v4

    goto :goto_0

    :catch_1
    move-object v2, v4

    goto :goto_1

    :catch_2
    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_0
    :try_start_5
    iget-wide v4, p0, Lcom/gcore/abase/URLRequest;->mDownloadDelegate:J

    const/4 v6, 0x1

    iget-wide v7, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    iget-wide v9, p0, Lcom/gcore/abase/URLRequest;->downloadTask:J

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/gcore/abase/URLRequest;->JNITaskFinished(JIJJ)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    invoke-static {v2}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catch_4
    :goto_1
    :try_start_6
    const-string v3, "SocketTimeoutException"

    invoke-static {v1, v3}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/gcore/abase/URLRequest;->mDownloadDelegate:J

    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    iget-wide v10, p0, Lcom/gcore/abase/URLRequest;->downloadTask:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/gcore/abase/URLRequest;->JNITaskFinished(JIJJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    invoke-static {v2}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catch_5
    :goto_2
    :try_start_7
    const-string v3, "UnknownHost"

    invoke-static {v1, v3}, Lcom/gcore/abase/log/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/gcore/abase/URLRequest;->mDownloadDelegate:J

    const/4 v7, 0x3

    iget-wide v8, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    iget-wide v10, p0, Lcom/gcore/abase/URLRequest;->downloadTask:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/gcore/abase/URLRequest;->JNITaskFinished(JIJJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    invoke-static {v2}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :goto_3
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    invoke-static {v2}, Lcom/gcore/abase/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static native nativeInit()V
.end method

.method public static native nativeResponse(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;J)V
.end method

.method public static native nativeTaskBegan(JJJ)V
.end method

.method public static native nativeTaskFinished(JIJJ)V
.end method

.method public static native nativeTaskProgress(JJJJ)V
.end method

.method private uninit()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/gcore/abase/URLRequest;->mState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gcore/abase/URLRequest;->mFileCurrentSize:J

    iput-wide v0, p0, Lcom/gcore/abase/URLRequest;->mFileSize:J

    return-void
.end method


# virtual methods
.method public addHead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/gcore/abase/URLRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-direct {p0}, Lcom/gcore/abase/URLRequest;->uninit()V

    return-void
.end method

.method public downloadFile(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/gcore/abase/URLRequest;->mFilePath:Ljava/lang/String;

    iget p1, p0, Lcom/gcore/abase/URLRequest;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gcore/abase/URLRequest$DownloadTask;

    invoke-direct {v0, p0}, Lcom/gcore/abase/URLRequest$DownloadTask;-><init>(Lcom/gcore/abase/URLRequest;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public get(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/gcore/abase/URLRequest;->mUrlStr:Ljava/lang/String;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gcore/abase/URLRequest$RequestTask;

    invoke-direct {v0, p0}, Lcom/gcore/abase/URLRequest$RequestTask;-><init>(Lcom/gcore/abase/URLRequest;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public initWithURL(Ljava/lang/String;I)I
    .locals 0

    iput-object p1, p0, Lcom/gcore/abase/URLRequest;->mUrlStr:Ljava/lang/String;

    iput p2, p0, Lcom/gcore/abase/URLRequest;->timeout:I

    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 2

    iget v0, p0, Lcom/gcore/abase/URLRequest;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/gcore/abase/URLRequest;->mState:I

    :cond_0
    return-void
.end method

.method public post(Ljava/lang/String;[B)V
    .locals 1

    iput-object p1, p0, Lcom/gcore/abase/URLRequest;->mUrlStr:Ljava/lang/String;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gcore/abase/URLRequest$RequestTask;

    invoke-direct {v0, p0, p2}, Lcom/gcore/abase/URLRequest$RequestTask;-><init>(Lcom/gcore/abase/URLRequest;[B)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public response2cpp(Lcom/gcore/abase/URLResponse;I)V
    .locals 12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/gcore/abase/URLResponse;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]response2cpp with result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "URLRequest"

    invoke-static {v3, v2}, Lcom/gcore/abase/log/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    :try_start_0
    iget-wide v2, p0, Lcom/gcore/abase/URLRequest;->delegate:J

    const/4 v4, 0x0

    const-string v5, ""

    iget-object v6, p1, Lcom/gcore/abase/URLResponse;->URL:Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/gcore/abase/URLRequest;->dataTask:J

    move v1, p2

    invoke-static/range {v1 .. v11}, Lcom/gcore/abase/URLRequest;->nativeResponse(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/gcore/abase/URLResponse;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :try_start_1
    iget-wide v3, p0, Lcom/gcore/abase/URLRequest;->delegate:J

    iget v5, p1, Lcom/gcore/abase/URLResponse;->status:I

    iget-object v6, p1, Lcom/gcore/abase/URLResponse;->statusMsg:Ljava/lang/String;

    iget-object v7, p1, Lcom/gcore/abase/URLResponse;->URL:Ljava/lang/String;

    iget-object v8, p1, Lcom/gcore/abase/URLResponse;->version:Ljava/lang/String;

    iget-object v0, p1, Lcom/gcore/abase/URLResponse;->body:[B

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v9, v2

    check-cast v9, [Ljava/lang/String;

    iget-wide v10, p0, Lcom/gcore/abase/URLRequest;->dataTask:J

    move v1, p2

    move-wide v2, v3

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    invoke-static/range {v1 .. v11}, Lcom/gcore/abase/URLRequest;->nativeResponse(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setBody([B)V
    .locals 0

    return-void
.end method

.method public setDelegate(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/gcore/abase/URLRequest;->delegate:J

    iput-wide p3, p0, Lcom/gcore/abase/URLRequest;->dataTask:J

    return-void
.end method

.method public setDownloadDelegate(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/gcore/abase/URLRequest;->mDownloadDelegate:J

    iput-wide p3, p0, Lcom/gcore/abase/URLRequest;->downloadTask:J

    return-void
.end method
