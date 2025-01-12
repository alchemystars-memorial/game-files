.class public interface abstract Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ResourceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceManagerHooks"
.end annotation


# virtual methods
.method public abstract createDrawableFor(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "appCompatDrawableManager",
            "context",
            "resId"
        }
    .end annotation
.end method

.method public abstract getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation
.end method

.method public abstract getTintModeForDrawableRes(I)Landroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resId"
        }
    .end annotation
.end method

.method public abstract tintDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resId",
            "drawable"
        }
    .end annotation
.end method

.method public abstract tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "context",
            "resId",
            "drawable"
        }
    .end annotation
.end method
