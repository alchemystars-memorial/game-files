.class public Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "NHPrivateKeyParameters.java"


# instance fields
.field final secData:[S


# direct methods
.method public constructor <init>([S)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([S)[S

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->secData:[S

    return-void
.end method


# virtual methods
.method public getSecData()[S
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->secData:[S

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0
.end method
