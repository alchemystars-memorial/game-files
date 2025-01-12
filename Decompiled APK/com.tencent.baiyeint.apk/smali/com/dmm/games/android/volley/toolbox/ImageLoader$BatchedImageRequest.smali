.class Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmm/games/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dmm/games/android/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/dmm/games/android/volley/VolleyError;

.field private final mRequest:Lcom/dmm/games/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dmm/games/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/dmm/games/android/volley/Request;Lcom/dmm/games/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dmm/games/android/volley/Request<",
            "*>;",
            "Lcom/dmm/games/android/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    iput-object p1, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/dmm/games/android/volley/Request;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addContainer(Lcom/dmm/games/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lcom/dmm/games/android/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/dmm/games/android/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/dmm/games/android/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1

    iget-object v0, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/dmm/games/android/volley/Request;

    invoke-virtual {p1}, Lcom/dmm/games/android/volley/Request;->cancel()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setError(Lcom/dmm/games/android/volley/VolleyError;)V
    .locals 0

    iput-object p1, p0, Lcom/dmm/games/android/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/dmm/games/android/volley/VolleyError;

    return-void
.end method
