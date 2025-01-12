.class Lnet/aihelp/core/ui/image/ResourceRequestHandler;
.super Lnet/aihelp/core/ui/image/RequestHandler;
.source "ResourceRequestHandler.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lnet/aihelp/core/ui/image/RequestHandler;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/ResourceRequestHandler;->context:Landroid/content/Context;

    return-void
.end method

.method private static decodeResource(Landroid/content/res/Resources;ILnet/aihelp/core/ui/image/Request;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p2}, Lnet/aihelp/core/ui/image/ResourceRequestHandler;->createBitmapOptions(Lnet/aihelp/core/ui/image/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/core/ui/image/ResourceRequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, p2, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    iget v2, p2, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    invoke-static {v1, v2, v0, p2}, Lnet/aihelp/core/ui/image/ResourceRequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lnet/aihelp/core/ui/image/Request;)V

    :cond_0
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canHandleRequest(Lnet/aihelp/core/ui/image/Request;)Z
    .locals 1

    iget v0, p1, Lnet/aihelp/core/ui/image/Request;->resourceId:I

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public load(Lnet/aihelp/core/ui/image/Request;I)Lnet/aihelp/core/ui/image/RequestHandler$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lnet/aihelp/core/ui/image/ResourceRequestHandler;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lnet/aihelp/core/ui/image/Utils;->getResources(Landroid/content/Context;Lnet/aihelp/core/ui/image/Request;)Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p1}, Lnet/aihelp/core/ui/image/Utils;->getResourceId(Landroid/content/res/Resources;Lnet/aihelp/core/ui/image/Request;)I

    move-result v0

    new-instance v1, Lnet/aihelp/core/ui/image/RequestHandler$Result;

    invoke-static {p2, v0, p1}, Lnet/aihelp/core/ui/image/ResourceRequestHandler;->decodeResource(Landroid/content/res/Resources;ILnet/aihelp/core/ui/image/Request;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object p2, Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;->DISK:Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;

    invoke-direct {v1, p1, p2}, Lnet/aihelp/core/ui/image/RequestHandler$Result;-><init>(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V

    return-object v1
.end method
