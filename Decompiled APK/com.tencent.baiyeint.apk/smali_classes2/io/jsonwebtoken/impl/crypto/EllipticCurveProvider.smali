.class public abstract Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;
.super Lio/jsonwebtoken/impl/crypto/SignatureProvider;
.source "EllipticCurveProvider.java"


# static fields
.field private static final EC_CURVE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/jsonwebtoken/SignatureAlgorithm;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->createEcCurveNames()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->EC_CURVE_NAMES:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/jsonwebtoken/impl/crypto/SignatureProvider;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    invoke-virtual {p1}, Lio/jsonwebtoken/SignatureAlgorithm;->isEllipticCurve()Z

    move-result p1

    const-string p2, "SignatureAlgorithm must be an Elliptic Curve algorithm."

    invoke-static {p1, p2}, Lio/jsonwebtoken/lang/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method

.method private static createEcCurveNames()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/jsonwebtoken/SignatureAlgorithm;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->ES256:Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v2, "secp256r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->ES384:Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v2, "secp384r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->ES512:Lio/jsonwebtoken/SignatureAlgorithm;

    const-string v2, "secp521r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static generateKeyPair()Ljava/security/KeyPair;
    .locals 1

    sget-object v0, Lio/jsonwebtoken/SignatureAlgorithm;->ES512:Lio/jsonwebtoken/SignatureAlgorithm;

    invoke-static {v0}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->generateKeyPair(Lio/jsonwebtoken/SignatureAlgorithm;)Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static generateKeyPair(Lio/jsonwebtoken/SignatureAlgorithm;)Ljava/security/KeyPair;
    .locals 1

    sget-object v0, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->DEFAULT_SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-static {p0, v0}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->generateKeyPair(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/SecureRandom;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static generateKeyPair(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/SecureRandom;)Ljava/security/KeyPair;
    .locals 2

    const-string v0, "EC"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/SecureRandom;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static generateKeyPair(Ljava/lang/String;Ljava/lang/String;Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/SecureRandom;)Ljava/security/KeyPair;
    .locals 2

    const-string v0, "SignatureAlgorithm argument cannot be null."

    invoke-static {p2, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/jsonwebtoken/SignatureAlgorithm;->isEllipticCurve()Z

    move-result v0

    const-string v1, "SignatureAlgorithm argument must represent an Elliptic Curve algorithm."

    invoke-static {v0, v1}, Lio/jsonwebtoken/lang/Assert;->isTrue(ZLjava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lio/jsonwebtoken/lang/Strings;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    :goto_0
    sget-object p1, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider;->EC_CURVE_NAMES:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p2, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {p2, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to generate Elliptic Curve KeyPair: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getSignatureByteArrayLength(Lio/jsonwebtoken/SignatureAlgorithm;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/JwtException;
        }
    .end annotation

    sget-object v0, Lio/jsonwebtoken/impl/crypto/EllipticCurveProvider$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 p0, 0x84

    return p0

    :cond_0
    new-instance v0, Lio/jsonwebtoken/JwtException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/jsonwebtoken/JwtException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x60

    return p0

    :cond_2
    const/16 p0, 0x40

    return p0
.end method

.method public static transcodeSignatureToConcat([BI)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/JwtException;
        }
    .end annotation

    array-length v0, p0

    const-string v1, "Invalid ECDSA signature format"

    const/16 v2, 0x8

    if-lt v0, v2, :cond_5

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/4 v2, 0x2

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v3, -0x7f

    if-ne v0, v3, :cond_4

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    move v4, v3

    :goto_1
    if-lez v4, :cond_1

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v3

    sub-int/2addr v5, v4

    aget-byte v5, p0, v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    move v7, v6

    :goto_2
    if-lez v7, :cond_2

    add-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v6

    sub-int/2addr v8, v7

    aget-byte v8, p0, v8

    if-nez v8, :cond_2

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/2addr p1, v2

    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v8, v0, -0x1

    aget-byte v8, p0, v8

    and-int/lit16 v9, v8, 0xff

    array-length v10, p0

    sub-int/2addr v10, v0

    if-ne v9, v10, :cond_3

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v2

    add-int/2addr v3, v2

    add-int/2addr v3, v6

    if-ne v8, v3, :cond_3

    aget-byte v0, p0, v0

    if-ne v0, v2, :cond_3

    aget-byte v0, p0, v5

    if-ne v0, v2, :cond_3

    mul-int/lit8 v0, p1, 0x2

    new-array v1, v0, [B

    sub-int v3, v5, v4

    sub-int/2addr p1, v4

    invoke-static {p0, v3, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v2

    add-int/2addr v5, v6

    sub-int/2addr v5, v7

    sub-int/2addr v0, v7

    invoke-static {p0, v5, v1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_3
    new-instance p0, Lio/jsonwebtoken/JwtException;

    invoke-direct {p0, v1}, Lio/jsonwebtoken/JwtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lio/jsonwebtoken/JwtException;

    invoke-direct {p0, v1}, Lio/jsonwebtoken/JwtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lio/jsonwebtoken/JwtException;

    invoke-direct {p0, v1}, Lio/jsonwebtoken/JwtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static transcodeSignatureToDER([B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/jsonwebtoken/JwtException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    sub-int v3, v0, v2

    aget-byte v3, p0, v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    sub-int v3, v0, v2

    aget-byte v4, p0, v3

    if-gez v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    move v5, v0

    :goto_2
    if-lez v5, :cond_2

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v6, v5

    aget-byte v6, p0, v6

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_2
    mul-int/2addr v0, v1

    sub-int/2addr v0, v5

    aget-byte v6, p0, v0

    if-gez v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    add-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v1

    add-int/2addr v7, v6

    const/16 v8, 0xff

    if-gt v7, v8, :cond_5

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-ge v7, v8, :cond_4

    add-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v1

    add-int/2addr v8, v6

    new-array v8, v8, [B

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v4, 0x5

    add-int/2addr v8, v1

    add-int/2addr v8, v6

    new-array v8, v8, [B

    const/16 v10, -0x7f

    aput-byte v10, v8, v9

    move v9, v1

    :goto_4
    const/4 v10, 0x0

    const/16 v11, 0x30

    aput-byte v11, v8, v10

    add-int/lit8 v10, v9, 0x1

    int-to-byte v7, v7

    aput-byte v7, v8, v9

    add-int/lit8 v7, v10, 0x1

    aput-byte v1, v8, v10

    add-int/lit8 v9, v7, 0x1

    int-to-byte v10, v4

    aput-byte v10, v8, v7

    add-int/2addr v9, v4

    sub-int v4, v9, v2

    invoke-static {p0, v3, v8, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v9, 0x1

    aput-byte v1, v8, v9

    add-int/lit8 v1, v2, 0x1

    int-to-byte v3, v6

    aput-byte v3, v8, v2

    add-int/2addr v1, v6

    sub-int/2addr v1, v5

    invoke-static {p0, v0, v8, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v8

    :cond_5
    new-instance p0, Lio/jsonwebtoken/JwtException;

    const-string v0, "Invalid ECDSA signature format"

    invoke-direct {p0, v0}, Lio/jsonwebtoken/JwtException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
