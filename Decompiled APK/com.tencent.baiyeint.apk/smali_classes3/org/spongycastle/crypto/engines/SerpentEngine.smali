.class public final Lorg/spongycastle/crypto/engines/SerpentEngine;
.super Lorg/spongycastle/crypto/engines/SerpentEngineBase;
.source "SerpentEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected decryptBlock([BI[BI)V
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    const/16 v1, 0xc

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    xor-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x7c

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x7d

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x7e

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x7f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x78

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x79

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x7a

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x7b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x74

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x75

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x76

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x77

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x70

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x71

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x72

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x73

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x6c

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x6d

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x6e

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x6f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x68

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x69

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x6a

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x6b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x64

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x65

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x66

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x67

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x60

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x61

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x62

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x63

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x5c

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x5d

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x5e

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x5f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x58

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x59

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x5a

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x5b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x54

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x55

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x56

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x57

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x50

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x51

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x52

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x53

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x4c

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x4d

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x4e

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x4f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x48

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x49

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x4a

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x4b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x44

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x45

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x46

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x47

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x40

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x41

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x42

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x43

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x3c

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x3d

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x3e

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x3f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x38

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x39

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x3a

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x3b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x34

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x35

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x36

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x37

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x30

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x31

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x32

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x33

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x2c

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x2d

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x2e

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x2f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x28

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x29

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x2a

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x2b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x24

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x25

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x26

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x27

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x20

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x21

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x22

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x23

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib7(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x1c

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x1d

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x1e

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x1f

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib6(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x18

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x19

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x1a

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x1b

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib5(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x14

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x15

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x16

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x17

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib4(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x10

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x11

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x12

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x13

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib3(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget p2, p2, v1

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0xd

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0xe

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0xf

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib2(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x8

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0x9

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0xa

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v0, 0xb

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib1(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x4

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x5

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x6

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x7

    aget p2, p2, v0

    xor-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->inverseLT()V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ib0(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    xor-int/2addr p1, p2

    invoke-static {p1, p3, p4}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x1

    aget p2, p2, v0

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-static {p1, p3, p2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x2

    aget p2, p2, v0

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x8

    invoke-static {p1, p3, p2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v0, 0x3

    aget p2, p2, v0

    xor-int/2addr p1, p2

    add-int/2addr p4, v1

    invoke-static {p1, p3, p4}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method protected encryptBlock([BI[BI)V
    .locals 4

    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    const/16 v0, 0xc

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x1

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 p2, 0x4

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v1, 0x5

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x8

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x9

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    aget p1, p1, v0

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0xd

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0xf

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x10

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x11

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x13

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x14

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x15

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x16

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x17

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x18

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x19

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1a

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1b

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x1c

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x1d

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x1e

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x1f

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x20

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x21

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x22

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x23

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x24

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x25

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x26

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x27

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x28

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x29

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2a

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2b

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x2c

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x2d

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x2e

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x2f

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x30

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x31

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x32

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x33

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x34

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x35

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x36

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x37

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x38

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x39

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3a

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3b

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x3c

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x3d

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x3e

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x3f

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x40

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x41

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x42

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x43

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x44

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x45

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x46

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x47

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x48

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x49

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4a

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4b

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x4c

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x4d

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x4e

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x4f

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x50

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x51

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x52

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x53

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x54

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x55

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x56

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x57

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x58

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x59

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5a

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5b

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x5c

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x5d

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x5e

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x5f

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x60

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x61

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x62

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x63

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x64

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x65

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x66

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x67

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x68

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x69

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6a

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6b

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x6c

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x6d

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x6f

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x70

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x71

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x73

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x74

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x75

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x77

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x78

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x79

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7a

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7b

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->LT()V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x7c

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v1, 0x7d

    aget p2, p2, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p2, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v2, 0x7e

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 v3, 0x7f

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr v2, v3

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x80

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    xor-int/2addr p1, p2

    invoke-static {p1, p3, p4}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x81

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-static {p1, p3, p2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x82

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x8

    invoke-static {p1, p3, p2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->wKey:[I

    const/16 p2, 0x83

    aget p1, p1, p2

    iget p2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    xor-int/2addr p1, p2

    add-int/2addr p4, v0

    invoke-static {p1, p3, p4}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method protected makeWorkingKey([B)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    add-int/lit8 v5, v3, 0x4

    array-length v6, p1

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    invoke-static {p1, v3}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v1, v4

    move v3, v5

    move v4, v6

    goto :goto_0

    :cond_0
    rem-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_4

    add-int/lit8 v5, v4, 0x1

    invoke-static {p1, v3}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    aput p1, v1, v4

    const/16 p1, 0x8

    const/4 v3, 0x1

    if-ge v5, p1, :cond_1

    aput v3, v1, v5

    :cond_1
    const/16 v4, 0x84

    new-array v5, v4, [I

    move v6, p1

    :goto_1
    const v7, -0x61c88647

    const/16 v8, 0xb

    if-ge v6, v0, :cond_2

    add-int/lit8 v9, v6, -0x8

    aget v10, v1, v9

    add-int/lit8 v11, v6, -0x5

    aget v11, v1, v11

    xor-int/2addr v10, v11

    add-int/lit8 v11, v6, -0x3

    aget v11, v1, v11

    xor-int/2addr v10, v11

    add-int/lit8 v11, v6, -0x1

    aget v11, v1, v11

    xor-int/2addr v10, v11

    xor-int/2addr v7, v10

    xor-int/2addr v7, v9

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v7

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1, p1, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, p1

    :goto_2
    if-ge v1, v4, :cond_3

    add-int/lit8 v6, v1, -0x8

    aget v6, v5, v6

    add-int/lit8 v9, v1, -0x5

    aget v9, v5, v9

    xor-int/2addr v6, v9

    add-int/lit8 v9, v1, -0x3

    aget v9, v5, v9

    xor-int/2addr v6, v9

    add-int/lit8 v9, v1, -0x1

    aget v9, v5, v9

    xor-int/2addr v6, v9

    xor-int/2addr v6, v7

    xor-int/2addr v6, v1

    invoke-static {v6, v8}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    aget v1, v5, v2

    aget v4, v5, v3

    const/4 v6, 0x2

    aget v7, v5, v6

    const/4 v9, 0x3

    aget v10, v5, v9

    invoke-virtual {p0, v1, v4, v7, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v5, v2

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v5, v3

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v5, v6

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v5, v9

    const/4 v1, 0x4

    aget v2, v5, v1

    const/4 v3, 0x5

    aget v4, v5, v3

    const/4 v6, 0x6

    aget v7, v5, v6

    const/4 v9, 0x7

    aget v10, v5, v9

    invoke-virtual {p0, v2, v4, v7, v10}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v2, v5, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v1, v5, v3

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v1, v5, v6

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v1, v5, v9

    aget v1, v5, p1

    const/16 v2, 0x9

    aget v3, v5, v2

    const/16 v4, 0xa

    aget v6, v5, v4

    aget v7, v5, v8

    invoke-virtual {p0, v1, v3, v6, v7}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v5, p1

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput p1, v5, v2

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput p1, v5, v4

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput p1, v5, v8

    const/16 p1, 0xc

    aget v1, v5, p1

    const/16 v2, 0xd

    aget v3, v5, v2

    const/16 v4, 0xe

    aget v6, v5, v4

    const/16 v7, 0xf

    aget v8, v5, v7

    invoke-virtual {p0, v1, v3, v6, v8}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v1, v5, p1

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput p1, v5, v2

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput p1, v5, v4

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput p1, v5, v7

    aget p1, v5, v0

    const/16 v1, 0x11

    aget v2, v5, v1

    const/16 v3, 0x12

    aget v4, v5, v3

    const/16 v6, 0x13

    aget v7, v5, v6

    invoke-virtual {p0, p1, v2, v4, v7}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput p1, v5, v0

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput p1, v5, v1

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput p1, v5, v3

    iget p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput p1, v5, v6

    const/16 p1, 0x14

    aget v0, v5, p1

    const/16 v1, 0x15

    aget v1, v5, v1

    const/16 v2, 0x16

    aget v2, v5, v2

    const/16 v3, 0x17

    aget v3, v5, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x15

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x16

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x17

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x18

    aget p1, v5, p1

    const/16 v0, 0x19

    aget v0, v5, v0

    const/16 v1, 0x1a

    aget v1, v5, v1

    const/16 v2, 0x1b

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 p1, 0x18

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x19

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x1a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x1b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x1c

    aget p1, v5, p1

    const/16 v0, 0x1d

    aget v0, v5, v0

    const/16 v1, 0x1e

    aget v1, v5, v1

    const/16 v2, 0x1f

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 p1, 0x1c

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x1d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x1e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x1f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x20

    aget p1, v5, p1

    const/16 v0, 0x21

    aget v0, v5, v0

    const/16 v1, 0x22

    aget v1, v5, v1

    const/16 v2, 0x23

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 p1, 0x20

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x21

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x22

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x23

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x24

    aget p1, v5, p1

    const/16 v0, 0x25

    aget v0, v5, v0

    const/16 v1, 0x26

    aget v1, v5, v1

    const/16 v2, 0x27

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 p1, 0x24

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x25

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x26

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x27

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x28

    aget p1, v5, p1

    const/16 v0, 0x29

    aget v0, v5, v0

    const/16 v1, 0x2a

    aget v1, v5, v1

    const/16 v2, 0x2b

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 p1, 0x28

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x29

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x2a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x2b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x2c

    aget p1, v5, p1

    const/16 v0, 0x2d

    aget v0, v5, v0

    const/16 v1, 0x2e

    aget v1, v5, v1

    const/16 v2, 0x2f

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 p1, 0x2c

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x2d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x2e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x2f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x30

    aget p1, v5, p1

    const/16 v0, 0x31

    aget v0, v5, v0

    const/16 v1, 0x32

    aget v1, v5, v1

    const/16 v2, 0x33

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 p1, 0x30

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x31

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x32

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x33

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x34

    aget p1, v5, p1

    const/16 v0, 0x35

    aget v0, v5, v0

    const/16 v1, 0x36

    aget v1, v5, v1

    const/16 v2, 0x37

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 p1, 0x34

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x35

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x36

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x37

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x38

    aget p1, v5, p1

    const/16 v0, 0x39

    aget v0, v5, v0

    const/16 v1, 0x3a

    aget v1, v5, v1

    const/16 v2, 0x3b

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 p1, 0x38

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x39

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x3a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x3b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x3c

    aget p1, v5, p1

    const/16 v0, 0x3d

    aget v0, v5, v0

    const/16 v1, 0x3e

    aget v1, v5, v1

    const/16 v2, 0x3f

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 p1, 0x3c

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x3d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x3e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x3f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x40

    aget p1, v5, p1

    const/16 v0, 0x41

    aget v0, v5, v0

    const/16 v1, 0x42

    aget v1, v5, v1

    const/16 v2, 0x43

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 p1, 0x40

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x41

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x42

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x43

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x44

    aget p1, v5, p1

    const/16 v0, 0x45

    aget v0, v5, v0

    const/16 v1, 0x46

    aget v1, v5, v1

    const/16 v2, 0x47

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 p1, 0x44

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x45

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x46

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x47

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x48

    aget p1, v5, p1

    const/16 v0, 0x49

    aget v0, v5, v0

    const/16 v1, 0x4a

    aget v1, v5, v1

    const/16 v2, 0x4b

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 p1, 0x48

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x49

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x4a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x4b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x4c

    aget p1, v5, p1

    const/16 v0, 0x4d

    aget v0, v5, v0

    const/16 v1, 0x4e

    aget v1, v5, v1

    const/16 v2, 0x4f

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 p1, 0x4c

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x4d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x4e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x4f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x50

    aget p1, v5, p1

    const/16 v0, 0x51

    aget v0, v5, v0

    const/16 v1, 0x52

    aget v1, v5, v1

    const/16 v2, 0x53

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 p1, 0x50

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x51

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x52

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x53

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x54

    aget p1, v5, p1

    const/16 v0, 0x55

    aget v0, v5, v0

    const/16 v1, 0x56

    aget v1, v5, v1

    const/16 v2, 0x57

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 p1, 0x54

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x55

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x56

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x57

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x58

    aget p1, v5, p1

    const/16 v0, 0x59

    aget v0, v5, v0

    const/16 v1, 0x5a

    aget v1, v5, v1

    const/16 v2, 0x5b

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 p1, 0x58

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x59

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x5a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x5b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x5c

    aget p1, v5, p1

    const/16 v0, 0x5d

    aget v0, v5, v0

    const/16 v1, 0x5e

    aget v1, v5, v1

    const/16 v2, 0x5f

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 p1, 0x5c

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x5d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x5e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x5f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x60

    aget p1, v5, p1

    const/16 v0, 0x61

    aget v0, v5, v0

    const/16 v1, 0x62

    aget v1, v5, v1

    const/16 v2, 0x63

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 p1, 0x60

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x61

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x62

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x63

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x64

    aget p1, v5, p1

    const/16 v0, 0x65

    aget v0, v5, v0

    const/16 v1, 0x66

    aget v1, v5, v1

    const/16 v2, 0x67

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb2(IIII)V

    const/16 p1, 0x64

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x65

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x66

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x67

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x68

    aget p1, v5, p1

    const/16 v0, 0x69

    aget v0, v5, v0

    const/16 v1, 0x6a

    aget v1, v5, v1

    const/16 v2, 0x6b

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb1(IIII)V

    const/16 p1, 0x68

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x69

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x6a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x6b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x6c

    aget p1, v5, p1

    const/16 v0, 0x6d

    aget v0, v5, v0

    const/16 v1, 0x6e

    aget v1, v5, v1

    const/16 v2, 0x6f

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb0(IIII)V

    const/16 p1, 0x6c

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x6d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x6e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x6f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x70

    aget p1, v5, p1

    const/16 v0, 0x71

    aget v0, v5, v0

    const/16 v1, 0x72

    aget v1, v5, v1

    const/16 v2, 0x73

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb7(IIII)V

    const/16 p1, 0x70

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x71

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x72

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x73

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x74

    aget p1, v5, p1

    const/16 v0, 0x75

    aget v0, v5, v0

    const/16 v1, 0x76

    aget v1, v5, v1

    const/16 v2, 0x77

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb6(IIII)V

    const/16 p1, 0x74

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x75

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x76

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x77

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x78

    aget p1, v5, p1

    const/16 v0, 0x79

    aget v0, v5, v0

    const/16 v1, 0x7a

    aget v1, v5, v1

    const/16 v2, 0x7b

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb5(IIII)V

    const/16 p1, 0x78

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x79

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x7a

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x7b

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x7c

    aget p1, v5, p1

    const/16 v0, 0x7d

    aget v0, v5, v0

    const/16 v1, 0x7e

    aget v1, v5, v1

    const/16 v2, 0x7f

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb4(IIII)V

    const/16 p1, 0x7c

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x7d

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x7e

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x7f

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    const/16 p1, 0x80

    aget p1, v5, p1

    const/16 v0, 0x81

    aget v0, v5, v0

    const/16 v1, 0x82

    aget v1, v5, v1

    const/16 v2, 0x83

    aget v2, v5, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->sb3(IIII)V

    const/16 p1, 0x80

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X0:I

    aput v0, v5, p1

    const/16 p1, 0x81

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X1:I

    aput v0, v5, p1

    const/16 p1, 0x82

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X2:I

    aput v0, v5, p1

    const/16 p1, 0x83

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->X3:I

    aput v0, v5, p1

    return-object v5

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key must be a multiple of 4 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
