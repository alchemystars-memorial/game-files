.class public Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "SPHINCSPublicKeyParameters.java"


# instance fields
.field private final keyData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->keyData:[B

    return-void
.end method


# virtual methods
.method public getKeyData()[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->keyData:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
