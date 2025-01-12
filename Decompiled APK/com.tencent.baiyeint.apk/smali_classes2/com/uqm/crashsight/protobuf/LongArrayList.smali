.class final Lcom/uqm/crashsight/protobuf/LongArrayList;
.super Lcom/uqm/crashsight/protobuf/AbstractProtobufList;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Internal$LongList;
.implements Lcom/uqm/crashsight/protobuf/PrimitiveNonBoxingCollection;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/AbstractProtobufList<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/Internal$LongList;",
        "Lcom/uqm/crashsight/protobuf/PrimitiveNonBoxingCollection;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/uqm/crashsight/protobuf/LongArrayList;


# instance fields
.field private b:[J

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;-><init>([JI)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/LongArrayList;->a:Lcom/uqm/crashsight/protobuf/LongArrayList;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/LongArrayList;->b()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    iput p2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    return-void
.end method

.method public static d()Lcom/uqm/crashsight/protobuf/LongArrayList;
    .locals 1

    sget-object v0, Lcom/uqm/crashsight/protobuf/LongArrayList;->a:Lcom/uqm/crashsight/protobuf/LongArrayList;

    return-object v0
.end method

.method private d(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)Lcom/uqm/crashsight/protobuf/Internal$LongList;
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    if-lt p1, v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    invoke-direct {v0, p1, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;-><init>([JI)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final a(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LongArrayList;->c()V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    iget v1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LongArrayList;->c()V

    if-ltz p1, :cond_1

    iget p2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    if-gt p1, p2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    array-length v3, v2

    if-ge p2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [J

    const/4 v3, 0x0

    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    :goto_0
    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    aput-wide v0, p2, p1

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LongArrayList;->c()V

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    check-cast p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget v0, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    iget v3, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    array-length v2, v0

    if-le v3, v2, :cond_2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    :cond_2
    iget-object v0, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    iget v4, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    iget p1, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    return v0

    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final synthetic b(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->a(I)Lcom/uqm/crashsight/protobuf/Internal$LongList;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/uqm/crashsight/protobuf/LongArrayList;

    iget v1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    iget v2, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    move v1, v3

    :goto_0
    iget v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->c(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Lcom/uqm/crashsight/protobuf/Internal;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LongArrayList;->c()V

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->d(I)V

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    aget-wide v1, v0, p1

    iget v3, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LongArrayList;->c()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LongArrayList;->c()V

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    iget v1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    iget p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->modCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LongArrayList;->c()V

    invoke-direct {p0, p1}, Lcom/uqm/crashsight/protobuf/LongArrayList;->d(I)V

    iget-object p2, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->b:[J

    aget-wide v2, p2, p1

    aput-wide v0, p2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/LongArrayList;->c:I

    return v0
.end method
