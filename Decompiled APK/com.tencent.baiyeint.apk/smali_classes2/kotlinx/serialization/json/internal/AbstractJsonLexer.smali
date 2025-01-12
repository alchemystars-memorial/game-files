.class public abstract Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.super Ljava/lang/Object;
.source "AbstractJsonLexer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,634:1\n1#2:635\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0001\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008 \u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0002J\u0018\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0014J\u0008\u0010\u001d\u001a\u00020\u001eH&J\u0006\u0010\u001f\u001a\u00020\u001eJ\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u0004H\u0003J\u0006\u0010!\u001a\u00020\u001eJ\u0018\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0004H\u0002J\u0008\u0010$\u001a\u00020\rH&J\u0008\u0010%\u001a\u00020&H&J\u000e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&J\u0010\u0010%\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020(H\u0016J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020\rJ \u0010+\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0005J\u0006\u0010,\u001a\u00020\rJ\u0006\u0010-\u001a\u00020\rJ\u0018\u0010.\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0010\u0010/\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0004H&J\u0008\u00101\u001a\u00020\u001aH\u0016J\u0006\u00102\u001a\u00020\u001aJ\u0010\u00103\u001a\u00020\u001a2\u0006\u00104\u001a\u00020&H\u0004J\u0018\u00103\u001a\u0002052\u0006\u00106\u001a\u00020\r2\u0008\u0008\u0002\u00100\u001a\u00020\u0004J\u000e\u00107\u001a\u00020\u001a2\u0006\u00108\u001a\u00020\rJ\u0018\u00109\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0018\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020(2\u0006\u0010\u0018\u001a\u00020\u0004H\u0016J\u0010\u0010<\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020(H\u0004J\u0006\u0010>\u001a\u00020&J\u0010\u0010?\u001a\u0004\u0018\u00010\r2\u0006\u0010@\u001a\u00020\u001eJ1\u0010A\u001a\u00020\u001a2\u0006\u0010B\u001a\u00020\u001e2\u0008\u0008\u0002\u00100\u001a\u00020\u00042\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00020\r0CH\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008DJ\u000e\u0010E\u001a\u00020\u001a2\u0006\u0010F\u001a\u00020\u001eJ\u0008\u0010G\u001a\u00020\u0004H\u0016J\u0018\u0010H\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u0004H\u0016J\u0008\u0010J\u001a\u00020\rH\u0002J\u0008\u0010K\u001a\u00020\rH\u0016J\u0008\u0010L\u001a\u00020\u001eH&J\u0006\u0010M\u001a\u00020\u001eJ\u0010\u0010N\u001a\u00020\u001a2\u0006\u0010\'\u001a\u00020(H\u0004J\u0008\u0010O\u001a\u00020\u001eH\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000fX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006P"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "",
        "()V",
        "currentPosition",
        "",
        "escapedString",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "getEscapedString",
        "()Ljava/lang/StringBuilder;",
        "setEscapedString",
        "(Ljava/lang/StringBuilder;)V",
        "peekedString",
        "",
        "source",
        "",
        "getSource",
        "()Ljava/lang/CharSequence;",
        "appendEsc",
        "startPosition",
        "appendEscape",
        "lastPosition",
        "current",
        "appendHex",
        "startPos",
        "appendRange",
        "",
        "fromIndex",
        "toIndex",
        "canConsumeValue",
        "",
        "consumeBoolean",
        "start",
        "consumeBooleanLenient",
        "consumeBooleanLiteral",
        "literalSuffix",
        "consumeKeyString",
        "consumeNextToken",
        "",
        "expected",
        "",
        "consumeNumericLiteral",
        "",
        "consumeString",
        "consumeStringLenient",
        "consumeStringLenientNotNull",
        "decodedString",
        "definitelyNotEof",
        "position",
        "ensureHaveChars",
        "expectEof",
        "fail",
        "expectedToken",
        "",
        "message",
        "failOnUnknownKey",
        "key",
        "fromHexChar",
        "indexOf",
        "char",
        "isValidValueStart",
        "c",
        "peekNextToken",
        "peekString",
        "isLenient",
        "require",
        "condition",
        "Lkotlin/Function0;",
        "require$kotlinx_serialization_json",
        "skipElement",
        "allowLenientStrings",
        "skipWhitespaces",
        "substring",
        "endPos",
        "takePeeked",
        "toString",
        "tryConsumeComma",
        "tryConsumeNotNull",
        "unexpectedToken",
        "wasUnquotedString",
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
.field protected currentPosition:I

.field private escapedString:Ljava/lang/StringBuilder;

.field private peekedString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final synthetic access$getCurrentPosition$p(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return p0
.end method

.method private final appendEsc(I)I
    .locals 5

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->definitelyNotEof(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v3, 0x75

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendHex(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->escapeToChar(I)C

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v4

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid escaped char \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_2
    const-string p1, "Expected escape sequence to continue, got EOF"

    invoke-static {p0, p1, v2, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final appendEscape(II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendEsc(I)I

    move-result p1

    return p1
.end method

.method private final appendHex(Ljava/lang/CharSequence;I)I
    .locals 4

    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x3

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result p1

    add-int/2addr v2, p1

    int-to-char p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    const-string v0, "Unexpected EOF during unicode escape"

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final consumeBoolean(I)Z
    .locals 5

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->definitelyNotEof(I)I

    move-result p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    or-int/lit8 p1, p1, 0x20

    const/16 v0, 0x74

    if-ne p1, v0, :cond_0

    const-string p1, "rue"

    invoke-direct {p0, p1, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBooleanLiteral(Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    const-string p1, "alse"

    invoke-direct {p0, p1, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBooleanLiteral(Ljava/lang/String;I)V

    :goto_0
    return v3

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected valid boolean literal prefix, but had \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3, v2, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_2
    const-string p1, "EOF"

    invoke-static {p0, p1, v3, v2, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final consumeBooleanLiteral(Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    move v1, v4

    :goto_0
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v7

    add-int/2addr v1, p2

    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    or-int/lit8 v1, v1, 0x20

    if-ne v6, v1, :cond_1

    if-le v5, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected valid boolean literal prefix, but had \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return-void

    :cond_3
    const-string p1, "Unexpected end of boolean literal"

    invoke-static {p0, p1, v4, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final decodedString(II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "escapedString.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1
.end method

.method public static synthetic fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fail"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final fromHexChar(Ljava/lang/CharSequence;I)I
    .locals 3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x30

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, p1, :cond_0

    const/16 v2, 0x39

    if-gt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    sub-int/2addr p1, p2

    goto :goto_4

    :cond_1
    const/16 p2, 0x61

    if-gt p2, p1, :cond_2

    const/16 v2, 0x66

    if-gt p1, v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0xa

    goto :goto_4

    :cond_3
    const/16 p2, 0x41

    if-gt p2, p1, :cond_4

    const/16 v2, 0x46

    if-gt p1, v2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_2

    :goto_4
    return p1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid toHexChar char \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' in unicode escape"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public static synthetic require$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;ZILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->access$getCurrentPosition$p(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)I

    move-result p2

    :cond_0
    const-string p4, "message"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: require"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final takePeeked()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    return-object v0
.end method

.method private final wasUnquotedString()Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method protected appendRange(II)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public abstract canConsumeValue()Z
.end method

.method public final consumeBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final consumeBooleanLenient()Z
    .locals 9

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "EOF"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v6, 0x22

    const/4 v7, 0x1

    if-ne v1, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBoolean(I)Z

    move-result v0

    if-eqz v1, :cond_3

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v1, v8, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/2addr v1, v7

    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    goto :goto_1

    :cond_1
    const-string v0, "Expected closing quotation mark"

    invoke-static {p0, v0, v5, v4, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_2
    invoke-static {p0, v2, v5, v4, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_3
    :goto_1
    return v0

    :cond_4
    invoke-static {p0, v2, v5, v4, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public abstract consumeKeyString()Ljava/lang/String;
.end method

.method public abstract consumeNextToken()B
.end method

.method public final consumeNextToken(B)B
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(B)V

    :cond_0
    return v0
.end method

.method public consumeNextToken(C)V
    .locals 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->ensureHaveChars()V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->definitelyNotEof(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->unexpectedToken(C)V

    return-void

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_3

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    const/16 v3, 0xd

    if-eq v1, v3, :cond_3

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-ne v1, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->unexpectedToken(C)V

    :cond_3
    :goto_1
    move v1, v2

    goto :goto_0
.end method

.method public final consumeNumericLiteral()J
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->definitelyNotEof(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "EOF"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ge v1, v2, :cond_11

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v7, 0x22

    if-ne v2, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v3, v6, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_1
    move v2, v6

    :goto_0
    move v12, v1

    move v13, v6

    const/4 v11, 0x1

    const-wide/16 v14, 0x0

    :goto_1
    const-string v8, "Numeric value overflow"

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v9, 0x2d

    if-ne v7, v9, :cond_3

    if-ne v12, v1, :cond_2

    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x22

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    invoke-static {v0, v1, v6, v5, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_3
    invoke-static {v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v12, v9, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    move v11, v6

    :goto_2
    add-int/lit8 v9, v7, -0x30

    if-ltz v9, :cond_6

    const/16 v10, 0x9

    if-gt v9, v10, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    move v10, v6

    :goto_3
    if-eqz v10, :cond_8

    const/16 v7, 0xa

    int-to-long v4, v7

    mul-long/2addr v14, v4

    int-to-long v4, v9

    sub-long/2addr v14, v4

    const-wide/16 v4, 0x0

    cmp-long v7, v14, v4

    if-gtz v7, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v7, 0x22

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    const/4 v9, 0x2

    invoke-static {v0, v8, v6, v9, v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected symbol \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' in numeric literal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v6, v3, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_9
    :goto_4
    if-eq v1, v12, :cond_10

    if-eqz v13, :cond_a

    add-int/lit8 v4, v12, -0x1

    if-eq v1, v4, :cond_10

    :cond_a
    if-eqz v2, :cond_d

    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_b

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_b
    const-string v1, "Expected closing quotation mark"

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v6, v4, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_c
    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v3, v6, v4, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_d
    :goto_5
    iput v12, v0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-eqz v13, :cond_e

    goto :goto_6

    :cond_e
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v14, v1

    if-eqz v1, :cond_f

    neg-long v14, v14

    :goto_6
    return-wide v14

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v8, v6, v2, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Expected numeric literal"

    invoke-static {v0, v3, v6, v2, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    :cond_11
    move-object v1, v4

    move v2, v5

    invoke-static {v0, v3, v6, v2, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public final consumeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->takePeeked()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeKeyString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x22

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendEscape(II)I

    move-result p2

    :goto_1
    move p3, p2

    move v1, v3

    goto :goto_2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p3, v0, :cond_2

    invoke-virtual {p0, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->definitelyNotEof(I)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "EOF"

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_2
    :goto_2
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-direct {p0, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object p1

    :goto_3
    add-int/2addr p3, v3

    iput p3, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return-object p1
.end method

.method public final consumeStringLenient()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->takePeeked()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v4, 0x0

    if-nez v2, :cond_6

    move v2, v4

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v2, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->definitelyNotEof(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-direct {p0, v4, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return-object v1

    :cond_6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const-string v1, "Expected beginning of the string, but got "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v4, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_7
    const-string v1, "EOF"

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final consumeStringLenientNotNull()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->wasUnquotedString()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "Unexpected \'null\' value instead of string literal"

    invoke-static {p0, v3, v0, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract definitelyNotEof(I)I
.end method

.method public ensureHaveChars()V
    .locals 0

    return-void
.end method

.method public final expectEof()V
    .locals 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected EOF after parsing an object, but had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final fail(Ljava/lang/String;I)Ljava/lang/Void;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1
.end method

.method protected final fail(B)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "quotation mark \'\"\'"

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string p1, "comma \',\'"

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const-string p1, "semicolon \':\'"

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    const-string p1, "start of the object \'{\'"

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    const-string p1, "end of the object \'}\'"

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    const-string p1, "start of the array \'[\'"

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    const-string p1, "end of the array \']\'"

    goto :goto_0

    :cond_6
    const-string p1, "valid token"

    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_8

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-gtz v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    :goto_1
    const-string v1, "EOF"

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' instead"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final failOnUnknownKey(Ljava/lang/String;)V
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered an unknown key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'.\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected final getEscapedString()Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method protected abstract getSource()Ljava/lang/CharSequence;
.end method

.method public indexOf(CI)I
    .locals 6

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected final isValidValueStart(C)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x7d

    if-ne p1, v2, :cond_0

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_2
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    :goto_4
    move v0, v1

    goto :goto_5

    :cond_4
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_5

    goto :goto_4

    :cond_5
    :goto_5
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public final peekNextToken()B
    .locals 5

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->definitelyNotEof(I)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0xa

    if-ne v1, v2, :cond_0

    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return v3

    :cond_0
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v0

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final peekString(Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    return-object p1
.end method

.method public final require$kotlinx_serialization_json(ZILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method protected final setEscapedString(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final skipElement(Z)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    return-void

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeKeyString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    if-eqz v4, :cond_5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/16 v4, 0x9

    if-ne v1, v4, :cond_7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "found ] instead of }"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_7
    const/4 v4, 0x7

    if-ne v1, v4, :cond_9

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    if-ne v1, v2, :cond_8

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "found } instead of ]"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p1

    throw p1

    :cond_9
    const/16 v4, 0xa

    if-eq v1, v4, :cond_a

    :goto_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_a
    const/4 p1, 0x2

    const/4 v0, 0x0

    const-string v1, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    invoke-static {p0, v1, v5, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public skipWhitespaces()I
    .locals 3

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->definitelyNotEof(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return v0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonReader(source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract tryConsumeComma()Z
.end method

.method public final tryConsumeNotNull()Z
    .locals 9

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->definitelyNotEof(I)I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_4

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    add-int/lit8 v6, v5, 0x1

    const-string v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v8

    add-int/2addr v5, v0

    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v7, v5, :cond_1

    return v2

    :cond_1
    const/4 v5, 0x3

    if-le v6, v5, :cond_3

    if-le v1, v3, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v5, v0, 0x4

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/2addr v0, v3

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return v4

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    :goto_1
    return v2
.end method

.method protected final unexpectedToken(C)V
    .locals 2

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-ltz v0, :cond_1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 p1, p1, -0x4

    const-string v0, "Expected string literal but \'null\' literal was found.\nUse \'coerceInputValues = true\' in \'Json {}` builder to coerce nulls to default values."

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(B)V

    return-void
.end method
