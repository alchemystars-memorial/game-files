.class public Lnet/aihelp/ui/helper/BitmapHelper;
.super Ljava/lang/Object;
.source "BitmapHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSize(Ljava/lang/String;)[I
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p0, p0

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x442f0000    # 700.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_0

    move-wide v4, v6

    :cond_0
    float-to-double v6, p0

    div-double/2addr v6, v4

    double-to-int v6, v6

    const/4 v7, 0x0

    aput v6, v1, v7

    float-to-double v8, v2

    div-double/2addr v8, v4

    double-to-int v4, v8

    aput v4, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v1, v7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v1, v3

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "\u5bbd\u9ad8\u4fe1\u606f\u4e3a\uff1a%s -> %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    div-int/lit8 v5, v1, 0x2

    int-to-double v1, v5

    const-wide v3, 0x3ff3333333333333L    # 1.2

    div-double/2addr v1, v3

    double-to-int v6, v1

    div-int/lit8 v3, v0, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 11

    if-lez p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, p1, :cond_1

    sub-int v3, v0, p1

    div-int/lit8 v3, v3, 0x2

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    if-eqz p3, :cond_2

    if-le v1, p2, :cond_2

    sub-int p3, v1, p2

    div-int/lit8 v2, p3, 0x2

    :cond_2
    move v6, v2

    add-int p3, v5, p1

    if-gt p3, v0, :cond_4

    add-int p3, v6, p2

    if-le p3, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v7, p1

    move v8, p2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static cropBitmapToFitDevice(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lnet/aihelp/ui/helper/BitmapHelper;->cropBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static cropBitmapToFitTarget(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lnet/aihelp/ui/helper/BitmapHelper;->cropBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const p1, 0x3f4ccccd    # 0.8f

    const p2, 0x3f666666    # 0.9f

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method
