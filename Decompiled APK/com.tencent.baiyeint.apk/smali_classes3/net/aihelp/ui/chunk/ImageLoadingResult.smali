.class public Lnet/aihelp/ui/chunk/ImageLoadingResult;
.super Ljava/lang/Object;
.source "ImageLoadingResult.java"


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final chunk:Lnet/aihelp/ui/chunk/NinePatchChunk;


# direct methods
.method protected constructor <init>(Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/chunk/ImageLoadingResult;->bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lnet/aihelp/ui/chunk/ImageLoadingResult;->chunk:Lnet/aihelp/ui/chunk/NinePatchChunk;

    return-void
.end method


# virtual methods
.method public getNinePatchDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 12

    iget-object v0, p0, Lnet/aihelp/ui/chunk/ImageLoadingResult;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/chunk/ImageLoadingResult;->chunk:Lnet/aihelp/ui/chunk/NinePatchChunk;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v3, p0, Lnet/aihelp/ui/chunk/ImageLoadingResult;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v8, p0, Lnet/aihelp/ui/chunk/ImageLoadingResult;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lnet/aihelp/ui/chunk/ImageLoadingResult;->chunk:Lnet/aihelp/ui/chunk/NinePatchChunk;

    invoke-virtual {v1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->toBytes()[B

    move-result-object v9

    iget-object v1, p0, Lnet/aihelp/ui/chunk/ImageLoadingResult;->chunk:Lnet/aihelp/ui/chunk/NinePatchChunk;

    iget-object v10, v1, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    move-object v6, v0

    move-object v7, p1

    move-object v11, p2

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v0
.end method
