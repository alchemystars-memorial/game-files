.class public abstract Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;
.super Ljava/lang/Object;
.source "AbstractDisplayCutout.java"

# interfaces
.implements Lcom/intlgame/core/cutout/IDisplayCutout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    sub-int/2addr v1, p2

    div-int/2addr v1, v4

    add-int/2addr p2, v1

    move p1, v3

    move v3, v1

    move v5, p3

    move p3, p2

    move p2, v5

    goto :goto_0

    :cond_0
    sub-int v3, v1, p3

    sub-int/2addr v0, p2

    div-int/lit8 p1, v0, 0x2

    add-int p3, p1, p2

    move p2, p3

    move p3, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr p2, v3

    sub-int p1, v0, p3

    move p3, p2

    move p2, v0

    goto :goto_0

    :cond_2
    sub-int/2addr v0, p2

    div-int/2addr v0, v4

    add-int/2addr p2, v0

    move p1, v0

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, p1, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected calculateSafeArea(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->top:I

    :goto_0
    move p1, v3

    goto :goto_1

    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->right:I

    move v4, v3

    move v3, p1

    move p1, v4

    :goto_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v3, p1, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method public getDisplayDensityDpi(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    return p1
.end method

.method public getDisplayRealSize(Landroid/content/Context;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, p1}, Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method protected getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 3

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    return-object v0
.end method

.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isPortrait(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
