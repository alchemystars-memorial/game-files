.class Lnet/aihelp/core/ui/image/ImageViewAction;
.super Lnet/aihelp/core/ui/image/Action;
.source "ImageViewAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/image/Action<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lnet/aihelp/core/ui/image/Callback;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/image/Picasso;Landroid/widget/ImageView;Lnet/aihelp/core/ui/image/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lnet/aihelp/core/ui/image/Callback;Z)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lnet/aihelp/core/ui/image/Action;-><init>(Lnet/aihelp/core/ui/image/Picasso;Ljava/lang/Object;Lnet/aihelp/core/ui/image/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v1, p10

    iput-object v1, v0, Lnet/aihelp/core/ui/image/ImageViewAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    invoke-super {p0}, Lnet/aihelp/core/ui/image/Action;->cancel()V

    iget-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    :cond_0
    return-void
.end method

.method public complete(Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;)V
    .locals 7

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-object v2, v0, Lnet/aihelp/core/ui/image/Picasso;->context:Landroid/content/Context;

    iget-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->picasso:Lnet/aihelp/core/ui/image/Picasso;

    iget-boolean v6, v0, Lnet/aihelp/core/ui/image/Picasso;->indicatorsEnabled:Z

    iget-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->target:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v5, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->noFade:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lnet/aihelp/core/ui/image/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lnet/aihelp/core/ui/image/Picasso$LoadedFrom;ZZ)V

    iget-object p1, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lnet/aihelp/core/ui/image/Callback;->onSuccess()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string v0, "Attempted to complete action with no result!\n%s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->target:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    iget v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->errorResId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->target:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->errorResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->target:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/ImageViewAction;->callback:Lnet/aihelp/core/ui/image/Callback;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lnet/aihelp/core/ui/image/Callback;->onError(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method
