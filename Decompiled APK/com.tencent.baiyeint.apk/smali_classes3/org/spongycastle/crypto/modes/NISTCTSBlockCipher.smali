.class public Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "NISTCTSBlockCipher.java"


# static fields
.field public static final CS1:I = 0x1

.field public static final CS2:I = 0x2

.field public static final CS3:I = 0x3


# instance fields
.field private final blockSize:I

.field private final type:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/crypto/BlockCipher;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    iput p1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    new-instance p1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_e

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v0

    new-array v2, v0, [B

    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->forEncryption:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_4

    iget v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-le v3, v0, :cond_3

    new-array v3, v0, [B

    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-eq v7, v5, :cond_1

    if-ne v7, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4, v2, v6, v2, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v4, v1

    invoke-static {v2, v4, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2, v3, v6, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr p2, v1

    invoke-static {v3, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v4, v7, v6, v2, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4, v3, v6, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v4, v5, :cond_2

    if-ne v1, v0, :cond_2

    invoke-static {v2, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    invoke-static {v3, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    :cond_2
    invoke-static {v3, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    invoke-static {v2, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    :cond_3
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v1, v3, v6, v2, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    :cond_4
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "need at least one block of input for NISTCTS"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_d

    new-array v3, v0, [B

    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-le v7, v0, :cond_c

    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-eq v7, v4, :cond_9

    if-ne v7, v5, :cond_6

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v4, v5

    rem-int/2addr v4, v0

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v4, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v7, v0

    invoke-interface {v4, v5, v7, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v1, v0, :cond_7

    sub-int v4, v0, v1

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4, v2, v6, v2, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v6

    :goto_1
    if-eq v2, v1, :cond_8

    aget-byte v4, v3, v2

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    aget-byte v5, v5, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    add-int/2addr p2, v0

    invoke-static {v3, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_9
    :goto_2
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v4, v4, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v4, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, v2, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, v2, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_3
    move v4, v0

    :goto_4
    iget v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-eq v4, v5, :cond_b

    sub-int v5, v4, v0

    aget-byte v7, v2, v5

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    aget-byte v8, v8, v4

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4, v2, v6, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr p2, v0

    invoke-static {v3, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v1, v3, v6, v2, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    iget p1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->reset()V

    return p1

    :cond_d
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "need at least one block of input for CTS"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer to small in doFinal"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    iget v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1
.end method

.method public processByte(B[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p2

    iget-object p3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    iput p3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    move v2, p2

    :cond_0
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget p3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    aput-byte p1, p2, p3

    return v2
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_4

    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le p3, v1, :cond_3

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v2, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_1
    if-le p3, v0, :cond_2

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    add-int v5, p5, v3

    invoke-interface {v1, v4, v2, p4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v1, v0, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    iget-object p4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget p5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    return v2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
