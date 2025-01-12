.class public Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsSRPKeyExchange.java"


# instance fields
.field protected groupVerifier:Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;

.field protected identity:[B

.field protected password:[B

.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

.field protected serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

.field protected srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

.field protected srpPeerCredentials:Ljava/math/BigInteger;

.field protected srpSalt:[B

.field protected srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

.field protected srpVerifier:Ljava/math/BigInteger;

.field protected tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->createSigner(I)Lorg/spongycastle/crypto/tls/TlsSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->groupVerifier:Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;

    iput-object p4, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    iput-object p5, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->password:[B

    new-instance p1, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    invoke-direct {p1}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;[BLorg/spongycastle/crypto/tls/TlsSRPLoginParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->createSigner(I)Lorg/spongycastle/crypto/tls/TlsSigner;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    new-instance p1, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    invoke-direct {p1}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    invoke-virtual {p4}, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->getGroup()Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {p4}, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->getVerifier()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    invoke-virtual {p4}, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->getSalt()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;[B[B)V
    .locals 6

    new-instance v3, Lorg/spongycastle/crypto/tls/DefaultTlsSRPGroupVerifier;

    invoke-direct {v3}, Lorg/spongycastle/crypto/tls/DefaultTlsSRPGroupVerifier;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V

    return-void
.end method

.method protected static createSigner(I)Lorg/spongycastle/crypto/tls/TlsSigner;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported key exchange algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    return-object p0

    :pswitch_2
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->password:[B

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->generateClientCredentials([B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->writeSRPParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2f

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method public generateServerKeyExchange()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v4}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->init(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->generateServerCredentials()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/crypto/tls/ServerSRPParams;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/spongycastle/crypto/tls/ServerSRPParams;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;)V

    new-instance v0, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->encode(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsSignerCredentials;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    iget-object v4, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-interface {v2, v4, v6, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v4, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v3, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v3, v3

    invoke-interface {v2, v4, v6, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v2, v3, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v3, v1, v2}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    :cond_0
    return-void
.end method

.method protected initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object p1

    iget-object p2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v0, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    iget-object p2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object p3, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length p3, p3

    invoke-interface {p1, p2, v1, p3}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    return-object p1
.end method

.method public processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->readSRPParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0
.end method

.method public processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    return-void

    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2e

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2b

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->keyExchange:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    check-cast p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    return-void

    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v1}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    new-instance v2, Lorg/spongycastle/util/io/TeeInputStream;

    invoke-direct {v2, p1, v1}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, p1

    :goto_0
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerSRPParams;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->parseSignature(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object p1

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v0}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/spongycastle/crypto/Signer;)V

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    :goto_1
    new-instance p1, Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->groupVerifier:Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;->accept(Lorg/spongycastle/crypto/params/SRP6GroupParameters;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->getS()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    :try_start_0
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->getB()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->init(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x47

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
