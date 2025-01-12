.class public Lio/jsonwebtoken/impl/crypto/EllipticCurveSigner;
.super Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;
.source "EllipticCurveSigner.java"

# interfaces
.implements Lio/jsonwebtoken/impl/crypto/Signer;


# direct methods
.method public constructor <init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    instance-of p1, p2, Ljava/security/PrivateKey;

    if-eqz p1, :cond_0

    instance-of p1, p2, Ljava/security/interfaces/ECKey;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Elliptic Curve signatures must be computed using an EC PrivateKey.  The specified key of type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not an EC PrivateKey."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method protected doSign([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Lio/jsonwebtoken/JwtException;
        }
    .end annotation

    iget-object v0, p0, Lio/jsonwebtoken/impl/crypto/EllipticCurveSigner;->key:Ljava/security/Key;

    check-cast v0, Ljava/security/PrivateKey;

    invoke-virtual {p0}, Lio/jsonwebtoken/impl/crypto/EllipticCurveSigner;->createSignatureInstance()Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    iget-object v0, p0, Lio/jsonwebtoken/impl/crypto/EllipticCurveSigner;->alg:Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-static {v0}, Lio/jsonwebtoken/impl/crypto/EllipticCurveSigner;->getSignatureByteArrayLength(Lio/jsonwebtoken/SignatureAlgorithm;)I

    move-result v0

    invoke-static {p1, v0}, Lio/jsonwebtoken/impl/crypto/EllipticCurveSigner;->transcodeSignatureToConcat([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([B)[B
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/crypto/EllipticCurveSigner;->doSign([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/jsonwebtoken/JwtException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lio/jsonwebtoken/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to convert signature to JOSE format. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/jsonwebtoken/JwtException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/jsonwebtoken/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lio/jsonwebtoken/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to calculate signature using Elliptic Curve PrivateKey. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/jsonwebtoken/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lio/jsonwebtoken/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Elliptic Curve PrivateKey. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/jsonwebtoken/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
