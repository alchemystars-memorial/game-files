.class public abstract Lcom/dmm/custom/util/common/base/UnicodeEscaper;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Lcom/dmm/custom/util/common/base/Escaper;


# static fields
.field private static final DEST_PAD:I = 0x20

.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dmm/custom/util/common/base/UnicodeEscaper$1;

    invoke-direct {v0}, Lcom/dmm/custom/util/common/base/UnicodeEscaper$1;-><init>()V

    sput-object v0, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final codePointAt(Ljava/lang/CharSequence;II)I
    .locals 4

    if-ge p1, p2, :cond_5

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const v1, 0xd800

    if-lt p1, v1, :cond_4

    const v1, 0xdfff

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0xdbff

    const-string v2, " at index "

    const-string v3, "\' with value "

    if-gt p1, v1, :cond_3

    if-ne v0, p2, :cond_1

    neg-int p0, p1

    return p0

    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1, p0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Expected low surrogate but got char \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected low surrogate character \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return p1

    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index exceeds specified range"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final growBuffer([CII)[C
    .locals 1

    new-array p2, p2, [C

    if-lez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p2
.end method


# virtual methods
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1

    invoke-static {p1}, Lcom/dmm/custom/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/dmm/custom/util/common/base/UnicodeEscaper$2;

    invoke-direct {v0, p0, p1}, Lcom/dmm/custom/util/common/base/UnicodeEscaper$2;-><init>(Lcom/dmm/custom/util/common/base/UnicodeEscaper;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-lt p2, v0, :cond_2

    sub-int p2, v0, v3

    if-lez p2, :cond_1

    add-int/2addr p2, v4

    array-length v5, v1

    if-ge v5, p2, :cond_0

    invoke-static {v1, v4, p2}, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v3, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, p2

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_2
    invoke-static {p1, p2, v0}, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_7

    invoke-virtual {p0, v5}, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v6

    if-eqz v6, :cond_5

    sub-int v7, p2, v3

    add-int v8, v4, v7

    array-length v9, v6

    add-int/2addr v9, v8

    array-length v10, v1

    if-ge v10, v9, :cond_3

    sub-int v10, v0, p2

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x20

    invoke-static {v1, v4, v9}, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    :cond_3
    if-lez v7, :cond_4

    invoke-virtual {p1, v3, p2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, v8

    :cond_4
    array-length v3, v6

    if-lez v3, :cond_5

    array-length v3, v6

    invoke-static {v6, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v6

    add-int/2addr v4, v3

    :cond_5
    invoke-static {v5}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v3, p2

    invoke-virtual {p0, p1, v3, v0}, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trailing high surrogate at end of input"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2

    :goto_0
    if-lt p2, p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/dmm/custom/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    add-int/2addr p2, v0

    goto :goto_0

    :cond_3
    :goto_2
    return p2
.end method
