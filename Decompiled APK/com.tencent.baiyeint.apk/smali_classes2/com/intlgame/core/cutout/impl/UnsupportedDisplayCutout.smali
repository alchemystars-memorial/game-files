.class public Lcom/intlgame/core/cutout/impl/UnsupportedDisplayCutout;
.super Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;
.source "UnsupportedDisplayCutout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/intlgame/core/cutout/impl/AbstractDisplayCutout;-><init>()V

    return-void
.end method


# virtual methods
.method public getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/intlgame/core/cutout/impl/UnsupportedDisplayCutout;->getDisplayRealSize(Landroid/content/Context;)[I

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-direct {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "UnsupportedDisplayCutout"

    return-object v0
.end method

.method public hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isHideCutout(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
