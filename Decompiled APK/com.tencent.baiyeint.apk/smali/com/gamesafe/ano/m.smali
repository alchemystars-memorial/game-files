.class public Lcom/gamesafe/ano/m;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/gamesafe/ano/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gamesafe/ano/m;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gamesafe/ano/m;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()Z
    .locals 2

    const-string v0, "123456"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "456"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 6

    :try_start_0
    const-string v0, "NCV1rdocMNV"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "123456"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "11"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "MNV"

    invoke-static {v2}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const-string v1, "367"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    const-string v1, "123098"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d()Z
    .locals 6

    :try_start_0
    const-string v0, "NCV1rdocMNV"

    invoke-static {v0}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "12345678"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "11"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "MNV"

    invoke-static {v2}, Lcom/gamesafe/ano/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const-string v1, "367"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    const-string v1, "123908"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->verify([BII)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
