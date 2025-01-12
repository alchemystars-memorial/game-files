.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;
.super Ljava/lang/Object;
.source "IntegerCounter.java"


# instance fields
.field counter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return v0
.end method

.method public final decrementAndGet()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final get()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return v0
.end method

.method public final getAndAdd(I)I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    add-int/2addr p1, v0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return v0
.end method

.method public final getAndDecrement()I
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return v0
.end method

.method public final getAndIncrement()I
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return v0
.end method

.method public final getAndSet(I)I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final incrementAndGet()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return v0
.end method

.method public final set(I)V
    .locals 0

    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/IntegerCounter;->counter:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
