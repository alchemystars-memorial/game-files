.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "McElieceKeyParameters.java"


# instance fields
.field private params:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;


# direct methods
.method public constructor <init>(ZLorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;->params:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;->params:Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    return-object v0
.end method
