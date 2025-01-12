.class public Lkotlinx/serialization/json/internal/JsonStringBuilder;
.super Ljava/lang/Object;
.source "JsonStringBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013J \u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J\u0018\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0014J\u0008\u0010\u001d\u001a\u00020\rH\u0016J\u0008\u0010\u001e\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u00020\u00048\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonStringBuilder;",
        "",
        "()V",
        "array",
        "",
        "([C)V",
        "size",
        "",
        "getSize",
        "()I",
        "setSize",
        "(I)V",
        "append",
        "",
        "ch",
        "",
        "value",
        "",
        "string",
        "",
        "appendQuoted",
        "appendStringSlowPath",
        "firstEscapedChar",
        "currentSize",
        "ensureAdditionalCapacity",
        "expected",
        "ensureTotalCapacity",
        "oldSize",
        "additional",
        "release",
        "toString",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field protected array:[C

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharArrayPool;->take()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonStringBuilder;-><init>([C)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    return-void
.end method

.method private final appendStringSlowPath(IILjava/lang/String;)V
    .locals 6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_5

    :goto_0
    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x2

    invoke-virtual {p0, p2, v3}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->ensureTotalCapacity(II)I

    move-result p2

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_3

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v3

    aget-byte v3, v3, p1

    if-nez v3, :cond_0

    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    add-int/lit8 v4, p2, 0x1

    int-to-char p1, p1

    aput-char p1, v3, p2

    goto :goto_1

    :cond_0
    if-ne v3, v1, :cond_2

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_STRINGS()[Ljava/lang/String;

    move-result-object v3

    aget-object p1, v3, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p2, v3}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->ensureTotalCapacity(II)I

    move-result p2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz p1, :cond_1

    invoke-virtual {p1, v4, v5, v3, p2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    const/16 v4, 0x5c

    aput-char v4, p1, p2

    add-int/lit8 v4, p2, 0x1

    int-to-char v3, v3

    aput-char v3, p1, v4

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    add-int/lit8 v4, p2, 0x1

    int-to-char p1, p1

    aput-char p1, v3, p2

    :goto_1
    move p2, v4

    :goto_2
    if-lt v2, v0, :cond_4

    goto :goto_3

    :cond_4
    move p1, v2

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {p0, p2, v1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->ensureTotalCapacity(II)I

    move-result p1

    iget-object p2, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    add-int/lit8 p3, p1, 0x1

    const/16 v0, 0x22

    aput-char v0, p2, p1

    iput p3, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    return-void
.end method

.method private final ensureAdditionalCapacity(I)V
    .locals 1

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->ensureTotalCapacity(II)I

    return-void
.end method


# virtual methods
.method public final append(C)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->ensureAdditionalCapacity(I)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final append(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->append(Ljava/lang/String;)V

    return-void
.end method

.method public final append(Ljava/lang/String;)V
    .locals 5

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->ensureAdditionalCapacity(I)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    iget v2, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    return-void
.end method

.method public final appendQuoted(Ljava/lang/String;)V
    .locals 8

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->ensureAdditionalCapacity(I)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x22

    aput-char v3, v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, v2

    if-ge v2, v1, :cond_2

    move v4, v2

    :goto_0
    add-int/lit8 v5, v4, 0x1

    aget-char v6, v0, v4

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_0

    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    move-result-object v7

    aget-byte v6, v7, v6

    if-eqz v6, :cond_0

    sub-int v0, v4, v2

    invoke-direct {p0, v0, v4, p1}, Lkotlinx/serialization/json/internal/JsonStringBuilder;->appendStringSlowPath(IILjava/lang/String;)V

    return-void

    :cond_0
    if-lt v5, v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, v1, 0x1

    aput-char v3, v0, v1

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    return-void
.end method

.method protected ensureTotalCapacity(II)I
    .locals 2

    add-int/2addr p2, p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    array-length v1, v0

    if-gt v1, p2, :cond_0

    mul-int/lit8 v1, p1, 0x2

    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p2

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    :cond_0
    return p1
.end method

.method protected final getSize()I
    .locals 1

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    return v0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/CharArrayPool;->release([C)V

    return-void
.end method

.method protected final setSize(I)V
    .locals 0

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->array:[C

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonStringBuilder;->size:I

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
