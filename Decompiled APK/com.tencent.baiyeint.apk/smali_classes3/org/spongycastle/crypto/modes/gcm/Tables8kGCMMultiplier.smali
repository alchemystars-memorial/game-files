.class public Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private M:[[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 8

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asInts([B[I)V

    const/4 p1, 0x4

    move v0, p1

    :goto_1
    if-lt v0, v1, :cond_2

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v1

    add-int v4, v0, v0

    aget-object v4, v3, v4

    aget-object v3, v3, v0

    invoke-static {v4, v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v3, v0, v1

    aget-object v3, v3, v1

    const/4 v4, 0x0

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    :goto_2
    if-lt p1, v1, :cond_3

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v4

    add-int v3, p1, p1

    aget-object v3, v0, v3

    aget-object v0, v0, p1

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    shr-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x2

    :goto_3
    const/16 v0, 0x10

    if-ge p1, v0, :cond_5

    move v0, v1

    :goto_4
    if-ge v0, p1, :cond_4

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v4

    aget-object v5, v3, p1

    aget-object v6, v3, v0

    add-int v7, p1, v0

    aget-object v3, v3, v7

    invoke-static {v5, v6, v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([I[I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/2addr p1, p1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/16 p1, 0x20

    if-ne v4, p1, :cond_6

    return-void

    :cond_6
    if-le v4, v1, :cond_3

    move p1, v2

    :goto_5
    if-lez p1, :cond_3

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int/lit8 v3, v4, -0x2

    aget-object v3, v0, v3

    aget-object v3, v3, p1

    aget-object v0, v0, v4

    aget-object v0, v0, p1

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I[I)V

    shr-int/lit8 p1, p1, 0x1

    goto :goto_5

    :array_0
    .array-data 4
        0x20
        0x10
        0x4
    .end array-data
.end method

.method public multiplyH([B)V
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/16 v3, 0xf

    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_0

    move-object/from16 v5, p0

    iget-object v6, v5, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v7, v3, v3

    aget-object v8, v6, v7

    aget-byte v9, v0, v3

    and-int/lit8 v10, v9, 0xf

    aget-object v8, v8, v10

    aget v10, v2, v4

    aget v11, v8, v4

    xor-int/2addr v10, v11

    aput v10, v2, v4

    const/4 v11, 0x1

    aget v12, v2, v11

    aget v13, v8, v11

    xor-int/2addr v12, v13

    aput v12, v2, v11

    const/4 v13, 0x2

    aget v14, v2, v13

    aget v15, v8, v13

    xor-int/2addr v14, v15

    aput v14, v2, v13

    const/4 v15, 0x3

    aget v16, v2, v15

    aget v8, v8, v15

    xor-int v8, v16, v8

    aput v8, v2, v15

    add-int/2addr v7, v11

    aget-object v6, v6, v7

    and-int/lit16 v7, v9, 0xf0

    ushr-int/2addr v7, v1

    aget-object v6, v6, v7

    aget v7, v6, v4

    xor-int/2addr v7, v10

    aput v7, v2, v4

    aget v4, v6, v11

    xor-int/2addr v4, v12

    aput v4, v2, v11

    aget v4, v6, v13

    xor-int/2addr v4, v14

    aput v4, v2, v13

    aget v4, v6, v15

    xor-int/2addr v4, v8

    aput v4, v2, v15

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p0

    invoke-static {v2, v0, v4}, Lorg/spongycastle/util/Pack;->intToBigEndian([I[BI)V

    return-void
.end method
