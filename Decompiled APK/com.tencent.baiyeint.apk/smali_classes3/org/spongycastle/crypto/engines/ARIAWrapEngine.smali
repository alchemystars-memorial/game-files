.class public Lorg/spongycastle/crypto/engines/ARIAWrapEngine;
.super Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;
.source "ARIAWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/engines/ARIAEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Lorg/spongycastle/crypto/engines/ARIAEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/spongycastle/crypto/BlockCipher;Z)V

    return-void
.end method
