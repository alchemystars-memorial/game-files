.class public abstract Lcom/uqm/crashsight/protobuf/ByteString;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;,
        Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;,
        Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;,
        Lcom/uqm/crashsight/protobuf/ByteString$Output;,
        Lcom/uqm/crashsight/protobuf/ByteString$LeafByteString;,
        Lcom/uqm/crashsight/protobuf/ByteString$AbstractByteIterator;,
        Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;,
        Lcom/uqm/crashsight/protobuf/ByteString$ArraysByteArrayCopier;,
        Lcom/uqm/crashsight/protobuf/ByteString$SystemByteArrayCopier;,
        Lcom/uqm/crashsight/protobuf/ByteString$ByteArrayCopier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/ByteString;

.field private static final b:Lcom/uqm/crashsight/protobuf/ByteString$ByteArrayCopier;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/uqm/crashsight/protobuf/Internal;->c:[B

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;-><init>([B)V

    sput-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->a:Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-static {}, Lcom/uqm/crashsight/protobuf/Android;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$SystemByteArrayCopier;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/ByteString$SystemByteArrayCopier;-><init>(B)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$ArraysByteArrayCopier;

    invoke-direct {v0, v1}, Lcom/uqm/crashsight/protobuf/ByteString$ArraysByteArrayCopier;-><init>(B)V

    :goto_0
    sput-object v0, Lcom/uqm/crashsight/protobuf/ByteString;->b:Lcom/uqm/crashsight/protobuf/ByteString$ByteArrayCopier;

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$2;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/ByteString$2;-><init>()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uqm/crashsight/protobuf/ByteString;->c:I

    return-void
.end method

.method static synthetic a(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static a([B)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 4

    array-length v0, p0

    add-int/lit8 v1, v0, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/uqm/crashsight/protobuf/ByteString;->c(III)I

    new-instance v1, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    sget-object v2, Lcom/uqm/crashsight/protobuf/ByteString;->b:Lcom/uqm/crashsight/protobuf/ByteString$ByteArrayCopier;

    invoke-interface {v2, p0, v3, v0}, Lcom/uqm/crashsight/protobuf/ByteString$ByteArrayCopier;->a([BII)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v1
.end method

.method public static a([BII)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c(III)I

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/uqm/crashsight/protobuf/ByteString;->b:Lcom/uqm/crashsight/protobuf/ByteString$ByteArrayCopier;

    invoke-interface {v1, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/ByteString$ByteArrayCopier;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method static b([B)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method static b([BII)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;

    invoke-direct {v0, p0, p1, p2}, Lcom/uqm/crashsight/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method

.method static b(II)V
    .locals 3

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_1

    if-gez p0, :cond_0

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index > length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static c(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method static c(I)Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;
    .locals 2

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uqm/crashsight/protobuf/ByteString$CodedBuilder;-><init>(IB)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method protected abstract a(III)I
.end method

.method public a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;
    .locals 1

    new-instance v0, Lcom/uqm/crashsight/protobuf/ByteString$1;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/ByteString$1;-><init>(Lcom/uqm/crashsight/protobuf/ByteString;)V

    return-object v0
.end method

.method public abstract a(II)Lcom/uqm/crashsight/protobuf/ByteString;
.end method

.method protected abstract a(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract a(Lcom/uqm/crashsight/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a([BIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    add-int v0, p2, p4

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c(III)I

    add-int v0, p3, p4

    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/uqm/crashsight/protobuf/ByteString;->c(III)I

    if-lez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/ByteString;->b([BIII)V

    :cond_0
    return-void
.end method

.method abstract b(I)B
.end method

.method public abstract b()I
.end method

.method protected abstract b(III)I
.end method

.method protected abstract b([BIII)V
.end method

.method public final c()[B
    .locals 3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uqm/crashsight/protobuf/Internal;->c:[B

    return-object v0

    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b([BIII)V

    return-object v1
.end method

.method public abstract d()Ljava/nio/ByteBuffer;
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/uqm/crashsight/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Lcom/uqm/crashsight/protobuf/CodedInputStream;
.end method

.method protected abstract h()I
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString;->c:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/uqm/crashsight/protobuf/ByteString;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/uqm/crashsight/protobuf/ByteString;->c:I

    :cond_1
    return v0
.end method

.method protected final i()I
    .locals 1

    iget v0, p0, Lcom/uqm/crashsight/protobuf/ByteString;->c:I

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a()Lcom/uqm/crashsight/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->b()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/TextFormatEscaper;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/uqm/crashsight/protobuf/ByteString;->a(II)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/TextFormatEscaper;->a(Lcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
