.class public Lio/jsonwebtoken/impl/crypto/MacValidator;
.super Ljava/lang/Object;
.source "MacValidator.java"

# interfaces
.implements Lio/jsonwebtoken/impl/crypto/SignatureValidator;


# instance fields
.field private final signer:Lio/jsonwebtoken/impl/crypto/MacSigner;


# direct methods
.method public constructor <init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/jsonwebtoken/impl/crypto/MacSigner;

    invoke-direct {v0, p1, p2}, Lio/jsonwebtoken/impl/crypto/MacSigner;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    iput-object v0, p0, Lio/jsonwebtoken/impl/crypto/MacValidator;->signer:Lio/jsonwebtoken/impl/crypto/MacSigner;

    return-void
.end method


# virtual methods
.method public isValid([B[B)Z
    .locals 1

    iget-object v0, p0, Lio/jsonwebtoken/impl/crypto/MacValidator;->signer:Lio/jsonwebtoken/impl/crypto/MacSigner;

    invoke-virtual {v0, p1}, Lio/jsonwebtoken/impl/crypto/MacSigner;->sign([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    return p1
.end method
