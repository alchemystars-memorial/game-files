.class public Lnet/aihelp/core/util/viewer/PhotoView$END;
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
    name = "END"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/viewer/PhotoView;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/util/viewer/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView$END;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTop()F
    .locals 1

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView$END;->this$0:Lnet/aihelp/core/util/viewer/PhotoView;

    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method
