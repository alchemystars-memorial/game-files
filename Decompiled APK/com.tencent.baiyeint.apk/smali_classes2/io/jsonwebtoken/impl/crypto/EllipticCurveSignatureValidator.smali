.class public Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;
.super Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;
.source "EllipticCurveSignatureValidator.java"

# interfaces
.implements Lio/jsonwebtoken/impl/crypto/SignatureValidator;


# static fields
.field private static final EC_PUBLIC_KEY_REQD_MSG:Ljava/lang/String; = "Elliptic Curve signature validation requires an ECPublicKey instance."


# direct methods
.method public constructor <init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    instance-of p1, p2, Ljava/security/interfaces/ECPublicKey;

    const-string p2, "Elliptic Curve signature validation requires an ECPublicKey instance."

    invoke-static {p1, p2}, Lio/jsonwebtoken/lang/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doVerify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1, p3}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1, p4}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method public isValid([B[B)Z
    .locals 4

    invoke-virtual {p0}, Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;->createSignatureInstance()Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;->key:Ljava/security/Key;

    check-cast v1, Ljava/security/PublicKey;

    :try_start_0
    iget-object v2, p0, Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;->alg:Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-static {v2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;->getSignatureByteArrayLength(Lio/jsonwebtoken/SignatureAlgorithm;)I

    move-result v2

    array-length v3, p2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    aget-byte v2, p2, v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->transcodeSignatureToDER([B)[B

    move-result-object p2

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;->doVerify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to verify Elliptic Curve signature using configured ECPublicKey. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/jsonwebtoken/security/SignatureException;

    invoke-direct {v0, p2, p1}, Lio/jsonwebtoken/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
