.class public Lnet/aihelp/core/net/http/FileProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "FileProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/http/FileProgressRequestBody$ProgressListener;
    }
.end annotation


# static fields
.field private static final SEGMENT_SIZE:I = 0x800


# instance fields
.field protected file:Ljava/io/File;

.field protected listener:Lnet/aihelp/core/net/http/FileProgressRequestBody$ProgressListener;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Ljava/io/File;Lnet/aihelp/core/net/http/FileProgressRequestBody$ProgressListener;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/http/FileProgressRequestBody;->mediaType:Lokhttp3/MediaType;

    iput-object p2, p0, Lnet/aihelp/core/net/http/FileProgressRequestBody;->file:Ljava/io/File;

    iput-object p3, p0, Lnet/aihelp/core/net/http/FileProgressRequestBody;->listener:Lnet/aihelp/core/net/http/FileProgressRequestBody$ProgressListener;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/net/http/FileProgressRequestBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/net/http/FileProgressRequestBody;->mediaType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/http/FileProgressRequestBody;->file:Ljava/io/File;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v3

    const-wide/16 v4, 0x800

    invoke-interface {v0, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    add-long/2addr v1, v3

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    iget-object v3, p0, Lnet/aihelp/core/net/http/FileProgressRequestBody;->listener:Lnet/aihelp/core/net/http/FileProgressRequestBody$ProgressListener;

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x64

    mul-long/2addr v4, v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/http/FileProgressRequestBody;->contentLength()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {p0}, Lnet/aihelp/core/net/http/FileProgressRequestBody;->contentLength()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3, v4, v5}, Lnet/aihelp/core/net/http/FileProgressRequestBody$ProgressListener;->onProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
