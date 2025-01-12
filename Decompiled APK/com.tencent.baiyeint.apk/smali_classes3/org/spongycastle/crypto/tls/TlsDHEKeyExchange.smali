.class public Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;
.super Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;
.source "TlsDHEKeyExchange.java"


# instance fields
.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-static {v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsSignerCredentials;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

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

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v3, v1, v2}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

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

.method public processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    check-cast p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

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

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v1}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    new-instance v2, Lorg/spongycastle/util/io/TeeInputStream;

    invoke-direct {v2, p1, v1}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/spongycastle/crypto/tls/ServerDHParams;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerDHParams;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->parseSignature(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object p1

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v0}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/spongycastle/crypto/Signer;)V

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ServerDHParams;->getPublicKey()Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->validateDHParameters(Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    return-void

    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
