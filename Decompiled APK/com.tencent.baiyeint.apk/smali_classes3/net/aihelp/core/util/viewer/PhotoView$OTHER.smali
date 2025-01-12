.class public Lnet/aihelp/core/util/viewer/PhotoView$OTHER;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lnet/aihelp/core/util/viewer/PhotoView$ClipCalculate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/viewer/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OTHER"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/viewer/PhotoView;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/util/viewer/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$OTHER;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTop()F
    .locals 2

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$OTHER;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView$OTHER;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v1}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method
