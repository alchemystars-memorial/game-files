.class Lnet/aihelp/core/ui/image/AssetRequestHandler;
.super Lnet/aihelp/core/ui/image/RequestHandler;
.source "AssetRequestHandler.java"


# static fields
.field protected static final ANDROID_ASSET:Ljava/lang/String; = "android_asset"

.field private static final ASSET_PREFIX_LENGTH:I = 0x16


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;

.field private final context:Landroid/content/Context;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/RequestHandler;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/AssetRequestHandler;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lnet/aihelp/core/ui/image/AssetRequestHandler;->context:Landroid/content/Context;

    return-void
.end method

.method static getFilePath(Lnet/aihelp/core/ui/image/Request;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lnet/aihelp/core/ui/image/AssetRequestHandler;->ASSET_PREFIX_LENGTH:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canHandleRequest(Lnet/aihelp/core/ui/image/Request;)Z
    .locals 2

    iget-object p1, p1, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public load(Lnet/aihelp/core/ui/image/Request;I)Lnet/aihelp/core/ui/image/RequestHandler$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lnet/aihelp/core/ui/image/AssetRequestHandler;->assetManager:Landroid/content/res/AssetManager;

    if-nez p2, :cond_1

    iget-object p2, p0, Lnet/aihelp/core/ui/image/AssetRequestHandler;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/AssetRequestHandler;->assetManager:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/image/AssetRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/ui/image/AssetRequestHandler;->assetManager:Landroid/content/res/AssetManager;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lnet/aihelp/core/ui/image/AssetRequestHandler;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lnet/aihelp/core/ui/image/AssetRequestHandler;->getFilePath(Lnet/aihelp/core/ui/image/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1

    new-instance p2, Lnet/aihelp/core/ui/image/RequestHandler$Result;

    sget-object v0, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->DISK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-direct {p2, p1, v0}, Lnet/aihelp/core/ui/image/RequestHandler$Result;-><init>(Lokio/Source;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V

    return-object p2
.end method
