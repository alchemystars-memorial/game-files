.class public Lorg/spongycastle/crypto/modes/KGCMBlockCipher;
.super Ljava/lang/Object;
.source "KGCMBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final BITS_IN_BYTE:I = 0x8

.field private static final MASK_1_128:Ljava/math/BigInteger;

.field private static final MASK_1_256:Ljava/math/BigInteger;

.field private static final MASK_1_512:Ljava/math/BigInteger;

.field private static final MASK_2_128:Ljava/math/BigInteger;

.field private static final MASK_2_256:Ljava/math/BigInteger;

.field private static final MASK_2_512:Ljava/math/BigInteger;

.field private static final MIN_MAC_BITS:I = 0x40

.field private static final ONE:Ljava/math/BigInteger;

.field private static final POLYRED_128:Ljava/math/BigInteger;

.field private static final POLYRED_256:Ljava/math/BigInteger;

.field private static final POLYRED_512:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private H:[B

.field private associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

.field private b:[B

.field private ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field private data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

.field private engine:Lorg/spongycastle/crypto/BlockCipher;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private iv:[B

.field private lambda_c:I

.field private lambda_o:I

.field private macBlock:[B

.field private macSize:I

.field private temp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ONE:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "340282366920938463463374607431768211456"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_128:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "340282366920938463463374607431768211455"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_128:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "135"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_128:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "115792089237316195423570985008687907853269984665640564039457584007913129639936"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_256:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "115792089237316195423570985008687907853269984665640564039457584007913129639935"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_256:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1061"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_256:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084096"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_512:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "13407807929942597099574024998205846127479365820592393377723561443721764030073546976801874298166903427690031858186486050853753882811946569946433649006084095"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_512:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "293"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_512:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/KGCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    new-instance v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/KGCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;

    invoke-direct {v1, p1}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 p1, 0x0

    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_o:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    return-void
.end method

.method private calculateMac([BII)V
    .locals 5

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    :goto_0
    const/4 v0, 0x0

    if-lez p3, :cond_1

    move v1, v0

    :goto_1
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    aget-byte v3, v2, v1

    add-int v4, v1, p2

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->multiplyOverField(I[B[B[B)V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->reverse([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    iget p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_o:I

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->intToBytes(I[BI)V

    iget p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->intToBytes(I[BI)V

    move p1, v0

    :goto_2
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    aget-byte p3, p2, p1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    aget-byte v1, v1, p1

    xor-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    invoke-interface {p1, p2, v0, p3, v0}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-void
.end method

.method private intToBytes(I[BI)V
    .locals 2

    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-void
.end method

.method private multiplyOverField(I[B[B[B)V
    .locals 8

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    invoke-static {p3, v3, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->reverse([B)[B

    move-result-object p2

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->reverse([B)[B

    move-result-object p3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    sget-object p1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_128:Ljava/math/BigInteger;

    sget-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_128:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_128:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_512:Ljava/math/BigInteger;

    sget-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_512:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_512:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_256:Ljava/math/BigInteger;

    sget-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_256:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_256:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_1_128:Ljava/math/BigInteger;

    sget-object v0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->MASK_2_128:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->POLYRED_128:Ljava/math/BigInteger;

    :goto_0
    sget-object v2, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ZERO:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v5, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    :goto_1
    sget-object p3, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_3
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    move-object v4, p3

    :cond_4
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-static {p4, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    array-length p2, p1

    invoke-static {p1, v3, p4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private processAAD([BII)V
    .locals 5

    mul-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_o:I

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_0
    if-lez p3, :cond_1

    move v0, v2

    :goto_1
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    aget-byte v3, v1, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->multiplyOverField(I[B[B[B)V

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->reverse([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v6

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    const/4 v7, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    invoke-direct {p0, v0, v7, v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAAD([BII)V

    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    add-int/2addr v1, v6

    if-lt v0, v1, :cond_1

    mul-int/lit8 v0, v6, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    move v3, v6

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    add-int v2, p2, v0

    invoke-virtual {v1, p1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v6}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->calculateMac([BII)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    sub-int v0, v6, v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    sub-int v1, v6, v1

    invoke-direct {p0, v0, v7, v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->calculateMac([BII)V

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    sub-int v3, v6, v3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    add-int v2, p2, v0

    invoke-virtual {v1, p1, v2}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    add-int v1, p2, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->forEncryption:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    invoke-static {v2, v7, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->reset()V

    iget v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    return v0

    :cond_3
    iget v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v2

    iget v3, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    invoke-static {v2, v0, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    new-array v3, v2, [B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    invoke-static {v4, v7, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v3}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->reset()V

    return v0

    :cond_4
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac verification failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mac is not calculated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/KGCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 4

    iget v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getOutputSize(I)I
    .locals 1

    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 0

    return p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->forEncryption:Z

    instance-of p1, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p2, Lorg/spongycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object p1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result p1

    const/16 v1, 0x40

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-gt p1, v1, :cond_0

    rem-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_0

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    if-eqz p2, :cond_2

    array-length v1, p2

    invoke-virtual {p0, p2, v0, v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAADBytes([BII)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for MAC size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    instance-of p1, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_3

    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    iget-object p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macSize:I

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->macBlock:[B

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->ctrEngine:Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->iv:[B

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2, v1, p1}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameter passed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p2, p1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public processBytes([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length p4, p1

    add-int p5, p2, p3

    if-lt p4, p5, :cond_0

    iget-object p4, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->H:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->b:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->temp:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_c:I

    iput v0, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->lambda_o:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->initialAssociatedText:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAADBytes([BII)V

    :cond_0
    return-void
.end method
