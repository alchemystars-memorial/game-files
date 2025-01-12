.class Lnet/aihelp/core/ui/image/FileRequestHandler;
.super Lnet/aihelp/core/ui/image/ContentStreamRequestHandler;
.source "FileRequestHandler.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/image/ContentStreamRequestHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static getFileExifRotation(Landroid/net/Uri;)I
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public canHandleRequest(Lnet/aihelp/core/ui/image/Request;)Z
    .locals 1

    iget-object p1, p1, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public load(Lnet/aihelp/core/ui/image/Request;I)Lnet/aihelp/core/ui/image/RequestHandler$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/FileRequestHandler;->getInputStream(Lnet/aihelp/core/ui/image/Request;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1

    new-instance p2, Lnet/aihelp/core/ui/image/RequestHandler$Result;

    sget-object v0, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->DISK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, v1, p1, v0, v2}, Lnet/aihelp/core/ui/image/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lokio/Source;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;I)V

    return-object p2
.end method
