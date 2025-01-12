.class public Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;
.super Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;
.source "SamsungDisplayCutout.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SamsungDisplayCutout"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;-><init>()V

    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;->hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    :cond_0
    move p2, v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;->calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, p2}, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;->hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;->getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;

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
    invoke-virtual {p0, p1, v0}, Lcom/intlgame/core/cutout/impl/SamsungDisplayCutout;->calculateSafeArea(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "SamsungDisplayCutout"

    return-object v0
.end method

.method public hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 3

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "config_mainBuiltInDisplayCutout"

    const-string v1, "string"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    move p2, p1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SamsungDisplayCutouthasCutoutSupport Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return p2
.end method

.method public isHideCutout(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
