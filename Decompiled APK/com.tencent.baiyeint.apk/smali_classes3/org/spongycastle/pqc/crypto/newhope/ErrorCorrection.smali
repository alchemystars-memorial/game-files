.class Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LDDecode(IIII)S
    .locals 0

    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p0

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x18008

    sub-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x1f

    int-to-short p0, p0

    return p0
.end method

.method static abs(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr p0, v0

    sub-int/2addr p0, v0

    return p0
.end method

.method static f([IIII)I
    .locals 3

    mul-int/lit16 v0, p3, 0xaaa

    shr-int/lit8 v0, v0, 0x19

    mul-int/lit16 v1, v0, 0x3001

    sub-int v1, p3, v1

    rsub-int v1, v1, 0x3000

    shr-int/lit8 v1, v1, 0x1f

    sub-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v1

    aput v2, p0, p1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    aput v0, p0, p2

    aget p0, p0, p1

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit16 p0, p0, 0x3001

    sub-int/2addr p3, p0

    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result p0

    return p0
.end method

.method static g(I)I
    .locals 3

    mul-int/lit16 v0, p0, 0xaaa

    shr-int/lit8 v0, v0, 0x1b

    const v1, 0xc004

    mul-int/2addr v1, v0

    sub-int v1, p0, v1

    const v2, 0xc003

    sub-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1f

    sub-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    const v1, 0x18008

    mul-int/2addr v0, v1

    sub-int/2addr v0, p0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result p0

    return p0
.end method

.method static helpRec([S[S[BB)V
    .locals 18

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p3, v1, v2

    const/16 v3, 0x20

    new-array v4, v3, [B

    move-object/from16 v5, p2

    invoke-static {v5, v1, v4, v2, v3}, Lorg/spongycastle/pqc/crypto/newhope/ChaCha20;->process([B[B[BII)V

    new-array v1, v0, [I

    move v3, v2

    :goto_0
    const/16 v5, 0x100

    if-ge v3, v5, :cond_0

    ushr-int/lit8 v5, v3, 0x3

    aget-byte v5, v4, v5

    and-int/lit8 v6, v3, 0x7

    ushr-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/2addr v5, v6

    add-int/lit8 v7, v3, 0x0

    aget-short v8, p1, v7

    mul-int/2addr v8, v0

    const/4 v9, 0x4

    mul-int/2addr v5, v9

    add-int/2addr v8, v5

    invoke-static {v1, v2, v9, v8}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v8

    add-int/lit16 v10, v3, 0x100

    aget-short v11, p1, v10

    mul-int/2addr v11, v0

    add-int/2addr v11, v5

    const/4 v12, 0x5

    invoke-static {v1, v6, v12, v11}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v11

    add-int/2addr v8, v11

    add-int/lit16 v11, v3, 0x200

    aget-short v13, p1, v11

    mul-int/2addr v13, v0

    add-int/2addr v13, v5

    const/4 v14, 0x2

    const/4 v15, 0x6

    invoke-static {v1, v14, v15, v13}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v13

    add-int/2addr v8, v13

    add-int/lit16 v13, v3, 0x300

    aget-short v16, p1, v13

    mul-int/lit8 v16, v16, 0x8

    add-int v5, v16, v5

    const/4 v0, 0x3

    const/4 v15, 0x7

    invoke-static {v1, v0, v15, v5}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v5

    add-int/2addr v8, v5

    rsub-int v5, v8, 0x6001

    shr-int/lit8 v5, v5, 0x1f

    not-int v8, v5

    aget v17, v1, v2

    and-int v17, v8, v17

    aget v9, v1, v9

    and-int/2addr v9, v5

    xor-int v9, v17, v9

    aget v6, v1, v6

    and-int/2addr v6, v8

    aget v12, v1, v12

    and-int/2addr v12, v5

    xor-int/2addr v6, v12

    aget v12, v1, v14

    and-int/2addr v12, v8

    const/16 v17, 0x6

    aget v17, v1, v17

    and-int v17, v5, v17

    xor-int v12, v12, v17

    aget v17, v1, v0

    and-int v8, v8, v17

    aget v15, v1, v15

    and-int/2addr v15, v5

    xor-int/2addr v8, v15

    sub-int/2addr v9, v8

    and-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, p0, v7

    sub-int/2addr v6, v8

    and-int/2addr v6, v0

    int-to-short v6, v6

    aput-short v6, p0, v10

    sub-int/2addr v12, v8

    and-int/lit8 v6, v12, 0x3

    int-to-short v6, v6

    aput-short v6, p0, v11

    neg-int v5, v5

    mul-int/2addr v8, v14

    add-int/2addr v5, v8

    and-int/2addr v0, v5

    int-to-short v0, v0

    aput-short v0, p0, v13

    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method static rec([B[S[S)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x0

    aget-short v2, p1, v1

    mul-int/lit8 v2, v2, 0x8

    const v3, 0x30010

    add-int/2addr v2, v3

    aget-short v1, p2, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v4, v0, 0x300

    aget-short v5, p2, v4

    add-int/2addr v1, v5

    mul-int/lit16 v1, v1, 0x3001

    sub-int/2addr v2, v1

    add-int/lit16 v1, v0, 0x100

    aget-short v6, p1, v1

    mul-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v3

    aget-short v1, p2, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    mul-int/lit16 v1, v1, 0x3001

    sub-int/2addr v6, v1

    add-int/lit16 v1, v0, 0x200

    aget-short v7, p1, v1

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v3

    aget-short v1, p2, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    mul-int/lit16 v1, v1, 0x3001

    sub-int/2addr v7, v1

    aget-short v1, p1, v4

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    mul-int/lit16 v5, v5, 0x3001

    sub-int/2addr v1, v5

    ushr-int/lit8 v3, v0, 0x3

    aget-byte v4, p0, v3

    invoke-static {v2, v6, v7, v1}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->LDDecode(IIII)S

    move-result v1

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
