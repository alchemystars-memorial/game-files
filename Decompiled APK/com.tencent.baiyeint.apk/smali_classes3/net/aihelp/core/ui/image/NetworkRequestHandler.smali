.class Lnet/aihelp/core/ui/image/NetworkRequestHandler;
.super Lnet/aihelp/core/ui/image/RequestHandler;
.source "NetworkRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/image/NetworkRequestHandler$ResponseException;,
        Lnet/aihelp/core/ui/image/NetworkRequestHandler$ContentLengthException;
    }
.end annotation


# static fields
.field private static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"


# instance fields
.field private final downloader:Lnet/aihelp/core/ui/image/Downloader;

.field private final stats:Lnet/aihelp/core/ui/image/Stats;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/Downloader;Lnet/aihelp/core/ui/image/Stats;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/RequestHandler;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/NetworkRequestHandler;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    iput-object p2, p0, Lnet/aihelp/core/ui/image/NetworkRequestHandler;->stats:Lnet/aihelp/core/ui/image/Stats;

    return-void
.end method

.method private static createRequest(Lnet/aihelp/core/ui/image/Request;I)Lokhttp3/Request;
    .locals 2

    if-eqz p1, :cond_3

    invoke-static {p1}, Lnet/aihelp/core/ui/image/NetworkPolicy;->isOfflineOnly(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    goto :goto_0

    :cond_0
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-static {p1}, Lnet/aihelp/core/ui/image/NetworkPolicy;->shouldReadFromDiskCache(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    :cond_1
    invoke-static {p1}, Lnet/aihelp/core/ui/image/NetworkPolicy;->shouldWriteToDiskCache(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    :cond_2
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object p0, p0, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    :cond_4
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canHandleRequest(Lnet/aihelp/core/ui/image/Request;)Z
    .locals 1

    iget-object p1, p1, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method getRetryCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public load(Lnet/aihelp/core/ui/image/Request;I)Lnet/aihelp/core/ui/image/RequestHandler$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lnet/aihelp/core/ui/image/NetworkRequestHandler;->createRequest(Lnet/aihelp/core/ui/image/Request;I)Lokhttp3/Request;

    move-result-object p2

    iget-object v0, p0, Lnet/aihelp/core/ui/image/NetworkRequestHandler;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    invoke-interface {v0, p2}, Lnet/aihelp/core/ui/image/Downloader;->load(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->NETWORK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->DISK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    :goto_0
    sget-object p2, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->DISK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    const-wide/16 v1, 0x0

    if-ne p1, p2, :cond_2

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    new-instance p1, Lnet/aihelp/core/ui/image/NetworkRequestHandler$ContentLengthException;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lnet/aihelp/core/ui/image/NetworkRequestHandler$ContentLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    sget-object p2, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->NETWORK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    if-ne p1, p2, :cond_3

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_3

    iget-object p2, p0, Lnet/aihelp/core/ui/image/NetworkRequestHandler;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lnet/aihelp/core/ui/image/Stats;->dispatchDownloadFinished(J)V

    :cond_3
    new-instance p2, Lnet/aihelp/core/ui/image/RequestHandler$Result;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lnet/aihelp/core/ui/image/RequestHandler$Result;-><init>(Lokio/Source;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V

    return-object p2

    :cond_4
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    new-instance v0, Lnet/aihelp/core/ui/image/NetworkRequestHandler$ResponseException;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    iget p1, p1, Lnet/aihelp/core/ui/image/Request;->networkPolicy:I

    invoke-direct {v0, p2, p1}, Lnet/aihelp/core/ui/image/NetworkRequestHandler$ResponseException;-><init>(II)V

    throw v0
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method supportsReplay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
