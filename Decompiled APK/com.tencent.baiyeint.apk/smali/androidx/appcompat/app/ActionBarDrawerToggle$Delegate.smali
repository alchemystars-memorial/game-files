.class public interface abstract Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getActionBarThemedContext()Landroid/content/Context;
.end method

.method public abstract getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract isNavigationVisible()Z
.end method

.method public abstract setActionBarDescription(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDescRes"
        }
    .end annotation
.end method

.method public abstract setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "upDrawable",
            "contentDescRes"
        }
    .end annotation
.end method
