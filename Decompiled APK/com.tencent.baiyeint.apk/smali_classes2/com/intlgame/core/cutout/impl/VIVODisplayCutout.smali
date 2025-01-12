.class public Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;
.super Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;
.source "VIVODisplayCutout.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VIVODisplayCutout"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;-><init>()V

    return-void
.end method

.method private getCutoutHeight(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41d80000    # 27.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getCutoutWidth(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;->getScreenSize(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowInsets;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;->hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;->getCutoutWidth(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;->getCutoutHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;->calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;->hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;->getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/intlgame/core/cutout/impl/VIVODisplayCutout;->calculateSafeArea(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "VIVODisplayCutout"

    return-object v0
.end method

.method public hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "android.util.FtFeature"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "isFeatureSupport"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p1

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VIVODisplayCutoutisFeatureSupport Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p1
.end method

.method public isHideCutout(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
