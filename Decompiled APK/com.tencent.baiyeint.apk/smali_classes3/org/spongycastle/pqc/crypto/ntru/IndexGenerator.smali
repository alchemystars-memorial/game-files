.class public Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;
.super Ljava/lang/Object;
.source "IndexGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;
    }
.end annotation


# instance fields
.field private N:I

.field private buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

.field private c:I

.field private counter:I

.field private hLen:I

.field private hashAlg:Lorg/spongycastle/crypto/Digest;

.field private initialized:Z

.field private minCallsR:I

.field private remLen:I

.field private seed:[B

.field private totLen:I


# direct methods
.method constructor <init>([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->seed:[B

    iget p1, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->N:I

    iget p1, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->c:I

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    iget p1, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->minCallsR:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    iget-object p2, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    iput p2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    return-void
.end method

.method static synthetic access$000([BI)[B
    .locals 0

    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private appendHash(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->seed:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->putInt(Lorg/spongycastle/crypto/Digest;I)V

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p2, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    invoke-virtual {p1, p2}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    return-void
.end method

.method private static copyOf([BI)[B
    .locals 2

    new-array v0, p1, [B

    array-length v1, p0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private putInt(Lorg/spongycastle/crypto/Digest;I)V
    .locals 1

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    int-to-byte p2, p2

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void
.end method


# virtual methods
.method nextIndex()I
    .locals 7

    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->minCallsR:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->appendHash(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v3, 0x8

    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/2addr v3, v0

    iput v3, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    iput v3, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->getTrailing(I)Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    move-result-object v0

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    if-ge v2, v3, :cond_4

    sub-int/2addr v3, v2

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    add-int v5, v3, v4

    sub-int/2addr v5, v1

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    :cond_2
    :goto_1
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    if-ge v5, v2, :cond_3

    invoke-direct {p0, v0, v4}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->appendHash(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V

    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v6, v5, 0x8

    if-le v3, v6, :cond_2

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_3
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    new-instance v2, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    :goto_2
    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->getLeadingAsInt(I)I

    move-result v0

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    shl-int v3, v1, v2

    shl-int v2, v1, v2

    iget v4, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->N:I

    rem-int/2addr v2, v4

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    rem-int/2addr v0, v4

    return v0
.end method
