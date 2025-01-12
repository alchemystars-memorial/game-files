.class public Lcom/intlgame/view/ColorEvaluator;
.super Ljava/lang/Object;
.source "ColorEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrentColor(IIF)I
    .locals 1

    if-ge p1, p2, :cond_0

    int-to-float v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    goto :goto_0

    :cond_0
    int-to-float v0, p1

    sub-int/2addr p1, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    sub-float/2addr v0, p3

    :goto_0
    float-to-int p1, v0

    return p1
.end method


# virtual methods
.method public evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x10

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v1, v6

    ushr-int/lit8 v1, v1, 0x18

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x10

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x8

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    and-int/lit16 p3, p3, 0xff

    invoke-direct {p0, v0, v1, p1}, Lcom/intlgame/view/ColorEvaluator;->getCurrentColor(IIF)I

    move-result v0

    invoke-direct {p0, v2, v3, p1}, Lcom/intlgame/view/ColorEvaluator;->getCurrentColor(IIF)I

    move-result v1

    invoke-direct {p0, v4, v5, p1}, Lcom/intlgame/view/ColorEvaluator;->getCurrentColor(IIF)I

    move-result v2

    invoke-direct {p0, p2, p3, p1}, Lcom/intlgame/view/ColorEvaluator;->getCurrentColor(IIF)I

    move-result p1

    shl-int/lit8 p2, v0, 0x18

    shl-int/lit8 p3, v1, 0x10

    add-int/2addr p2, p3

    shl-int/lit8 p3, v2, 0x8

    add-int/2addr p2, p3

    add-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/intlgame/view/ColorEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
