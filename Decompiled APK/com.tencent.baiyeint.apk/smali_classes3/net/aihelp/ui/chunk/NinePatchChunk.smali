.class public Lnet/aihelp/ui/chunk/NinePatchChunk;
.super Ljava/lang/Object;
.source "NinePatchChunk.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final DEFAULT_DENSITY:I = 0xa0

.field public static final NO_COLOR:I = 0x1

.field public static final TRANSPARENT_COLOR:I


# instance fields
.field public colors:[I

.field public padding:Landroid/graphics/Rect;

.field public wasSerialized:Z

.field public xDivs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/chunk/Div;",
            ">;"
        }
    .end annotation
.end field

.field public yDivs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/chunk/Div;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->wasSerialized:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    return-void
.end method

.method private static checkDivCount(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/ui/chunk/DivLengthException;
        }
    .end annotation

    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lnet/aihelp/ui/chunk/DivLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Div count should be aliquot 2 and more then 0, but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/aihelp/ui/chunk/DivLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create9PatchDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lnet/aihelp/ui/chunk/BitmapType;->getNinePatchDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create9PatchDrawable(Landroid/content/Context;Ljava/io/InputStream;ILjava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/aihelp/ui/chunk/NinePatchChunk;->createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/InputStream;I)Lnet/aihelp/ui/chunk/ImageLoadingResult;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Lnet/aihelp/ui/chunk/ImageLoadingResult;->getNinePatchDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create9PatchDrawable(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1

    const/16 v0, 0xa0

    invoke-static {p0, p1, v0, p2}, Lnet/aihelp/ui/chunk/NinePatchChunk;->create9PatchDrawable(Landroid/content/Context;Ljava/io/InputStream;ILjava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createChunkFromRawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/ImageLoadingResult;
    .locals 2

    invoke-static {p1}, Lnet/aihelp/ui/chunk/BitmapType;->determineBitmapType(Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/BitmapType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/chunk/BitmapType;->createChunk(Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/NinePatchChunk;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0, p1, v1}, Lnet/aihelp/ui/chunk/BitmapType;->modifyBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Lnet/aihelp/ui/chunk/ImageLoadingResult;

    invoke-direct {p1, p0, v1}, Lnet/aihelp/ui/chunk/ImageLoadingResult;-><init>(Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)V

    return-object p1
.end method

.method public static createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/InputStream;)Lnet/aihelp/ui/chunk/ImageLoadingResult;
    .locals 1

    const/16 v0, 0xa0

    invoke-static {p0, p1, v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/InputStream;I)Lnet/aihelp/ui/chunk/ImageLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method public static createChunkFromRawBitmap(Landroid/content/Context;Ljava/io/InputStream;I)Lnet/aihelp/ui/chunk/ImageLoadingResult;
    .locals 1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->createChunkFromRawBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/ImageLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method public static createChunkFromRawBitmap(Landroid/graphics/Bitmap;)Lnet/aihelp/ui/chunk/NinePatchChunk;
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->createChunkFromRawBitmap(Landroid/graphics/Bitmap;Z)Lnet/aihelp/ui/chunk/NinePatchChunk;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lnet/aihelp/ui/chunk/NinePatchChunk;->createEmptyChunk()Lnet/aihelp/ui/chunk/NinePatchChunk;

    move-result-object p0

    return-object p0
.end method

.method protected static createChunkFromRawBitmap(Landroid/graphics/Bitmap;Z)Lnet/aihelp/ui/chunk/NinePatchChunk;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/ui/chunk/WrongPaddingException;,
            Lnet/aihelp/ui/chunk/DivLengthException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isRawNinePatchBitmap(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lnet/aihelp/ui/chunk/NinePatchChunk;->createEmptyChunk()Lnet/aihelp/ui/chunk/NinePatchChunk;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lnet/aihelp/ui/chunk/NinePatchChunk;

    invoke-direct {p1}, Lnet/aihelp/ui/chunk/NinePatchChunk;-><init>()V

    invoke-static {p0, p1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->setupStretchableRegions(Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)V

    invoke-static {p0, p1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->setupPadding(Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)V

    invoke-static {p0, p1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->setupColors(Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)V

    return-object p1
.end method

.method public static createColorsArray(Lnet/aihelp/ui/chunk/NinePatchChunk;II)[I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-static {p0, p2}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    mul-int/2addr p1, p0

    new-array p0, p1, [I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method public static createColorsArrayAndSet(Lnet/aihelp/ui/chunk/NinePatchChunk;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/aihelp/ui/chunk/NinePatchChunk;->createColorsArray(Lnet/aihelp/ui/chunk/NinePatchChunk;II)[I

    move-result-object p1

    if-eqz p0, :cond_0

    iput-object p1, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    :cond_0
    return-void
.end method

.method public static createEmptyChunk()Lnet/aihelp/ui/chunk/NinePatchChunk;
    .locals 2

    new-instance v0, Lnet/aihelp/ui/chunk/NinePatchChunk;

    invoke-direct {v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/chunk/Div;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/chunk/Div;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/ui/chunk/Div;

    if-nez v2, :cond_1

    iget v4, v3, Lnet/aihelp/ui/chunk/Div;->start:I

    if-eqz v4, :cond_1

    new-instance v4, Lnet/aihelp/ui/chunk/Div;

    iget v5, v3, Lnet/aihelp/ui/chunk/Div;->start:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v1, v5}, Lnet/aihelp/ui/chunk/Div;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lez v2, :cond_2

    new-instance v4, Lnet/aihelp/ui/chunk/Div;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/aihelp/ui/chunk/Div;

    iget v5, v5, Lnet/aihelp/ui/chunk/Div;->stop:I

    iget v6, v3, Lnet/aihelp/ui/chunk/Div;->start:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v5, v6}, Lnet/aihelp/ui/chunk/Div;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v4, Lnet/aihelp/ui/chunk/Div;

    iget v5, v3, Lnet/aihelp/ui/chunk/Div;->start:I

    iget v6, v3, Lnet/aihelp/ui/chunk/Div;->stop:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v5, v6}, Lnet/aihelp/ui/chunk/Div;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_3

    iget v4, v3, Lnet/aihelp/ui/chunk/Div;->stop:I

    if-ge v4, p1, :cond_3

    new-instance v4, Lnet/aihelp/ui/chunk/Div;

    iget v3, v3, Lnet/aihelp/ui/chunk/Div;->stop:I

    add-int/lit8 v5, p1, -0x1

    invoke-direct {v4, v3, v5}, Lnet/aihelp/ui/chunk/Div;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/chunk/Div;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v2, v4, v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->processChunk(ILnet/aihelp/ui/chunk/Div;ILjava/util/ArrayList;)Lnet/aihelp/ui/chunk/Div;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/chunk/Div;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v2, v4, v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->processChunk(ILnet/aihelp/ui/chunk/Div;ILjava/util/ArrayList;)Lnet/aihelp/ui/chunk/Div;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static hasNinePatchBorder(Landroid/graphics/Bitmap;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    sub-int/2addr v1, v2

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isBorderPixel(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isBorderPixel(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v4

    :cond_2
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isBorderPixel(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v0, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isBorderPixel(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return v4

    :cond_5
    invoke-static {p0, v4}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    return v4

    :cond_6
    invoke-static {p0, v1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_7

    return v4

    :cond_7
    invoke-static {p0, v4}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    return v4

    :cond_8
    invoke-static {p0, v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gt p0, v2, :cond_9

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    return v2
.end method

.method private static hasSameColor(Landroid/graphics/Bitmap;IIII)Z
    .locals 3

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    :goto_0
    if-gt p1, p2, :cond_2

    move v1, p3

    :goto_1
    if-gt v1, p4, :cond_1

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isBlack(I)Z
    .locals 1

    const/high16 v0, -0x1000000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBorderPixel(I)Z
    .locals 1

    invoke-static {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isTransparent(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isBlack(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isCornerPixelsAreTrasperent(Landroid/graphics/Bitmap;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isTransparent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isTransparent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isTransparent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    invoke-static {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isTransparent(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method public static isRawNinePatchBitmap(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isCornerPixelsAreTrasperent(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->hasNinePatchBorder(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static isTransparent(I)Z
    .locals 0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parse([B)Lnet/aihelp/ui/chunk/NinePatchChunk;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/ui/chunk/DivLengthException;,
            Lnet/aihelp/ui/chunk/ChunkNotSerializedException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance v0, Lnet/aihelp/ui/chunk/NinePatchChunk;

    invoke-direct {v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->wasSerialized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->checkDivCount(B)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lnet/aihelp/ui/chunk/NinePatchChunk;->checkDivCount(B)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    new-array v5, v5, [I

    iput-object v5, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    iget-object v5, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    shr-int/2addr v1, v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-static {v1, p0, v5}, Lnet/aihelp/ui/chunk/NinePatchChunk;->readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    shr-int/lit8 v1, v4, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-static {v1, p0, v3}, Lnet/aihelp/ui/chunk/NinePatchChunk;->readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V

    :goto_1
    iget-object v1, v0, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    array-length v3, v1

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Lnet/aihelp/ui/chunk/ChunkNotSerializedException;

    invoke-direct {p0}, Lnet/aihelp/ui/chunk/ChunkNotSerializedException;-><init>()V

    throw p0
.end method

.method private static processChunk(ILnet/aihelp/ui/chunk/Div;ILjava/util/ArrayList;)Lnet/aihelp/ui/chunk/Div;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/aihelp/ui/chunk/Div;",
            "I",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/chunk/Div;",
            ">;)",
            "Lnet/aihelp/ui/chunk/Div;"
        }
    .end annotation

    invoke-static {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isBlack(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance p1, Lnet/aihelp/ui/chunk/Div;

    invoke-direct {p1}, Lnet/aihelp/ui/chunk/Div;-><init>()V

    iput p2, p1, Lnet/aihelp/ui/chunk/Div;->start:I

    :cond_0
    invoke-static {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isTransparent(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iput p2, p1, Lnet/aihelp/ui/chunk/Div;->stop:I

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method private static readDivs(ILjava/nio/ByteBuffer;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/chunk/Div;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    new-instance v1, Lnet/aihelp/ui/chunk/Div;

    invoke-direct {v1}, Lnet/aihelp/ui/chunk/Div;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lnet/aihelp/ui/chunk/Div;->start:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lnet/aihelp/ui/chunk/Div;->stop:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setupColors(Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)V
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getRegions(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/aihelp/ui/chunk/Div;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/aihelp/ui/chunk/Div;

    iget v7, v6, Lnet/aihelp/ui/chunk/Div;->start:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iget v9, v4, Lnet/aihelp/ui/chunk/Div;->start:I

    add-int/2addr v9, v8

    iget v6, v6, Lnet/aihelp/ui/chunk/Div;->stop:I

    add-int/2addr v6, v8

    iget v10, v4, Lnet/aihelp/ui/chunk/Div;->stop:I

    add-int/2addr v10, v8

    invoke-static {p0, v7, v6, v9, v10}, Lnet/aihelp/ui/chunk/NinePatchChunk;->hasSameColor(Landroid/graphics/Bitmap;IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v7, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Lnet/aihelp/ui/chunk/NinePatchChunk;->isTransparent(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v2

    :cond_1
    iget-object v7, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    aput v6, v7, v3

    goto :goto_1

    :cond_2
    iget-object v6, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    aput v8, v6, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static setupPadding(Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/ui/chunk/WrongPaddingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p0, v2}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {p0, v4}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v3, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/aihelp/ui/chunk/Div;

    iget v5, v5, Lnet/aihelp/ui/chunk/Div;->start:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/ui/chunk/Div;

    iget v2, v2, Lnet/aihelp/ui/chunk/Div;->stop:I

    sub-int/2addr v0, v2

    iput v0, v3, Landroid/graphics/Rect;->right:I

    iget-object v0, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/ui/chunk/Div;

    iget v2, v2, Lnet/aihelp/ui/chunk/Div;->start:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object p1, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/aihelp/ui/chunk/Div;

    iget p0, p0, Lnet/aihelp/ui/chunk/Div;->stop:I

    sub-int/2addr v1, p0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_2
    new-instance p0, Lnet/aihelp/ui/chunk/WrongPaddingException;

    const-string p1, "Column padding is wrong. Should be only one vertical padding region"

    invoke-direct {p0, p1}, Lnet/aihelp/ui/chunk/WrongPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lnet/aihelp/ui/chunk/WrongPaddingException;

    const-string p1, "Raw padding is wrong. Should be only one horizontal padding region"

    invoke-direct {p0, p1}, Lnet/aihelp/ui/chunk/WrongPaddingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setupStretchableRegions(Landroid/graphics/Bitmap;Lnet/aihelp/ui/chunk/NinePatchChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/aihelp/ui/chunk/DivLengthException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getXDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->getYDivs(Landroid/graphics/Bitmap;I)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/aihelp/ui/chunk/DivLengthException;

    const-string p1, "must be at least one vertical stretchable region"

    invoke-direct {p0, p1}, Lnet/aihelp/ui/chunk/DivLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/aihelp/ui/chunk/DivLengthException;

    const-string p1, "must be at least one horizontal stretchable region"

    invoke-direct {p0, p1}, Lnet/aihelp/ui/chunk/DivLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/ObjectInput;->read([B)I

    :try_start_0
    invoke-static {v0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->parse([B)Lnet/aihelp/ui/chunk/NinePatchChunk;

    move-result-object p1

    iget-boolean v0, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->wasSerialized:Z

    iput-boolean v0, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->wasSerialized:Z

    iget-object v0, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    iput-object v0, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    iget-object v0, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    iput-object v0, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    iget-object v0, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iput-object v0, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget-object p1, p1, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    iput-object p1, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I
    :try_end_0
    .catch Lnet/aihelp/ui/chunk/DivLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/aihelp/ui/chunk/ChunkNotSerializedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toBytes()[B
    .locals 5

    iget-object v0, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x20

    iget-object v1, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    :cond_0
    iget-object v2, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->xDivs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/ui/chunk/Div;

    iget v4, v3, Lnet/aihelp/ui/chunk/Div;->start:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v3, v3, Lnet/aihelp/ui/chunk/Div;->stop:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->yDivs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/ui/chunk/Div;

    iget v4, v3, Lnet/aihelp/ui/chunk/Div;->start:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v3, v3, Lnet/aihelp/ui/chunk/Div;->stop:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lnet/aihelp/ui/chunk/NinePatchChunk;->colors:[I

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/aihelp/ui/chunk/NinePatchChunk;->toBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write([B)V

    return-void
.end method
