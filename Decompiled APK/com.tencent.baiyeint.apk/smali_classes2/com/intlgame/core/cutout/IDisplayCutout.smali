.class public interface abstract Lcom/intlgame/core/cutout/IDisplayCutout;
.super Ljava/lang/Object;
.source "IDisplayCutout.java"


# virtual methods
.method public abstract getCutoutSize(Landroid/content/Context;Landroid/view/WindowInsets;)Ljava/util/List;
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
.end method

.method public abstract getDisplayDensityDpi(Landroid/content/Context;)I
.end method

.method public abstract getDisplayRealSize(Landroid/content/Context;)[I
.end method

.method public abstract getSafeDisplay(Landroid/content/Context;Landroid/view/WindowInsets;)Landroid/graphics/Rect;
.end method

.method public abstract getStatusBarHeight(Landroid/content/Context;)I
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract hasCutoutSupport(Landroid/content/Context;Landroid/view/WindowInsets;)Z
.end method

.method public abstract isHideCutout(Landroid/content/Context;)Z
.end method
