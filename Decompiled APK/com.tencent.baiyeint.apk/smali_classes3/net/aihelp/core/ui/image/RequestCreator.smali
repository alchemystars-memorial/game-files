.class public Lnet/aihelp/core/ui/image/RequestCreator;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# static fields
.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final data:Lnet/aihelp/core/ui/image/Request$Builder;

.field private deferred:Z

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResId:I

.field private memoryPolicy:I

.field private networkPolicy:I

.field private noFade:Z

.field private final picasso:Lnet/aihelp/core/ui/image/Picasso;

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResId:I

.field private setPlaceholder:Z

.field private tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lnet/aihelp/core/ui/image/RequestCreator;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    new-instance v1, Lnet/aihelp/core/ui/image/Request$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v0}, Lnet/aihelp/core/ui/image/Request$Builder;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    return-void
.end method

.method constructor <init>(Lnet/aihelp/core/ui/image/Picasso;Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    iget-boolean v0, p1, Lnet/aihelp/core/ui/image/Picasso;->shutdown:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    new-instance v0, Lnet/aihelp/core/ui/image/Request$Builder;

    iget-object p1, p1, Lnet/aihelp/core/ui/image/Picasso;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lnet/aihelp/core/ui/image/Request$Builder;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createRequest(J)Lnet/aihelp/core/ui/image/Request;
    .locals 7

    sget-object v0, Lnet/aihelp/core/ui/image/RequestCreator;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Request$Builder;->build()Lnet/aihelp/core/ui/image/Request;

    move-result-object v1

    iput v0, v1, Lnet/aihelp/core/ui/image/Request;->id:I

    iput-wide p1, v1, Lnet/aihelp/core/ui/image/Request;->started:J

    iget-object v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v2, v2, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    const-string v3, "Main"

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Request;->plainId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Request;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "created"

    invoke-static {v3, v6, v4, v5}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v4, v1}, Lnet/aihelp/core/ui/image/Picasso;->transformRequest(Lnet/aihelp/core/ui/image/Request;)Lnet/aihelp/core/ui/image/Request;

    move-result-object v4

    if-eq v4, v1, :cond_1

    iput v0, v4, Lnet/aihelp/core/ui/image/Request;->id:I

    iput-wide p1, v4, Lnet/aihelp/core/ui/image/Request;->started:J

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "into "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "changed"

    invoke-static {v3, v0, p1, p2}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v4
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderResId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v0, v0, Lnet/aihelp/core/ui/image/Picasso;->context:Landroid/content/Context;

    iget v1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderResId:I

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private performRemoteViewInto(Lnet/aihelp/core/ui/image/RemoteViewsAction;)V
    .locals 2

    iget v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    invoke-static {v0}, Lnet/aihelp/core/ui/image/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/RemoteViewsAction;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/image/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/image/RemoteViewsAction;->complete(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V

    return-void

    :cond_0
    iget v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderResId:I

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/image/RemoteViewsAction;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Picasso;->enqueueAndSubmit(Lnet/aihelp/core/ui/image/Action;)V

    return-void
.end method


# virtual methods
.method public centerCrop()Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop(I)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public centerCrop(I)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop(I)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public centerInside()Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Request$Builder;->centerInside()Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method clearTag()Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public config(Landroid/graphics/Bitmap$Config;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;->config(Landroid/graphics/Bitmap$Config;)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public error(I)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iput p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->errorResId:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    if-eqz p1, :cond_1

    iget v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->errorResId:I

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fetch()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/aihelp/core/ui/image/RequestCreator;->fetch(Lnet/aihelp/core/ui/image/Callback;)V

    return-void
.end method

.method public fetch(Lnet/aihelp/core/ui/image/Callback;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-boolean v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->deferred:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Request$Builder;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Request$Builder;->hasPriority()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    sget-object v3, Lnet/aihelp/core/ui/image/Picasso$Priority;->LOW:Lnet/aihelp/core/ui/image/Picasso$Priority;

    invoke-virtual {v2, v3}, Lnet/aihelp/core/ui/image/Request$Builder;->priority(Lnet/aihelp/core/ui/image/Picasso$Priority;)Lnet/aihelp/core/ui/image/Request$Builder;

    :cond_0
    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;->createRequest(J)Lnet/aihelp/core/ui/image/Request;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v0}, Lnet/aihelp/core/ui/image/Utils;->createKey(Lnet/aihelp/core/ui/image/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    iget v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    invoke-static {v0}, Lnet/aihelp/core/ui/image/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v0, v10}, Lnet/aihelp/core/ui/image/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lnet/aihelp/core/ui/image/Request;->plainId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main"

    const-string v3, "completed"

    invoke-static {v2, v3, v0, v1}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lnet/aihelp/core/ui/image/Callback;->onSuccess()V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lnet/aihelp/core/ui/image/FetchAction;

    iget-object v5, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget v7, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    iget v8, p0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    iget-object v9, p0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    move-object v4, v0

    move-object v11, p1

    invoke-direct/range {v4 .. v11}, Lnet/aihelp/core/ui/image/FetchAction;-><init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Request;IILjava/lang/Object;Ljava/lang/String;Lnet/aihelp/core/ui/image/Callback;)V

    iget-object p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/image/Picasso;->submit(Lnet/aihelp/core/ui/image/Action;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fit cannot be used with fetch."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fit()Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->deferred:Z

    return-object p0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Lnet/aihelp/core/ui/image/Utils;->checkNotMain()V

    iget-boolean v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->deferred:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Request$Builder;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;->createRequest(J)Lnet/aihelp/core/ui/image/Request;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v0}, Lnet/aihelp/core/ui/image/Utils;->createKey(Lnet/aihelp/core/ui/image/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lnet/aihelp/core/ui/image/GetAction;

    iget-object v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget v4, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    iget v5, p0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    iget-object v6, p0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lnet/aihelp/core/ui/image/GetAction;-><init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Request;IILjava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v2, v1, Lnet/aihelp/core/ui/image/Picasso;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    iget-object v3, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v3, v3, Lnet/aihelp/core/ui/image/Picasso;->cache:Lnet/aihelp/core/ui/image/Cache;

    iget-object v4, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v4, v4, Lnet/aihelp/core/ui/image/Picasso;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-static {v1, v2, v3, v4, v0}, Lnet/aihelp/core/ui/image/BitmapHunter;->forRequest(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Dispatcher;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Stats;Lnet/aihelp/core/ui/image/Action;)Lnet/aihelp/core/ui/image/BitmapHunter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fit cannot be used with get."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/Callback;)V

    return-void
.end method

.method public into(Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/Callback;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {}, Lnet/aihelp/core/ui/image/Utils;->checkMain()V

    if-eqz v3, :cond_b

    iget-object v4, v0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v4}, Lnet/aihelp/core/ui/image/Request$Builder;->hasImage()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v1, v3}, Lnet/aihelp/core/ui/image/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    iget-boolean v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lnet/aihelp/core/ui/image/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v4, v0, Lnet/aihelp/core/ui/image/RequestCreator;->deferred:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v4}, Lnet/aihelp/core/ui/image/Request$Builder;->hasSize()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, v0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v6, v4, v5}, Lnet/aihelp/core/ui/image/Request$Builder;->resize(II)Lnet/aihelp/core/ui/image/Request$Builder;

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lnet/aihelp/core/ui/image/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    new-instance v2, Lnet/aihelp/core/ui/image/DeferredRequestCreator;

    invoke-direct {v2, p0, v3, v11}, Lnet/aihelp/core/ui/image/DeferredRequestCreator;-><init>(Lnet/aihelp/core/ui/image/RequestCreator;Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/Callback;)V

    invoke-virtual {v1, v3, v2}, Lnet/aihelp/core/ui/image/Picasso;->defer(Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/DeferredRequestCreator;)V

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_1
    invoke-direct {p0, v1, v2}, Lnet/aihelp/core/ui/image/RequestCreator;->createRequest(J)Lnet/aihelp/core/ui/image/Request;

    move-result-object v7

    invoke-static {v7}, Lnet/aihelp/core/ui/image/Utils;->createKey(Lnet/aihelp/core/ui/image/Request;)Ljava/lang/String;

    move-result-object v9

    iget v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    invoke-static {v1}, Lnet/aihelp/core/ui/image/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v1, v9}, Lnet/aihelp/core/ui/image/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v1, v3}, Lnet/aihelp/core/ui/image/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    iget-object v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v2, v1, Lnet/aihelp/core/ui/image/Picasso;->context:Landroid/content/Context;

    sget-object v5, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    iget-boolean v6, v0, Lnet/aihelp/core/ui/image/RequestCreator;->noFade:Z

    iget-object v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v8, v1, Lnet/aihelp/core/ui/image/Picasso;->indicatorsEnabled:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v8

    invoke-static/range {v1 .. v6}, Lnet/aihelp/core/ui/image/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;ZZ)V

    iget-object v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v1, v1, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_7

    invoke-virtual {v7}, Lnet/aihelp/core/ui/image/Request;->plainId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v11, :cond_8

    invoke-interface/range {p2 .. p2}, Lnet/aihelp/core/ui/image/Callback;->onSuccess()V

    :cond_8
    return-void

    :cond_9
    iget-boolean v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lnet/aihelp/core/ui/image/PicassoDrawable;->setPlaceholder(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    new-instance v13, Lnet/aihelp/core/ui/image/ImageViewAction;

    iget-object v2, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget v5, v0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    iget v6, v0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    iget v8, v0, Lnet/aihelp/core/ui/image/RequestCreator;->errorResId:I

    iget-object v10, v0, Lnet/aihelp/core/ui/image/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    iget-boolean v14, v0, Lnet/aihelp/core/ui/image/RequestCreator;->noFade:Z

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v11, p2

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lnet/aihelp/core/ui/image/ImageViewAction;-><init>(Lnet/aihelp/core/ui/image/Picasso;Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lnet/aihelp/core/ui/image/Callback;Z)V

    iget-object v1, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v1, v13}, Lnet/aihelp/core/ui/image/Picasso;->enqueueAndSubmit(Lnet/aihelp/core/ui/image/Action;)V

    return-void

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public into(Landroid/widget/RemoteViews;IILandroid/app/Notification;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method

.method public into(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;Lnet/aihelp/core/ui/image/Callback;)V

    return-void
.end method

.method public into(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;Lnet/aihelp/core/ui/image/Callback;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    iget-boolean v3, v0, Lnet/aihelp/core/ui/image/RequestCreator;->deferred:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, v0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderResId:I

    if-nez v3, :cond_0

    iget-object v3, v0, Lnet/aihelp/core/ui/image/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/ui/image/RequestCreator;->createRequest(J)Lnet/aihelp/core/ui/image/Request;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v1}, Lnet/aihelp/core/ui/image/Utils;->createKey(Lnet/aihelp/core/ui/image/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;

    iget-object v4, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget v11, v0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    iget v12, v0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    iget-object v14, v0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    iget v15, v0, Lnet/aihelp/core/ui/image/RequestCreator;->errorResId:I

    move-object v3, v1

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v16, p6

    invoke-direct/range {v3 .. v16}, Lnet/aihelp/core/ui/image/RemoteViewsAction$NotificationAction;-><init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Request;Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Object;ILnet/aihelp/core/ui/image/Callback;)V

    invoke-direct {v0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;->performRemoteViewInto(Lnet/aihelp/core/ui/image/RemoteViewsAction;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot use placeholder or error drawables with remote views."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with RemoteViews."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Notification must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RemoteViews must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public into(Landroid/widget/RemoteViews;I[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/RemoteViews;I[ILnet/aihelp/core/ui/image/Callback;)V

    return-void
.end method

.method public into(Landroid/widget/RemoteViews;I[ILnet/aihelp/core/ui/image/Callback;)V
    .locals 15

    move-object v0, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    iget-boolean v3, v0, Lnet/aihelp/core/ui/image/RequestCreator;->deferred:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, v0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderResId:I

    if-nez v3, :cond_0

    iget-object v3, v0, Lnet/aihelp/core/ui/image/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    invoke-direct {p0, v1, v2}, Lnet/aihelp/core/ui/image/RequestCreator;->createRequest(J)Lnet/aihelp/core/ui/image/Request;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v1}, Lnet/aihelp/core/ui/image/Utils;->createKey(Lnet/aihelp/core/ui/image/Request;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lnet/aihelp/core/ui/image/RemoteViewsAction$AppWidgetAction;

    iget-object v4, v0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget v9, v0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    iget v10, v0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    iget-object v12, v0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    iget v13, v0, Lnet/aihelp/core/ui/image/RequestCreator;->errorResId:I

    move-object v3, v1

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v14, p4

    invoke-direct/range {v3 .. v14}, Lnet/aihelp/core/ui/image/RemoteViewsAction$AppWidgetAction;-><init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Request;Landroid/widget/RemoteViews;I[IIILjava/lang/String;Ljava/lang/Object;ILnet/aihelp/core/ui/image/Callback;)V

    invoke-direct {p0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;->performRemoteViewInto(Lnet/aihelp/core/ui/image/RemoteViewsAction;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot use placeholder or error drawables with remote views."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with remote views."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "appWidgetIds must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteViews must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public into(Lnet/aihelp/core/ui/image/Target;)V
    .locals 14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {}, Lnet/aihelp/core/ui/image/Utils;->checkMain()V

    if-eqz p1, :cond_5

    iget-boolean v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->deferred:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Request$Builder;->hasImage()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Picasso;->cancelRequest(Lnet/aihelp/core/ui/image/Target;)V

    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    invoke-interface {p1, v3}, Lnet/aihelp/core/ui/image/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;->createRequest(J)Lnet/aihelp/core/ui/image/Request;

    move-result-object v7

    invoke-static {v7}, Lnet/aihelp/core/ui/image/Utils;->createKey(Lnet/aihelp/core/ui/image/Request;)Ljava/lang/String;

    move-result-object v11

    iget v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    invoke-static {v0}, Lnet/aihelp/core/ui/image/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v0, v11}, Lnet/aihelp/core/ui/image/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {v1, p1}, Lnet/aihelp/core/ui/image/Picasso;->cancelRequest(Lnet/aihelp/core/ui/image/Target;)V

    sget-object v1, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-interface {p1, v0, v1}, Lnet/aihelp/core/ui/image/Target;->onBitmapLoaded(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/RequestCreator;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_3
    invoke-interface {p1, v3}, Lnet/aihelp/core/ui/image/Target;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lnet/aihelp/core/ui/image/TargetAction;

    iget-object v5, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget v8, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    iget v9, p0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    iget-object v10, p0, Lnet/aihelp/core/ui/image/RequestCreator;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    iget v13, p0, Lnet/aihelp/core/ui/image/RequestCreator;->errorResId:I

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v13}, Lnet/aihelp/core/ui/image/TargetAction;-><init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Target;Lnet/aihelp/core/ui/image/Request;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/image/Picasso;->enqueueAndSubmit(Lnet/aihelp/core/ui/image/Action;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fit cannot be used with a Target."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Target must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs memoryPolicy(Lnet/aihelp/core/ui/image/MemoryPolicy;[Lnet/aihelp/core/ui/image/MemoryPolicy;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 4

    const-string v0, "Memory policy cannot be null."

    if-eqz p1, :cond_3

    iget v1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    iget p1, p1, Lnet/aihelp/core/ui/image/MemoryPolicy;->index:I

    or-int/2addr p1, v1

    iput p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    if-eqz p2, :cond_2

    array-length p1, p2

    if-lez p1, :cond_1

    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    iget v3, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    iget v2, v2, Lnet/aihelp/core/ui/image/MemoryPolicy;->index:I

    or-int/2addr v2, v3

    iput v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->memoryPolicy:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs networkPolicy(Lnet/aihelp/core/ui/image/NetworkPolicy;[Lnet/aihelp/core/ui/image/NetworkPolicy;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 4

    const-string v0, "Network policy cannot be null."

    if-eqz p1, :cond_3

    iget v1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    iget p1, p1, Lnet/aihelp/core/ui/image/NetworkPolicy;->index:I

    or-int/2addr p1, v1

    iput p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    if-eqz p2, :cond_2

    array-length p1, p2

    if-lez p1, :cond_1

    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    iget v3, p0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    iget v2, v2, Lnet/aihelp/core/ui/image/NetworkPolicy;->index:I

    or-int/2addr v2, v3

    iput v2, p0, Lnet/aihelp/core/ui/image/RequestCreator;->networkPolicy:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public noFade()Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->noFade:Z

    return-object p0
.end method

.method public noPlaceholder()Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 2

    iget v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderResId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder resource already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onlyScaleDown()Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Request$Builder;->onlyScaleDown()Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public placeholder(I)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iput p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderResId:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Placeholder image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->setPlaceholder:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderResId:I

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public priority(Lnet/aihelp/core/ui/image/Picasso$Priority;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;->priority(Lnet/aihelp/core/ui/image/Picasso$Priority;)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public purgeable()Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Request$Builder;->purgeable()Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public resize(II)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/ui/image/Request$Builder;->resize(II)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public resizeDimen(II)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v0, v0, Lnet/aihelp/core/ui/image/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/ui/image/RequestCreator;->resize(II)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    return-object p1
.end method

.method public rotate(F)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;->rotate(F)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public rotate(FFF)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lnet/aihelp/core/ui/image/Request$Builder;->rotate(FFF)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public stableKey(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;->stableKey(Ljava/lang/String;)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/RequestCreator;->tag:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tag already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform(Ljava/util/List;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/aihelp/core/ui/image/Transformation;",
            ">;)",
            "Lnet/aihelp/core/ui/image/RequestCreator;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;->transform(Ljava/util/List;)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method public transform(Lnet/aihelp/core/ui/image/Transformation;)Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->data:Lnet/aihelp/core/ui/image/Request$Builder;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;->transform(Lnet/aihelp/core/ui/image/Transformation;)Lnet/aihelp/core/ui/image/Request$Builder;

    return-object p0
.end method

.method unfit()Lnet/aihelp/core/ui/image/RequestCreator;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/RequestCreator;->deferred:Z

    return-object p0
.end method
