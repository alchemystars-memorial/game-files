.class public Lnet/aihelp/core/ui/image/Picasso$Builder;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cache:Lnet/aihelp/core/ui/image/Cache;

.field private final context:Landroid/content/Context;

.field private defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private downloader:Lnet/aihelp/core/ui/image/Downloader;

.field private indicatorsEnabled:Z

.field private listener:Lnet/aihelp/core/ui/image/Picasso$Listener;

.field private loggingEnabled:Z

.field private requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ljava/util/concurrent/ExecutorService;

.field private transformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->context:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addRequestHandler(Lnet/aihelp/core/ui/image/RequestHandler;)Lnet/aihelp/core/ui/image/Picasso$Builder;
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->requestHandlers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->requestHandlers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RequestHandler already registered."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RequestHandler must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lnet/aihelp/core/ui/image/Picasso;
    .locals 14

    iget-object v7, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->context:Landroid/content/Context;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    if-nez v0, :cond_0

    new-instance v0, Lnet/aihelp/core/ui/image/OkHttp3Downloader;

    invoke-direct {v0, v7}, Lnet/aihelp/core/ui/image/OkHttp3Downloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->cache:Lnet/aihelp/core/ui/image/Cache;

    if-nez v0, :cond_1

    new-instance v0, Lnet/aihelp/core/ui/image/LruCache;

    invoke-direct {v0, v7}, Lnet/aihelp/core/ui/image/LruCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->cache:Lnet/aihelp/core/ui/image/Cache;

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    new-instance v0, Lnet/aihelp/core/ui/image/PicassoExecutorService;

    invoke-direct {v0}, Lnet/aihelp/core/ui/image/PicassoExecutorService;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->transformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    if-nez v0, :cond_3

    sget-object v0, Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;->IDENTITY:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->transformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    :cond_3
    new-instance v8, Lnet/aihelp/core/ui/image/Stats;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->cache:Lnet/aihelp/core/ui/image/Cache;

    invoke-direct {v8, v0}, Lnet/aihelp/core/ui/image/Stats;-><init>(Lnet/aihelp/core/ui/image/Cache;)V

    new-instance v9, Lnet/aihelp/core/ui/image/Dispatcher;

    iget-object v2, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    iget-object v4, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    iget-object v5, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->cache:Lnet/aihelp/core/ui/image/Cache;

    move-object v0, v9

    move-object v1, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lnet/aihelp/core/ui/image/Dispatcher;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lnet/aihelp/core/ui/image/Downloader;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Stats;)V

    new-instance v11, Lnet/aihelp/core/ui/image/Picasso;

    iget-object v3, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->cache:Lnet/aihelp/core/ui/image/Cache;

    iget-object v4, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->listener:Lnet/aihelp/core/ui/image/Picasso$Listener;

    iget-object v5, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->transformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    iget-object v6, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->requestHandlers:Ljava/util/List;

    iget-object v10, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean v12, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->indicatorsEnabled:Z

    iget-boolean v13, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->loggingEnabled:Z

    move-object v0, v11

    move-object v2, v9

    move-object v7, v8

    move-object v8, v10

    move v9, v12

    move v10, v13

    invoke-direct/range {v0 .. v10}, Lnet/aihelp/core/ui/image/Picasso;-><init>(Landroid/content/Context;Lnet/aihelp/core/ui/image/Dispatcher;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Picasso$Listener;Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;Ljava/util/List;Lnet/aihelp/core/ui/image/Stats;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v11
.end method

.method public defaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lnet/aihelp/core/ui/image/Picasso$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap config must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloader(Lnet/aihelp/core/ui/image/Downloader;)Lnet/aihelp/core/ui/image/Picasso$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->downloader:Lnet/aihelp/core/ui/image/Downloader;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Downloader already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Downloader must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executor(Ljava/util/concurrent/ExecutorService;)Lnet/aihelp/core/ui/image/Picasso$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->service:Ljava/util/concurrent/ExecutorService;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Executor service already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Executor service must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indicatorsEnabled(Z)Lnet/aihelp/core/ui/image/Picasso$Builder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->indicatorsEnabled:Z

    return-object p0
.end method

.method public listener(Lnet/aihelp/core/ui/image/Picasso$Listener;)Lnet/aihelp/core/ui/image/Picasso$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->listener:Lnet/aihelp/core/ui/image/Picasso$Listener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->listener:Lnet/aihelp/core/ui/image/Picasso$Listener;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Listener already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loggingEnabled(Z)Lnet/aihelp/core/ui/image/Picasso$Builder;
    .locals 0

    iput-boolean p1, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->loggingEnabled:Z

    return-object p0
.end method

.method public memoryCache(Lnet/aihelp/core/ui/image/Cache;)Lnet/aihelp/core/ui/image/Picasso$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->cache:Lnet/aihelp/core/ui/image/Cache;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->cache:Lnet/aihelp/core/ui/image/Cache;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Memory cache already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Memory cache must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestTransformer(Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;)Lnet/aihelp/core/ui/image/Picasso$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->transformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Picasso$Builder;->transformer:Lnet/aihelp/core/ui/image/Picasso$RequestTransformer;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Transformer already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformer must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
