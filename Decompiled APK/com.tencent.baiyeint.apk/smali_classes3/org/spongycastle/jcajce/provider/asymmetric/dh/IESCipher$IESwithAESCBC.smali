.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IESwithAESCBC;
.super Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;
.source "IESCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IESwithAESCBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    new-instance v0, Lorg/spongycastle/crypto/engines/IESEngine;

    new-instance v1, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    new-instance v2, Lorg/spongycastle/crypto/generators/KDF2BytesGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/generators/KDF2BytesGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    new-instance v3, Lorg/spongycastle/crypto/macs/HMac;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    new-instance v4, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v5, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v6, Lorg/spongycastle/crypto/engines/AESEngine;

    invoke-direct {v6}, Lorg/spongycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/IESEngine;-><init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;-><init>(Lorg/spongycastle/crypto/engines/IESEngine;I)V

    return-void
.end method
