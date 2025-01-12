.class Lnet/aihelp/core/ui/image/BitmapHunter;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;

.field private static final ERRORING_HANDLER:Lnet/aihelp/core/ui/image/RequestHandler;

.field private static final NAME_BUILDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field action:Lnet/aihelp/core/ui/image/Action;

.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/Action;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lnet/aihelp/core/ui/image/Cache;

.field final data:Lnet/aihelp/core/ui/image/Request;

.field final dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

.field exception:Ljava/lang/Exception;

.field exifOrientation:I

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field loadedFrom:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

.field final memoryPolicy:I

.field networkPolicy:I

.field final picasso:Lnet/aihelp/core/ui/image/Picasso;

.field priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

.field final requestHandler:Lnet/aihelp/core/ui/image/RequestHandler;

.field result:Landroid/graphics/Bitmap;

.field retryCount:I

.field final sequence:I

.field final stats:Lnet/aihelp/core/ui/image/Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/aihelp/core/ui/image/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    new-instance v0, Lnet/aihelp/core/ui/image/BitmapHunter$1;

    invoke-direct {v0}, Lnet/aihelp/core/ui/image/BitmapHunter$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/ui/image/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lnet/aihelp/core/ui/image/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lnet/aihelp/core/ui/image/BitmapHunter$2;

    invoke-direct {v0}, Lnet/aihelp/core/ui/image/BitmapHunter$2;-><init>()V

    sput-object v0, Lnet/aihelp/core/ui/image/BitmapHunter;->ERRORING_HANDLER:Lnet/aihelp/core/ui/image/RequestHandler;

    return-void
.end method

.method constructor <init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Dispatcher;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Stats;Lnet/aihelp/core/ui/image/Action;Lnet/aihelp/core/ui/image/RequestHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/aihelp/core/ui/image/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->sequence:I

    iput-object p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iput-object p2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    iput-object p3, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->cache:Lnet/aihelp/core/ui/image/Cache;

    iput-object p4, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->stats:Lnet/aihelp/core/ui/image/Stats;

    iput-object p5, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->action:Lnet/aihelp/core/ui/image/Action;

    invoke-virtual {p5}, Lnet/aihelp/core/ui/image/Action;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->key:Ljava/lang/String;

    invoke-virtual {p5}, Lnet/aihelp/core/ui/image/Action;->getRequest()Lnet/aihelp/core/ui/image/Request;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {p5}, Lnet/aihelp/core/ui/image/Action;->getPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    invoke-virtual {p5}, Lnet/aihelp/core/ui/image/Action;->getMemoryPolicy()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->memoryPolicy:I

    invoke-virtual {p5}, Lnet/aihelp/core/ui/image/Action;->getNetworkPolicy()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->networkPolicy:I

    iput-object p6, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->requestHandler:Lnet/aihelp/core/ui/image/RequestHandler;

    invoke-virtual {p6}, Lnet/aihelp/core/ui/image/RequestHandler;->getRetryCount()I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->retryCount:I

    return-void
.end method

.method static applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/Transformation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/ui/image/Transformation;

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p1}, Lnet/aihelp/core/ui/image/Transformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transformation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lnet/aihelp/core/ui/image/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null after "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/ui/image/Transformation;

    invoke-interface {v0}, Lnet/aihelp/core/ui/image/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    sget-object p0, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v0, Lnet/aihelp/core/ui/image/BitmapHunter$4;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/image/BitmapHunter$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_1
    if-ne v4, p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object p0, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance p1, Lnet/aihelp/core/ui/image/BitmapHunter$5;

    invoke-direct {p1, v2}, Lnet/aihelp/core/ui/image/BitmapHunter$5;-><init>(Lnet/aihelp/core/ui/image/Transformation;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_2
    if-eq v4, p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p0, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance p1, Lnet/aihelp/core/ui/image/BitmapHunter$6;

    invoke-direct {p1, v2}, Lnet/aihelp/core/ui/image/BitmapHunter$6;-><init>(Lnet/aihelp/core/ui/image/Transformation;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v0, Lnet/aihelp/core/ui/image/BitmapHunter$3;

    invoke-direct {v0, v2, p0}, Lnet/aihelp/core/ui/image/BitmapHunter$3;-><init>(Lnet/aihelp/core/ui/image/Transformation;Ljava/lang/RuntimeException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_4
    return-object p1
.end method

.method private computeNewPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;
    .locals 6

    sget-object v0, Lnet/aihelp/core/ui/image/Picasso$Priority;->LOW:Lnet/aihelp/core/ui/image/Picasso$Priority;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->action:Lnet/aihelp/core/ui/image/Action;

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    return-object v0

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lnet/aihelp/core/ui/image/Action;->getPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;

    move-result-object v0

    :cond_4
    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_6

    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/ui/image/Action;

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Action;->getPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Picasso$Priority;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Picasso$Priority;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_5

    move-object v0, v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method static decodeStream(Lokio/Source;Lnet/aihelp/core/ui/image/Request;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-static {p0}, Lnet/aihelp/core/ui/image/Utils;->isWebPFile(Lokio/BufferedSource;)Z

    move-result v0

    iget-boolean v1, p1, Lnet/aihelp/core/ui/image/Request;->purgeable:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {p1}, Lnet/aihelp/core/ui/image/RequestHandler;->createBitmapOptions(Lnet/aihelp/core/ui/image/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v4}, Lnet/aihelp/core/ui/image/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v5

    if-nez v0, :cond_4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz v5, :cond_2

    new-instance v1, Lnet/aihelp/core/ui/image/MarkableInputStream;

    invoke-direct {v1, p0}, Lnet/aihelp/core/ui/image/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v3}, Lnet/aihelp/core/ui/image/MarkableInputStream;->allowMarksToExpire(Z)V

    const/16 p0, 0x400

    invoke-virtual {v1, p0}, Lnet/aihelp/core/ui/image/MarkableInputStream;->savePosition(I)J

    move-result-wide v5

    invoke-static {v1, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, p1, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    iget v3, p1, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    invoke-static {p0, v3, v4, p1}, Lnet/aihelp/core/ui/image/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lnet/aihelp/core/ui/image/Request;)V

    invoke-virtual {v1, v5, v6}, Lnet/aihelp/core/ui/image/MarkableInputStream;->reset(J)V

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/image/MarkableInputStream;->allowMarksToExpire(Z)V

    move-object p0, v1

    :cond_2
    invoke-static {p0, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to decode stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object p0

    if-eqz v5, :cond_5

    array-length v0, p0

    invoke-static {p0, v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, p1, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    iget v1, p1, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    invoke-static {v0, v1, v4, p1}, Lnet/aihelp/core/ui/image/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lnet/aihelp/core/ui/image/Request;)V

    :cond_5
    array-length p1, p0

    invoke-static {p0, v3, p1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static forRequest(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Dispatcher;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Stats;Lnet/aihelp/core/ui/image/Action;)Lnet/aihelp/core/ui/image/BitmapHunter;
    .locals 12

    invoke-virtual/range {p4 .. p4}, Lnet/aihelp/core/ui/image/Action;->getRequest()Lnet/aihelp/core/ui/image/Request;

    move-result-object v0

    invoke-virtual {p0}, Lnet/aihelp/core/ui/image/Picasso;->getRequestHandlers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lnet/aihelp/core/ui/image/RequestHandler;

    invoke-virtual {v11, v0}, Lnet/aihelp/core/ui/image/RequestHandler;->canHandleRequest(Lnet/aihelp/core/ui/image/Request;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Lnet/aihelp/core/ui/image/BitmapHunter;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lnet/aihelp/core/ui/image/BitmapHunter;-><init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Dispatcher;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Stats;Lnet/aihelp/core/ui/image/Action;Lnet/aihelp/core/ui/image/RequestHandler;)V

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/aihelp/core/ui/image/BitmapHunter;

    sget-object v10, Lnet/aihelp/core/ui/image/BitmapHunter;->ERRORING_HANDLER:Lnet/aihelp/core/ui/image/RequestHandler;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lnet/aihelp/core/ui/image/BitmapHunter;-><init>(Lnet/aihelp/core/ui/image/Picasso;Lnet/aihelp/core/ui/image/Dispatcher;Lnet/aihelp/core/ui/image/Cache;Lnet/aihelp/core/ui/image/Stats;Lnet/aihelp/core/ui/image/Action;Lnet/aihelp/core/ui/image/RequestHandler;)V

    return-object v0
.end method

.method private static getExifRotation(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 p0, 0xb4

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getExifTranslation(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static shouldResize(ZIIII)Z
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_0

    if-gt p1, p3, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static transformResult(Lnet/aihelp/core/ui/image/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 28

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-boolean v3, v0, Lnet/aihelp/core/ui/image/Request;->onlyScaleDown:Z

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/core/ui/image/Request;->needsMatrixTransform()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    move-object v3, v9

    move v2, v1

    goto/16 :goto_e

    :cond_1
    :goto_0
    iget v4, v0, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    iget v6, v0, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    iget v7, v0, Lnet/aihelp/core/ui/image/Request;->rotationDegrees:F

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_3

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget-boolean v4, v0, Lnet/aihelp/core/ui/image/Request;->hasRotationPivot:Z

    if-eqz v4, :cond_2

    iget v4, v0, Lnet/aihelp/core/ui/image/Request;->rotationPivotX:F

    iget v6, v0, Lnet/aihelp/core/ui/image/Request;->rotationPivotY:F

    invoke-virtual {v9, v7, v4, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget v4, v0, Lnet/aihelp/core/ui/image/Request;->rotationPivotX:F

    float-to-double v6, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v12

    mul-double/2addr v6, v14

    iget v4, v0, Lnet/aihelp/core/ui/image/Request;->rotationPivotY:F

    float-to-double v4, v4

    mul-double/2addr v4, v10

    add-double/2addr v6, v4

    iget v4, v0, Lnet/aihelp/core/ui/image/Request;->rotationPivotY:F

    float-to-double v4, v4

    mul-double/2addr v4, v14

    iget v14, v0, Lnet/aihelp/core/ui/image/Request;->rotationPivotX:F

    float-to-double v14, v14

    mul-double/2addr v14, v10

    sub-double/2addr v4, v14

    iget v14, v0, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    int-to-double v14, v14

    mul-double/2addr v14, v12

    add-double/2addr v14, v6

    iget v8, v0, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    move/from16 v17, v2

    move/from16 v18, v3

    int-to-double v2, v8

    mul-double/2addr v2, v10

    add-double/2addr v2, v4

    iget v8, v0, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    move-object/from16 v19, v9

    int-to-double v8, v8

    mul-double/2addr v8, v12

    add-double/2addr v8, v6

    move/from16 v20, v1

    iget v1, v0, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    move-wide/from16 v21, v2

    int-to-double v1, v1

    mul-double/2addr v1, v10

    sub-double/2addr v8, v1

    iget v1, v0, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    int-to-double v1, v1

    mul-double/2addr v1, v10

    add-double/2addr v1, v4

    iget v3, v0, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    move-wide/from16 v23, v8

    int-to-double v8, v3

    mul-double/2addr v8, v12

    add-double/2addr v1, v8

    iget v3, v0, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    int-to-double v8, v3

    mul-double/2addr v8, v10

    sub-double v8, v6, v8

    iget v3, v0, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    int-to-double v10, v3

    mul-double/2addr v10, v12

    add-double/2addr v10, v4

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide/from16 v25, v10

    move-wide/from16 v10, v23

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    move-wide/from16 v8, v21

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide/from16 v14, v25

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    sub-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v4, v3

    sub-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v6, v1

    goto/16 :goto_1

    :cond_2
    move/from16 v20, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object v1, v9

    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    iget v2, v0, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    int-to-double v2, v2

    mul-double/2addr v2, v12

    iget v4, v0, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    int-to-double v4, v4

    mul-double/2addr v4, v10

    iget v6, v0, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    int-to-double v6, v6

    mul-double/2addr v6, v12

    iget v8, v0, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    int-to-double v8, v8

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    iget v8, v0, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    int-to-double v8, v8

    mul-double/2addr v8, v10

    iget v14, v0, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    int-to-double v14, v14

    mul-double/2addr v14, v12

    add-double/2addr v8, v14

    iget v14, v0, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    int-to-double v14, v14

    mul-double/2addr v14, v10

    neg-double v10, v14

    iget v14, v0, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    int-to-double v14, v14

    mul-double/2addr v14, v12

    const-wide/16 v12, 0x0

    move-object/from16 v19, v1

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v6, v1

    move v4, v0

    goto :goto_1

    :cond_3
    move/from16 v20, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v9

    :goto_1
    if-eqz p2, :cond_7

    invoke-static/range {p2 .. p2}, Lnet/aihelp/core/ui/image/BitmapHunter;->getExifRotation(I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Lnet/aihelp/core/ui/image/BitmapHunter;->getExifTranslation(I)I

    move-result v1

    if-eqz v0, :cond_5

    int-to-float v2, v0

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_4

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_6

    :cond_4
    move/from16 v27, v6

    move v6, v4

    move/from16 v4, v27

    goto :goto_2

    :cond_5
    move-object/from16 v3, v19

    :cond_6
    :goto_2
    const/4 v0, 0x1

    if-eq v1, v0, :cond_8

    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_3

    :cond_7
    move-object/from16 v3, v19

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/aihelp/core/ui/image/Request;->centerCrop:Z

    if-eqz v1, :cond_12

    if-eqz v4, :cond_9

    int-to-float v1, v4

    move/from16 v2, v20

    int-to-float v5, v2

    div-float/2addr v1, v5

    move/from16 v5, v17

    goto :goto_4

    :cond_9
    move/from16 v2, v20

    int-to-float v1, v6

    move/from16 v5, v17

    int-to-float v7, v5

    div-float/2addr v1, v7

    :goto_4
    if-eqz v6, :cond_a

    int-to-float v7, v6

    int-to-float v8, v5

    goto :goto_5

    :cond_a
    int-to-float v7, v4

    int-to-float v8, v2

    :goto_5
    div-float/2addr v7, v8

    cmpl-float v8, v1, v7

    if-lez v8, :cond_d

    int-to-float v8, v5

    div-float/2addr v7, v1

    mul-float/2addr v8, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v8, v0, Lnet/aihelp/core/ui/image/Request;->centerCropGravity:I

    const/16 v9, 0x30

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_b

    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    iget v0, v0, Lnet/aihelp/core/ui/image/Request;->centerCropGravity:I

    const/16 v8, 0x50

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_c

    sub-int v0, v5, v7

    goto :goto_6

    :cond_c
    sub-int v0, v5, v7

    div-int/lit8 v0, v0, 0x2

    :goto_6
    int-to-float v8, v6

    int-to-float v9, v7

    div-float/2addr v8, v9

    move v9, v7

    move/from16 v10, v18

    const/16 v16, 0x0

    move v7, v0

    move v0, v2

    goto :goto_8

    :cond_d
    cmpg-float v8, v1, v7

    if-gez v8, :cond_10

    int-to-float v8, v2

    div-float/2addr v1, v7

    mul-float/2addr v8, v1

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    iget v8, v0, Lnet/aihelp/core/ui/image/Request;->centerCropGravity:I

    const/4 v9, 0x3

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    iget v0, v0, Lnet/aihelp/core/ui/image/Request;->centerCropGravity:I

    const/4 v8, 0x5

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_f

    sub-int v0, v2, v1

    goto :goto_7

    :cond_f
    sub-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    :goto_7
    int-to-float v8, v4

    int-to-float v9, v1

    div-float/2addr v8, v9

    move/from16 v16, v0

    move v0, v1

    move v9, v5

    move v1, v8

    move/from16 v10, v18

    move v8, v7

    const/4 v7, 0x0

    goto :goto_8

    :cond_10
    move v0, v2

    move v9, v5

    move v1, v7

    move v8, v1

    move/from16 v10, v18

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_8
    invoke-static {v10, v2, v5, v4, v6}, Lnet/aihelp/core/ui/image/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v3, v1, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_11
    move v6, v7

    move v8, v9

    move/from16 v5, v16

    move v7, v0

    goto :goto_f

    :cond_12
    move/from16 v5, v17

    move/from16 v10, v18

    move/from16 v2, v20

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Request;->centerInside:Z

    if-eqz v0, :cond_16

    if-eqz v4, :cond_13

    int-to-float v0, v4

    int-to-float v1, v2

    goto :goto_9

    :cond_13
    int-to-float v0, v6

    int-to-float v1, v5

    :goto_9
    div-float/2addr v0, v1

    if-eqz v6, :cond_14

    int-to-float v1, v6

    int-to-float v7, v5

    goto :goto_a

    :cond_14
    int-to-float v1, v4

    int-to-float v7, v2

    :goto_a
    div-float/2addr v1, v7

    cmpg-float v7, v0, v1

    if-gez v7, :cond_15

    goto :goto_b

    :cond_15
    move v0, v1

    :goto_b
    invoke-static {v10, v2, v5, v4, v6}, Lnet/aihelp/core/ui/image/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_e

    :cond_16
    if-nez v4, :cond_17

    if-eqz v6, :cond_1b

    :cond_17
    if-ne v4, v2, :cond_18

    if-eq v6, v5, :cond_1b

    :cond_18
    if-eqz v4, :cond_19

    int-to-float v0, v4

    int-to-float v1, v2

    goto :goto_c

    :cond_19
    int-to-float v0, v6

    int-to-float v1, v5

    :goto_c
    div-float/2addr v0, v1

    if-eqz v6, :cond_1a

    int-to-float v1, v6

    int-to-float v7, v5

    goto :goto_d

    :cond_1a
    int-to-float v1, v4

    int-to-float v7, v2

    :goto_d
    div-float/2addr v1, v7

    invoke-static {v10, v2, v5, v4, v6}, Lnet/aihelp/core/ui/image/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1b
    :goto_e
    move v7, v2

    move v8, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_f
    const/4 v10, 0x1

    move-object/from16 v4, p1

    move-object v9, v3

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_10

    :cond_1c
    move-object v0, v1

    :goto_10
    return-object v0
.end method

.method static updateThreadName(Lnet/aihelp/core/ui/image/Request;)V
    .locals 3

    invoke-virtual {p0}, Lnet/aihelp/core/ui/image/Request;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lnet/aihelp/core/ui/image/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method attach(Lnet/aihelp/core/ui/image/Action;)V
    .locals 7

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    iget-object v1, p1, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->action:Lnet/aihelp/core/ui/image/Action;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_3

    iput-object p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->action:Lnet/aihelp/core/ui/image/Action;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3}, Lnet/aihelp/core/ui/image/Utils;->getLogIdsForHunter(Lnet/aihelp/core/ui/image/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, p1, v0}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "to empty hunter"

    invoke-static {v5, v4, p1, v0}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    :cond_4
    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3}, Lnet/aihelp/core/ui/image/Utils;->getLogIdsForHunter(Lnet/aihelp/core/ui/image/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v0, v1}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Picasso$Priority;->ordinal()I

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Picasso$Priority;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_6

    iput-object p1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    :cond_6
    return-void
.end method

.method cancel()Z
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->action:Lnet/aihelp/core/ui/image/Action;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method detach(Lnet/aihelp/core/ui/image/Action;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->action:Lnet/aihelp/core/ui/image/Action;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->action:Lnet/aihelp/core/ui/image/Action;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Action;->getPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/BitmapHunter;->computeNewPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v0, v0, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_3

    iget-object p1, p1, Lnet/aihelp/core/ui/image/Action;->request:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from "

    invoke-static {p0, v0}, Lnet/aihelp/core/ui/image/Utils;->getLogIdsForHunter(Lnet/aihelp/core/ui/image/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hunter"

    const-string v2, "removed"

    invoke-static {v1, v2, p1, v0}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method getAction()Lnet/aihelp/core/ui/image/Action;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->action:Lnet/aihelp/core/ui/image/Action;

    return-object v0
.end method

.method getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->actions:Ljava/util/List;

    return-object v0
.end method

.method getData()Lnet/aihelp/core/ui/image/Request;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->key:Ljava/lang/String;

    return-object v0
.end method

.method getLoadedFrom()Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->loadedFrom:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    return-object v0
.end method

.method getMemoryPolicy()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->memoryPolicy:I

    return v0
.end method

.method getPicasso()Lnet/aihelp/core/ui/image/Picasso;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    return-object v0
.end method

.method getPriority()Lnet/aihelp/core/ui/image/Picasso$Priority;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    return-object v0
.end method

.method getResult()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->result:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method hunt()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->memoryPolicy:I

    invoke-static {v0}, Lnet/aihelp/core/ui/image/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->cache:Lnet/aihelp/core/ui/image/Cache;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/aihelp/core/ui/image/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Stats;->dispatchCacheHit()V

    sget-object v1, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->MEMORY:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    iput-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->loadedFrom:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v1, v1, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v3}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    iget v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->retryCount:I

    if-nez v1, :cond_3

    sget-object v1, Lnet/aihelp/core/ui/image/NetworkPolicy;->OFFLINE:Lnet/aihelp/core/ui/image/NetworkPolicy;

    iget v1, v1, Lnet/aihelp/core/ui/image/NetworkPolicy;->index:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->networkPolicy:I

    :goto_0
    iput v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->networkPolicy:I

    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->requestHandler:Lnet/aihelp/core/ui/image/RequestHandler;

    iget-object v3, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v2, v3, v1}, Lnet/aihelp/core/ui/image/RequestHandler;->load(Lnet/aihelp/core/ui/image/Request;I)Lnet/aihelp/core/ui/image/RequestHandler$Result;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/RequestHandler$Result;->getLoadedFrom()Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->loadedFrom:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/RequestHandler$Result;->getExifOrientation()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->exifOrientation:I

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/RequestHandler$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/RequestHandler$Result;->getSource()Lokio/Source;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-static {v0, v1}, Lnet/aihelp/core/ui/image/BitmapHunter;->decodeStream(Lokio/Source;Lnet/aihelp/core/ui/image/Request;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw v1

    :cond_4
    :goto_1
    if-eqz v0, :cond_a

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v1, v1, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_5

    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v3}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/ui/image/Stats;->dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v1}, Lnet/aihelp/core/ui/image/Request;->needsTransformation()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->exifOrientation:I

    if-eqz v1, :cond_a

    :cond_6
    sget-object v1, Lnet/aihelp/core/ui/image/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Request;->needsMatrixTransform()Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->exifOrientation:I

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    iget v3, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->exifOrientation:I

    invoke-static {v2, v0, v3}, Lnet/aihelp/core/ui/image/BitmapHunter;->transformResult(Lnet/aihelp/core/ui/image/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v2, v2, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_8

    const-string v2, "Hunter"

    const-string v3, "transformed"

    iget-object v4, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v4}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v2}, Lnet/aihelp/core/ui/image/Request;->hasCustomTransformations()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    iget-object v2, v2, Lnet/aihelp/core/ui/image/Request;->transformations:Ljava/util/List;

    invoke-static {v2, v0}, Lnet/aihelp/core/ui/image/BitmapHunter;->applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v2, v2, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_9

    const-string v2, "Hunter"

    const-string v3, "transformed"

    iget-object v4, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-virtual {v4}, Lnet/aihelp/core/ui/image/Request;->logId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_a

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/ui/image/Stats;->dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_a
    :goto_2
    return-object v0
.end method

.method isCancelled()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 5

    const-string v0, "Picasso-Idle"

    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->data:Lnet/aihelp/core/ui/image/Request;

    invoke-static {v1}, Lnet/aihelp/core/ui/image/BitmapHunter;->updateThreadName(Lnet/aihelp/core/ui/image/Request;)V

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v1, v1, Lnet/aihelp/core/ui/image/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "Hunter"

    const-string v2, "executing"

    invoke-static {p0}, Lnet/aihelp/core/ui/image/Utils;->getLogIdsForHunter(Lnet/aihelp/core/ui/image/BitmapHunter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnet/aihelp/core/ui/image/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/ui/image/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->result:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v1, p0}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchFailed(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v1, p0}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchComplete(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    :try_end_0
    .catch Lnet/aihelp/core/ui/image/NetworkRequestHandler$ResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iput-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->exception:Ljava/lang/Exception;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v1, p0}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchFailed(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    iget-object v3, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {v3}, Lnet/aihelp/core/ui/image/Stats;->createSnapshot()Lnet/aihelp/core/ui/image/StatsSnapshot;

    move-result-object v3

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Lnet/aihelp/core/ui/image/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->exception:Ljava/lang/Exception;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v1, p0}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchFailed(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    goto :goto_0

    :catch_2
    move-exception v1

    iput-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->exception:Ljava/lang/Exception;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v1, p0}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchRetry(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v1

    :try_start_2
    iget v2, v1, Lnet/aihelp/core/ui/image/NetworkRequestHandler$ResponseException;->networkPolicy:I

    invoke-static {v2}, Lnet/aihelp/core/ui/image/NetworkPolicy;->isOfflineOnly(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lnet/aihelp/core/ui/image/NetworkRequestHandler$ResponseException;->code:I

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_3

    :cond_2
    iput-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->exception:Ljava/lang/Exception;

    :cond_3
    iget-object v1, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->dispatcher:Lnet/aihelp/core/ui/image/Dispatcher;

    invoke-virtual {v1, p0}, Lnet/aihelp/core/ui/image/Dispatcher;->dispatchFailed(Lnet/aihelp/core/ui/image/BitmapHunter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 4

    iget v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->retryCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    return v2

    :cond_1
    sub-int/2addr v0, v1

    iput v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->retryCount:I

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->requestHandler:Lnet/aihelp/core/ui/image/RequestHandler;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/ui/image/RequestHandler;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    move-result p1

    return p1
.end method

.method supportsReplay()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/BitmapHunter;->requestHandler:Lnet/aihelp/core/ui/image/RequestHandler;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/RequestHandler;->supportsReplay()Z

    move-result v0

    return v0
.end method
