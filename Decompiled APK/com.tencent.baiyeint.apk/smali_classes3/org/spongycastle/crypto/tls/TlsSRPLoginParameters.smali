.class public Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;
.super Ljava/lang/Object;
.source "TlsSRPLoginParameters.java"


# instance fields
.field protected group:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

.field protected salt:[B

.field protected verifier:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->group:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->verifier:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->salt:[B

    return-void
.end method


# virtual methods
.method public getGroup()Lorg/spongycastle/crypto/params/SRP6GroupParameters;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->group:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->salt:[B

    return-object v0
.end method

.method public getVerifier()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->verifier:Ljava/math/BigInteger;

    return-object v0
.end method
