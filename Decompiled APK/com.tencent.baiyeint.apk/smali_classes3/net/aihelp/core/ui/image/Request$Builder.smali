.class public final Lnet/aihelp/core/ui/image/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private centerCrop:Z

.field private centerCropGravity:I

.field private centerInside:Z

.field private config:Landroid/graphics/Bitmap$Config;

.field private hasRotationPivot:Z

.field private onlyScaleDown:Z

.field private priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

.field private purgeable:Z

.field private resourceId:I

.field private rotationDegrees:F

.field private rotationPivotX:F

.field private rotationPivotY:F

.field private stableKey:Ljava/lang/String;

.field private targetHeight:I

.field private targetWidth:I

.field private transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/ui/image/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;->setResourceId(I)Lnet/aihelp/core/ui/image/Request$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;->setUri(Landroid/net/Uri;)Lnet/aihelp/core/ui/image/Request$Builder;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->uri:Landroid/net/Uri;

    iput p2, p0, Lnet/aihelp/core/ui/image/Request$Builder;->resourceId:I

    iput-object p3, p0, Lnet/aihelp/core/ui/image/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private constructor <init>(Lnet/aihelp/core/ui/image/Request;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lnet/aihelp/core/ui/image/Request;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->uri:Landroid/net/Uri;

    iget v0, p1, Lnet/aihelp/core/ui/image/Request;->resourceId:I

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->resourceId:I

    iget-object v0, p1, Lnet/aihelp/core/ui/image/Request;->stableKey:Ljava/lang/String;

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->stableKey:Ljava/lang/String;

    iget v0, p1, Lnet/aihelp/core/ui/image/Request;->targetWidth:I

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetWidth:I

    iget v0, p1, Lnet/aihelp/core/ui/image/Request;->targetHeight:I

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetHeight:I

    iget-boolean v0, p1, Lnet/aihelp/core/ui/image/Request;->centerCrop:Z

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop:Z

    iget-boolean v0, p1, Lnet/aihelp/core/ui/image/Request;->centerInside:Z

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerInside:Z

    iget v0, p1, Lnet/aihelp/core/ui/image/Request;->centerCropGravity:I

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCropGravity:I

    iget v0, p1, Lnet/aihelp/core/ui/image/Request;->rotationDegrees:F

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationDegrees:F

    iget v0, p1, Lnet/aihelp/core/ui/image/Request;->rotationPivotX:F

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationPivotX:F

    iget v0, p1, Lnet/aihelp/core/ui/image/Request;->rotationPivotY:F

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationPivotY:F

    iget-boolean v0, p1, Lnet/aihelp/core/ui/image/Request;->hasRotationPivot:Z

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->hasRotationPivot:Z

    iget-boolean v0, p1, Lnet/aihelp/core/ui/image/Request;->purgeable:Z

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->purgeable:Z

    iget-boolean v0, p1, Lnet/aihelp/core/ui/image/Request;->onlyScaleDown:Z

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->onlyScaleDown:Z

    iget-object v0, p1, Lnet/aihelp/core/ui/image/Request;->transformations:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/aihelp/core/ui/image/Request;->transformations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->transformations:Ljava/util/List;

    :cond_0
    iget-object v0, p1, Lnet/aihelp/core/ui/image/Request;->config:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lnet/aihelp/core/ui/image/Request;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/ui/image/Request;Lnet/aihelp/core/ui/image/Request$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/image/Request$Builder;-><init>(Lnet/aihelp/core/ui/image/Request;)V

    return-void
.end method


# virtual methods
.method public build()Lnet/aihelp/core/ui/image/Request;
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lnet/aihelp/core/ui/image/Request$Builder;->centerInside:Z

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-boolean v2, v0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop:Z

    if-eqz v2, :cond_3

    iget v2, v0, Lnet/aihelp/core/ui/image/Request$Builder;->targetWidth:I

    if-nez v2, :cond_3

    iget v2, v0, Lnet/aihelp/core/ui/image/Request$Builder;->targetHeight:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    iget v1, v0, Lnet/aihelp/core/ui/image/Request$Builder;->targetWidth:I

    if-nez v1, :cond_5

    iget v1, v0, Lnet/aihelp/core/ui/image/Request$Builder;->targetHeight:I

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    iget-object v1, v0, Lnet/aihelp/core/ui/image/Request$Builder;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    if-nez v1, :cond_6

    sget-object v1, Lnet/aihelp/core/ui/image/Picasso$Priority;->NORMAL:Lnet/aihelp/core/ui/image/Picasso$Priority;

    iput-object v1, v0, Lnet/aihelp/core/ui/image/Request$Builder;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    :cond_6
    new-instance v1, Lnet/aihelp/core/ui/image/Request;

    move-object v2, v1

    iget-object v3, v0, Lnet/aihelp/core/ui/image/Request$Builder;->uri:Landroid/net/Uri;

    iget v4, v0, Lnet/aihelp/core/ui/image/Request$Builder;->resourceId:I

    iget-object v5, v0, Lnet/aihelp/core/ui/image/Request$Builder;->stableKey:Ljava/lang/String;

    iget-object v6, v0, Lnet/aihelp/core/ui/image/Request$Builder;->transformations:Ljava/util/List;

    iget v7, v0, Lnet/aihelp/core/ui/image/Request$Builder;->targetWidth:I

    iget v8, v0, Lnet/aihelp/core/ui/image/Request$Builder;->targetHeight:I

    iget-boolean v9, v0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop:Z

    iget-boolean v10, v0, Lnet/aihelp/core/ui/image/Request$Builder;->centerInside:Z

    iget v11, v0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCropGravity:I

    iget-boolean v12, v0, Lnet/aihelp/core/ui/image/Request$Builder;->onlyScaleDown:Z

    iget v13, v0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationDegrees:F

    iget v14, v0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationPivotX:F

    iget v15, v0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationPivotY:F

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lnet/aihelp/core/ui/image/Request$Builder;->hasRotationPivot:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lnet/aihelp/core/ui/image/Request$Builder;->purgeable:Z

    move/from16 v17, v1

    iget-object v1, v0, Lnet/aihelp/core/ui/image/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/aihelp/core/ui/image/Request$Builder;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    move-object/from16 v19, v1

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lnet/aihelp/core/ui/image/Request;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZIZFFFZZLandroid/graphics/Bitmap$Config;Lnet/aihelp/core/ui/image/Picasso$Priority;Lnet/aihelp/core/ui/image/Request$1;)V

    return-object v21
.end method

.method public centerCrop()Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop(I)Lnet/aihelp/core/ui/image/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop(I)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerInside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop:Z

    iput p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCropGravity:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Center crop can not be used after calling centerInside"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public centerInside()Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 2

    iget-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerInside:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Center inside can not be used after calling centerCrop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearCenterCrop()Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop:Z

    const/16 v0, 0x11

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCropGravity:I

    return-object p0
.end method

.method public clearCenterInside()Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerInside:Z

    return-object p0
.end method

.method public clearOnlyScaleDown()Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->onlyScaleDown:Z

    return-object p0
.end method

.method public clearResize()Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetWidth:I

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetHeight:I

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerCrop:Z

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->centerInside:Z

    return-object p0
.end method

.method public clearRotation()Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationDegrees:F

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationPivotX:F

    iput v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationPivotY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->hasRotationPivot:Z

    return-object p0
.end method

.method public config(Landroid/graphics/Bitmap$Config;)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "config == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method hasImage()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->resourceId:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method hasPriority()Z
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSize()Z
    .locals 1

    iget v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetHeight:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onlyScaleDown()Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 2

    iget v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetHeight:I

    if-nez v0, :cond_1

    iget v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetWidth:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onlyScaleDown can not be applied without resize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->onlyScaleDown:Z

    return-object p0
.end method

.method public priority(Lnet/aihelp/core/ui/image/Picasso$Priority;)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->priority:Lnet/aihelp/core/ui/image/Picasso$Priority;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Priority already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Priority invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purgeable()Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->purgeable:Z

    return-object p0
.end method

.method public resize(II)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 0

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one dimension has to be positive number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetWidth:I

    iput p2, p0, Lnet/aihelp/core/ui/image/Request$Builder;->targetHeight:I

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rotate(F)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 0

    iput p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationDegrees:F

    return-object p0
.end method

.method public rotate(FFF)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 0

    iput p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationDegrees:F

    iput p2, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationPivotX:F

    iput p3, p0, Lnet/aihelp/core/ui/image/Request$Builder;->rotationPivotY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->hasRotationPivot:Z

    return-object p0
.end method

.method public setResourceId(I)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->resourceId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->uri:Landroid/net/Uri;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image resource ID may not be 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUri(Landroid/net/Uri;)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->uri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->resourceId:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image URI may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stableKey(Ljava/lang/String;)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/ui/image/Request$Builder;->stableKey:Ljava/lang/String;

    return-object p0
.end method

.method public transform(Ljava/util/List;)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/aihelp/core/ui/image/Transformation;",
            ">;)",
            "Lnet/aihelp/core/ui/image/Request$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/ui/image/Transformation;

    invoke-virtual {p0, v2}, Lnet/aihelp/core/ui/image/Request$Builder;->transform(Lnet/aihelp/core/ui/image/Transformation;)Lnet/aihelp/core/ui/image/Request$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation list must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform(Lnet/aihelp/core/ui/image/Transformation;)Lnet/aihelp/core/ui/image/Request$Builder;
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lnet/aihelp/core/ui/image/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->transformations:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->transformations:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Request$Builder;->transformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
