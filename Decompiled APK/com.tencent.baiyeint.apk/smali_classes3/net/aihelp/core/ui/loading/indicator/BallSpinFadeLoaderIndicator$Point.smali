.class final Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;
.super Ljava/lang/Object;
.source "BallSpinFadeLoaderIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Point"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method private constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;->x:F

    iput p2, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;->y:F

    return-void
.end method

.method synthetic constructor <init>(FFLnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;-><init>(FF)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;)F
    .locals 0

    iget p0, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;->x:F

    return p0
.end method

.method static synthetic access$100(Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;)F
    .locals 0

    iget p0, p0, Lnet/aihelp/core/ui/loading/indicator/BallSpinFadeLoaderIndicator$Point;->y:F

    return p0
.end method
