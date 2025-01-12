.class public Lio/jsonwebtoken/impl/crypto/DefaultSignatureValidatorFactory;
.super Ljava/lang/Object;
.source "DefaultSignatureValidatorFactory.java"

# interfaces
.implements Lio/jsonwebtoken/impl/crypto/SignatureValidatorFactory;


# static fields
.field public static final INSTANCE:Lio/jsonwebtoken/impl/crypto/SignatureValidatorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/jsonwebtoken/impl/crypto/DefaultSignatureValidatorFactory;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/crypto/DefaultSignatureValidatorFactory;-><init>()V

    sput-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignatureValidatorFactory;->INSTANCE:Lio/jsonwebtoken/impl/crypto/SignatureValidatorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSignatureValidator(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)Lio/jsonwebtoken/impl/crypto/SignatureValidator;
    .locals 2

    const-string v0, "SignatureAlgorithm cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Signing Key cannot be null."

    invoke-static {p2, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignatureValidatorFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    invoke-virtual {p1}, Lio/jsonwebtoken/SignatureAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/jsonwebtoken/SignatureAlgorithm;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' algorithm cannot be used for signing."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    new-instance v0, Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;

    invoke-direct {v0, p1, p2}, Lio/jsonwebtoken/impl/crypto/EllipticCurveSignatureValidator;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lio/jsonwebtoken/impl/crypto/RsaSignatureValidator;

    invoke-direct {v0, p1, p2}, Lio/jsonwebtoken/impl/crypto/RsaSignatureValidator;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lio/jsonwebtoken/impl/crypto/MacValidator;

    invoke-direct {v0, p1, p2}, Lio/jsonwebtoken/impl/crypto/MacValidator;-><init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
